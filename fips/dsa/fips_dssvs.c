
#define OPENSSL_FIPSAPI
#include <openssl/opensslconf.h>

#ifndef OPENSSL_FIPS
#include <stdio.h>

int main(int argc, char **argv)
{
    printf("No FIPS DSA support\n");
    return(0);
}
#else

#include <openssl/bn.h>
#include <openssl/dsa.h>
#include <openssl/fips.h>
#include <openssl/err.h>
#include <openssl/evp.h>
#include <string.h>
#include <ctype.h>

#include "fips_utl.h"

static int parse_mod(char *line, int *pdsa2, int *pL, int *pN,
				const EVP_MD **pmd)
	{
	char lbuf[10240];
	char *keyword, *value;

	char *p;
	p = strchr(line, ',');
	if (!p)
		{
		*pL = atoi(line);
		*pdsa2 = 0;
		*pN = 160;
		if (pmd)
			*pmd = EVP_sha1();
		return 1;
		}
	*pdsa2 = 1;
	*p = 0;
	if (!parse_line2(&keyword, &value, lbuf, line, 0))
		return 0;
	if (strcmp(keyword, "L"))
		return 0;
	*pL = atoi(value);
	strcpy(line, p + 1);
	if (pmd)
		p = strchr(line, ',');
	else
		p = strchr(line, ']');
	if (!p)
		return 0;
	*p = 0;
	if (!parse_line2(&keyword, &value, lbuf, line, 0))
		return 0;
	if (strcmp(keyword, "N"))
		return 0;
	*pN = atoi(value);
	if (!pmd)
		return 1;
	strcpy(line, p + 1);
	p = strchr(line, ']');
	if (!p)
		return 0;
	*p = 0;
	p = line;
	while(isspace(*p))
		p++;
	if (!strcmp(p, "SHA-1"))
		*pmd = EVP_sha1();
	else if (!strcmp(p, "SHA-224"))
		*pmd = EVP_sha224();
	else if (!strcmp(p, "SHA-256"))
		*pmd = EVP_sha256();
	else if (!strcmp(p, "SHA-384"))
		*pmd = EVP_sha384();
	else if (!strcmp(p, "SHA-512"))
		*pmd = EVP_sha512();
	else
		return 0;
	return 1;
	}

static void primes(FILE *in, FILE *out)
    {
    char buf[10240];
    char lbuf[10240];
    char *keyword, *value;

    while(fgets(buf,sizeof buf,in) != NULL)
	{
	fputs(buf,out);
	if (!parse_line(&keyword, &value, lbuf, buf))
		continue;
	if(!strcmp(keyword,"Prime"))
	    {
	    BIGNUM *pp;

	    pp=BN_new();
	    do_hex2bn(&pp,value);
	    fprintf(out, "result= %c\n",
		   BN_is_prime_ex(pp,20,NULL,NULL) ? 'P' : 'F');
	    }	    
	}
    }

int dsa_builtin_paramgen(DSA *ret, size_t bits, size_t qbits,
	const EVP_MD *evpmd, const unsigned char *seed_in, size_t seed_len,
	unsigned char *seed_out,
	int *counter_ret, unsigned long *h_ret, BN_GENCB *cb);
int dsa_builtin_paramgen2(DSA *ret, size_t bits, size_t qbits,
	const EVP_MD *evpmd, const unsigned char *seed_in, size_t seed_len,
	unsigned char *seed_out,
	int *counter_ret, unsigned long *h_ret, BN_GENCB *cb);

static void pqg(FILE *in, FILE *out)
    {
    char buf[1024];
    char lbuf[1024];
    char *keyword, *value;
    int dsa2, L, N;
    const EVP_MD *md = NULL;

    while(fgets(buf,sizeof buf,in) != NULL)
	{
	if (!parse_line(&keyword, &value, lbuf, buf))
		{
		fputs(buf,out);
		continue;
		}
	if(!strcmp(keyword,"[mod"))
	    {
	    fputs(buf,out);
	    if (!parse_mod(value, &dsa2, &L, &N, &md))
		{
		fprintf(stderr, "Mod Parse Error\n");
		exit (1);
		}
	    }
	else if(!strcmp(keyword,"N"))
	    {
	    int n=atoi(value);

	    while(n--)
		{
		unsigned char seed[EVP_MAX_MD_SIZE];
		DSA *dsa;
		int counter;
		unsigned long h;
		dsa = FIPS_dsa_new();

		if (!dsa2 && !dsa_builtin_paramgen(dsa, L, N, md,
						NULL, 0, seed,
						&counter, &h, NULL))
			{
			fprintf(stderr, "Parameter Generation error\n");
			exit(1);
			}
		if (dsa2 && dsa_builtin_paramgen2(dsa, L, N, md,
						NULL, 0, seed,
						&counter, &h, NULL) <= 0)
			{
			fprintf(stderr, "Parameter Generation error\n");
			exit(1);
			}
 
		do_bn_print_name(out, "P",dsa->p);
		do_bn_print_name(out, "Q",dsa->q);
		do_bn_print_name(out, "G",dsa->g);
		OutputValue("Seed",seed, M_EVP_MD_size(md), out, 0);
		fprintf(out, "c = %d\n",counter);
		fprintf(out, "H = %lx\n\n",h);
		}
	    }
	else
	    fputs(buf,out);
	}
    }

static void pqgver(FILE *in, FILE *out)
    {
    char buf[1024];
    char lbuf[1024];
    char *keyword, *value;
    BIGNUM *p = NULL, *q = NULL, *g = NULL;
    int counter=-1, counter2;
    unsigned long h=0, h2;
    DSA *dsa=NULL;
    int dsa2, L, N, part_test = 0;
    const EVP_MD *md = NULL;
    int seedlen=-1;
    unsigned char seed[1024];

    while(fgets(buf,sizeof buf,in) != NULL)
	{
	if (!parse_line(&keyword, &value, lbuf, buf))
		{
		if (p && q)
			{
			part_test = 1;
			goto partial;
			}
		fputs(buf,out);
		continue;
		}
	fputs(buf, out);
	if(!strcmp(keyword,"[mod"))
	    {
	    if (!parse_mod(value, &dsa2, &L, &N, &md))
		{
		fprintf(stderr, "Mod Parse Error\n");
		exit (1);
		}
	    }
	else if(!strcmp(keyword,"P"))
	    p=hex2bn(value);
	else if(!strcmp(keyword,"Q"))
	    q=hex2bn(value);
	else if(!strcmp(keyword,"G"))
	    g=hex2bn(value);
	else if(!strcmp(keyword,"Seed"))
	    {
	    seedlen = hex2bin(value, seed);
	    if (!dsa2 && seedlen != 20)
		{
		fprintf(stderr, "Seed parse length error\n");
		exit (1);
		}
	    }
	else if(!strcmp(keyword,"c"))
	    counter =atoi(buf+4);
	partial:
	if(!strcmp(keyword,"H") || part_test)
	    {
	    if (!part_test)
	    	h = atoi(value);
	    if (!p || !q || (!g && !part_test))
		{
		fprintf(stderr, "Parse Error\n");
		exit (1);
		}
	    dsa = FIPS_dsa_new();
	    if (!dsa2 && !dsa_builtin_paramgen(dsa, L, N, md,
					seed, seedlen, NULL,
					&counter2, &h2, NULL))
			{
			fprintf(stderr, "Parameter Generation error\n");
			exit(1);
			}
	    if (dsa2 && dsa_builtin_paramgen2(dsa, L, N, md,
					seed, seedlen, NULL,
					&counter2, &h2, NULL) < 0)
			{
			fprintf(stderr, "Parameter Generation error\n");
			exit(1);
			}
            if (BN_cmp(dsa->p, p) || BN_cmp(dsa->q, q) || 
		(!part_test &&
		((BN_cmp(dsa->g, g) || (counter != counter2) || (h != h2)))))
	    	fprintf(out, "Result = F\n");
	    else
	    	fprintf(out, "Result = P\n");
	    BN_free(p);
	    BN_free(q);
	    BN_free(g);
	    p = NULL;
	    q = NULL;
	    g = NULL;
	    FIPS_dsa_free(dsa);
	    dsa = NULL;
	    if (part_test)
		{
		fputs(buf,out);
		part_test = 0;
		}
	    }
	}
    }

/* Keypair verification routine. NB: this isn't part of the standard FIPS140-2
 * algorithm tests. It is an additional test to perform sanity checks on the
 * output of the KeyPair test.
 */

static int dss_paramcheck(int L, int N, BIGNUM *p, BIGNUM *q, BIGNUM *g,
							BN_CTX *ctx)
    {
    BIGNUM *rem = NULL;
    if (BN_num_bits(p) != L)
	return 0;
    if (BN_num_bits(q) != N)
	return 0;
    if (BN_is_prime_ex(p, BN_prime_checks, ctx, NULL) != 1)
	return 0;
    if (BN_is_prime_ex(q, BN_prime_checks, ctx, NULL) != 1)
	return 0;
    rem = BN_new();
    if (!BN_mod(rem, p, q, ctx) || !BN_is_one(rem)
    	|| (BN_cmp(g, BN_value_one()) <= 0)
	|| !BN_mod_exp(rem, g, q, p, ctx) || !BN_is_one(rem))
	{
	BN_free(rem);
	return 0;
	}
    /* Todo: check g */
    BN_free(rem);
    return 1;
    }

static void keyver(FILE *in, FILE *out)
    {
    char buf[1024];
    char lbuf[1024];
    char *keyword, *value;
    BIGNUM *p = NULL, *q = NULL, *g = NULL, *X = NULL, *Y = NULL;
    BIGNUM *Y2;
    BN_CTX *ctx = NULL;
    int dsa2, L, N;
    int paramcheck = 0;

    ctx = BN_CTX_new();
    Y2 = BN_new();

    while(fgets(buf,sizeof buf,in) != NULL)
	{
	if (!parse_line(&keyword, &value, lbuf, buf))
		{
		fputs(buf,out);
		continue;
		}
	if(!strcmp(keyword,"[mod"))
	    {
	    if (p)
		BN_free(p);
	    p = NULL;
	    if (q)
		BN_free(q);
	    q = NULL;
	    if (g)
		BN_free(g);
	    g = NULL;
	    paramcheck = 0;
	    if (!parse_mod(value, &dsa2, &L, &N, NULL))
		{
		fprintf(stderr, "Mod Parse Error\n");
		exit (1);
		}
	    }
	else if(!strcmp(keyword,"P"))
	    p=hex2bn(value);
	else if(!strcmp(keyword,"Q"))
	    q=hex2bn(value);
	else if(!strcmp(keyword,"G"))
	    g=hex2bn(value);
	else if(!strcmp(keyword,"X"))
	    X=hex2bn(value);
	else if(!strcmp(keyword,"Y"))
	    {
	    Y=hex2bn(value);
	    if (!p || !q || !g || !X || !Y)
		{
		fprintf(stderr, "Parse Error\n");
		exit (1);
		}
	    do_bn_print_name(out, "P",p);
	    do_bn_print_name(out, "Q",q);
	    do_bn_print_name(out, "G",g);
	    do_bn_print_name(out, "X",X);
	    do_bn_print_name(out, "Y",Y);
	    if (!paramcheck)
		{
		if (dss_paramcheck(L, N, p, q, g, ctx))
			paramcheck = 1;
		else
			paramcheck = -1;
		}
	    if (paramcheck != 1)
	   	fprintf(out, "Result = F\n");
	    else
		{
		if (!BN_mod_exp(Y2, g, X, p, ctx) || BN_cmp(Y2, Y))
	    		fprintf(out, "Result = F\n");
	        else
	    		fprintf(out, "Result = P\n");
		}
	    BN_free(X);
	    BN_free(Y);
	    X = NULL;
	    Y = NULL;
	    }
	}
	if (p)
	    BN_free(p);
	if (q)
	    BN_free(q);
	if (g)
	    BN_free(g);
	if (Y2)
	    BN_free(Y2);
    }

static void keypair(FILE *in, FILE *out)
    {
    char buf[1024];
    char lbuf[1024];
    char *keyword, *value;
    int dsa2, L, N;

    while(fgets(buf,sizeof buf,in) != NULL)
	{
	if (!parse_line(&keyword, &value, lbuf, buf))
		{
		continue;
		}
	if(!strcmp(keyword,"[mod"))
	    {
	    if (!parse_mod(value, &dsa2, &L, &N, NULL))
		{
		fprintf(stderr, "Mod Parse Error\n");
		exit (1);
		}
	    fputs(buf,out);
	    }
	else if(!strcmp(keyword,"N"))
	    {
	    DSA *dsa;
	    int n=atoi(value);

	    dsa = FIPS_dsa_new();
	    if (!dsa2 && !dsa_builtin_paramgen(dsa, L, N, NULL, NULL, 0,
						NULL, NULL, NULL, NULL))
			{
			fprintf(stderr, "Parameter Generation error\n");
			exit(1);
			}
	    if (dsa2 && dsa_builtin_paramgen2(dsa, L, N, NULL, NULL, 0,
						NULL, NULL, NULL, NULL) <= 0)
			{
			fprintf(stderr, "Parameter Generation error\n");
			exit(1);
			}
	    do_bn_print_name(out, "P",dsa->p);
	    do_bn_print_name(out, "Q",dsa->q);
	    do_bn_print_name(out, "G",dsa->g);
	    fputs("\n", out);

	    while(n--)
		{
		if (!DSA_generate_key(dsa))
			exit(1);

		do_bn_print_name(out, "X",dsa->priv_key);
		do_bn_print_name(out, "Y",dsa->pub_key);
	    	fputs("\n", out);
		}
	    }
	}
    }

static void siggen(FILE *in, FILE *out)
    {
    char buf[1024];
    char lbuf[1024];
    char *keyword, *value;
    int dsa2, L, N;
    const EVP_MD *md = NULL;
    DSA *dsa=NULL;

    while(fgets(buf,sizeof buf,in) != NULL)
	{
	if (!parse_line(&keyword, &value, lbuf, buf))
		{
		fputs(buf,out);
		continue;
		}
	fputs(buf,out);
	if(!strcmp(keyword,"[mod"))
	    {
	    if (!parse_mod(value, &dsa2, &L, &N, &md))
		{
		fprintf(stderr, "Mod Parse Error\n");
		exit (1);
		}
	    if (dsa)
		FIPS_dsa_free(dsa);
	    dsa = FIPS_dsa_new();
	    if (!dsa2 && !dsa_builtin_paramgen(dsa, L, N, md, NULL, 0,
						NULL, NULL, NULL, NULL))
			{
			fprintf(stderr, "Parameter Generation error\n");
			exit(1);
			}
	    if (dsa2 && dsa_builtin_paramgen2(dsa, L, N, md, NULL, 0,
						NULL, NULL, NULL, NULL) <= 0)
			{
			fprintf(stderr, "Parameter Generation error\n");
			exit(1);
			}
	    do_bn_print_name(out, "P",dsa->p);
	    do_bn_print_name(out, "Q",dsa->q);
	    do_bn_print_name(out, "G",dsa->g);
	    fputs("\n", out);
	    }
	else if(!strcmp(keyword,"Msg"))
	    {
	    unsigned char msg[1024];
	    int n;
	    EVP_MD_CTX mctx;
	    DSA_SIG *sig;
	    FIPS_md_ctx_init(&mctx);

	    n=hex2bin(value,msg);

	    if (!DSA_generate_key(dsa))
		exit(1);
	    do_bn_print_name(out, "Y",dsa->pub_key);

	    FIPS_digestinit(&mctx, md);
	    FIPS_digestupdate(&mctx, msg, n);
	    sig = FIPS_dsa_sign_ctx(dsa, &mctx);

	    do_bn_print_name(out, "R",sig->r);
	    do_bn_print_name(out, "S",sig->s);
	    fputs("\n", out);
	    FIPS_dsa_sig_free(sig);
	    FIPS_md_ctx_cleanup(&mctx);
	    }
	}
	if (dsa)
		FIPS_dsa_free(dsa);
    }

static void sigver(FILE *in, FILE *out)
    {
    DSA *dsa=NULL;
    char buf[1024];
    char lbuf[1024];
    unsigned char msg[1024];
    char *keyword, *value;
    int n=0;
    int dsa2, L, N;
    const EVP_MD *md = NULL;
    DSA_SIG sg, *sig = &sg;

    sig->r = NULL;
    sig->s = NULL;

    while(fgets(buf,sizeof buf,in) != NULL)
	{
	if (!parse_line(&keyword, &value, lbuf, buf))
		{
		fputs(buf,out);
		continue;
		}
	fputs(buf,out);
	if(!strcmp(keyword,"[mod"))
	    {
	    if (!parse_mod(value, &dsa2, &L, &N, &md))
		{
		fprintf(stderr, "Mod Parse Error\n");
		exit (1);
		}
	    if (dsa)
		FIPS_dsa_free(dsa);
	    dsa = FIPS_dsa_new();
	    }
	else if(!strcmp(keyword,"P"))
	    dsa->p=hex2bn(value);
	else if(!strcmp(keyword,"Q"))
	    dsa->q=hex2bn(value);
	else if(!strcmp(keyword,"G"))
	    dsa->g=hex2bn(value);
	else if(!strcmp(keyword,"Msg"))
	    n=hex2bin(value,msg);
	else if(!strcmp(keyword,"Y"))
	    dsa->pub_key=hex2bn(value);
	else if(!strcmp(keyword,"R"))
	    sig->r=hex2bn(value);
	else if(!strcmp(keyword,"S"))
	    {
	    EVP_MD_CTX mctx;
	    int r;
	    FIPS_md_ctx_init(&mctx);
	    sig->s=hex2bn(value);

	    FIPS_digestinit(&mctx, md);
	    FIPS_digestupdate(&mctx, msg, n);
	    no_err = 1;
	    r = FIPS_dsa_verify_ctx(dsa, &mctx, sig);
	    no_err = 0;
	    FIPS_md_ctx_cleanup(&mctx);
	
	    fprintf(out, "Result = %c\n\n", r == 1 ? 'P' : 'F');
	    }
	}
    }

int main(int argc,char **argv)
    {
    FILE *in, *out;
    if (argc == 4)
	{
	in = fopen(argv[2], "r");
	if (!in)
		{
		fprintf(stderr, "Error opening input file\n");
		exit(1);
		}
	out = fopen(argv[3], "w");
	if (!out)
		{
		fprintf(stderr, "Error opening output file\n");
		exit(1);
		}
	}
    else if (argc == 2)
	{
	in = stdin;
	out = stdout;
	}
    else
	{
	fprintf(stderr,"%s [prime|pqg|pqgver|keypair|keyver|siggen|sigver]\n",argv[0]);
	exit(1);
	}
    fips_algtest_init();
    if(!strcmp(argv[1],"prime"))
	primes(in, out);
    else if(!strcmp(argv[1],"pqg"))
	pqg(in, out);
    else if(!strcmp(argv[1],"pqgver"))
	pqgver(in, out);
    else if(!strcmp(argv[1],"keypair"))
	keypair(in, out);
    else if(!strcmp(argv[1],"keyver"))
	keyver(in, out);
    else if(!strcmp(argv[1],"siggen"))
	siggen(in, out);
    else if(!strcmp(argv[1],"sigver"))
	sigver(in, out);
    else
	{
	fprintf(stderr,"Don't know how to %s.\n",argv[1]);
	exit(1);
	}

    if (argc == 4)
	{
	fclose(in);
	fclose(out);
	}

    return 0;
    }

#endif
