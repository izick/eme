/*
 *
 * eme2-ref.c
 *
 * @version 1.0 (May 2007)
 *
 * Reference ANSI C code for EME*-AES encryption
 *
 * @author Shai Halevi <shaih@watson.ibm.com>
 * @author Hal Finney <hal.finney@gmail.com>
 *
 * entry points:
 *    void encdecEME2(unsigned char Ciphertext[lenBytes],
 *                   const unsigned char K[],           // 16, 24, or 32 bytes
 *                   int keyBits,                       // number of bits in K[]
 *                   const unsigned char T[tweakBytes], // the "tweak"
 *                   int tweakBytes,                    // length of tweak
 *                   const unsigned char Plaintext[lenBytes],
 *                   int lenBytes,
 *                   int dir                           // 1 for enc, 0 for dec
 *         );
 *
 * This code is hereby placed in the public domain.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHORS ''AS IS'' AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/* Note: The code below assumes an interface to AES core encryption and
 *    decryption routines, such as provided by the OpenSSL Toolkit
 *    (http://www.openssl.org/), developed by the OpenSSL Project.
 *
 *    This interface can be described by the following declarations
 *    (which were derived from <openssl/aes.h>):
 *
 *    typedef struct {
 *        unsigned long rd_key[4 * 15];
 *        int rounds;
 *    } AES_KEY;
 *
 *    #define AES_ENCRYPT       1
 *    #define AES_DECRYPT       0
 *
 *    int AES_set_encrypt_key(const unsigned char *userKey, const int bits,
 *                            AES_KEY *key);
 *    int AES_set_decrypt_key(const unsigned char *userKey, const int bits,
 *                            AES_KEY *key);
 *    void AES_encrypt(const unsigned char *in, unsigned char *out,
 *                     const AES_KEY *key);
 *    void AES_decrypt(const unsigned char *in, unsigned char *out,
 *                     const AES_KEY *key);
 */
#include <stdlib.h>
#include <memory.h>
#include <openssl/aes.h>
#include "modes_lcl.h"


/* Specification uses 1-based indexing of AES block size */
#define I1(array,offset) ((array)+(((offset)-1)*16))

/* local functions */

/* Encrypt or decrypt one block with AES and the given key */
static int aesBlock(unsigned char out[16], const unsigned char key[],
                     int keyBits, const unsigned char in[16], int dir);

/* Set out = in1 xor in2, for partial or whole blocks */
static void xorPartial(unsigned char out[16],
                      const unsigned char in1[16],
                      const unsigned char in2[16], int lenBytes);

/* Definition for whole blocks */
#define xorBlocks(o,i1,i2)  xorPartial(o,i1,i2,16)

/* Set out = <alpha> * in, multiplication in GF(2^{128}) */
static void multByAlpha(unsigned char out[16], const unsigned char in[16]);

/* Hash tweak to produce single-AES-wide block */
static void hashTweak (unsigned char outBlock[16],
                       const unsigned char T[16], int tweakBytes,
                       const unsigned char K1[], int keyBits,
					   const unsigned char K3[16]);

/* Pad input buffer with 1000...000 to make 16 bytes in output */
static void padBlock (unsigned char out[16],
                      const unsigned char in1[16], int inBytes);


/* Main encryption function - encrypt or decrypt (depending on dir)
 * plaintext P to ciphertext C using key K and tweak T. Note that P and C
 * may point to the same buffer.
 */
int encdecEME2(unsigned char C[], const unsigned char K[], int keyBits,
			   const unsigned char T[], int tweakBytes,
               const unsigned char P[], int lenBytes, int dir)
{
  int i, m, lenPm, k1Bits, rv;
  unsigned char L[16], M[16], M1[16], MP[16], MC[16], MC1[16], MM[16];
  unsigned char T_star[16], PPPm[16];
  unsigned char *PPP, *CCC, *CCCm;
  unsigned const char *K1, *K2, *K3;

  /* Check parameter validity */
  if ((keyBits != 384 && keyBits != 512) || (lenBytes < 16))
     return (1);

  /* Split key into subkeys */
  K3 = K;
  K2 = K3 + 128/8;
  K1 = K2 + 128/8;
  k1Bits = keyBits - 256;

  /* Intermediate results are safely overlaid on output buffer */
  /* Except for last PPP and CCC which may not fit due to padding */
  /* And which have their own buffer that they share */
  PPP = C;
  CCC = C;
  CCCm = PPPm;

  /* m is number of AES-width data blocks, lenPm is length of last block */
  m = (lenBytes + 15) / 16;
  lenPm = ((lenBytes-1) % 16) + 1;

  hashTweak(T_star, T, tweakBytes, K1, k1Bits, K3);

  memcpy (L, K2, 16);						 /* Set L as copy of K2 */
  for (i=1; i<=m-1; i++) {
    xorBlocks(I1(PPP,i), I1(P,i), L);        /* PPi = 2**(i-1)*L xor Pi */
	rv = aesBlock(I1(PPP,i),
             K1, k1Bits, I1(PPP,i), dir);    /* PPPi = AES-enc(K1; PPi)  */
	if (rv)
		return (rv);
    multByAlpha(L, L);                       /* 2**i * L */
  }

  if (lenPm < 16) {
    padBlock (PPPm, I1(P,m), lenPm);

  } else if (m == 1) {
    xorBlocks(I1(PPP,1), I1(P,1), L);        /* PP1 = L xor Pi */
    rv = aesBlock(I1(PPP,1), K1, k1Bits, I1(PPP,1), dir);	/* PPP1 = AES-enc(K1; PP1)*/
    if (rv)
    	return (rv);
  } else {
    xorBlocks(PPPm, I1(P,m), L);             /* PPi = 2**(m-1)*L xor Pi */
    rv = aesBlock(PPPm, K1, k1Bits, PPPm, dir);   /* PPPi = AES-enc(K1; PPi)  */
   	if (rv)
   		return (rv);
  }

  xorBlocks(MP, I1(PPP,1), T_star);          /* MP = (xorSum PPPi) xor T_star */
  for (i=2; i<=m-1; i++)
    xorBlocks(MP, MP, I1(PPP,i));
  if (m > 1)
    xorBlocks(MP, MP, PPPm);

  if (lenPm < 16) {
	  rv = aesBlock(MM, K1, k1Bits, MP, dir);	  /* MM = AES-enc(K1; MP)     */
	  if (rv)
		  return (rv);
	  rv = aesBlock(MC, K1, k1Bits, MM, dir);	/* MC = AES-enc(K1; MM)     */
	  if (rv)
		  return (rv);
  } else {
	  rv = aesBlock(MC, K1, k1Bits, MP, dir);	/* MC = AES-enc(K1; MP)     */
	  if (rv)
		  return (rv);
  }

  memcpy (MC1, MC, 16);                       /* MC1 = MC */
  xorBlocks(M1, MP, MC);                      /* M = M1 = MP xor MC      */
  memcpy (M, M1, 16);

  for (i=2; i<=m-1; i++) {
    if ((i-1) % 128 > 0) {                  /* Recalculate M every n^2 bits */
      multByAlpha(M, M);
      xorBlocks(I1(CCC,i), I1(PPP,i), M);   /* CCCi = 2**(i-1)*M xor PPPi */
    } else {
      xorBlocks(MP, I1(PPP,i), M1);         /* MP = PPPi xor M1       */
      rv = aesBlock(MC, K1, k1Bits, MP, dir);    /* MC = AES-enc(k; MP)   */
      if (rv)
    	  return (rv);
      xorBlocks(M, MP, MC);                 /* M   = MP xor MC       */
      xorBlocks(I1(CCC,i), MC, M1);         /* CCCi = MC xor M1       */
    }
  }
  if (lenPm < 16) {
    /* Note that we compute the last ciphertext block here if it is short */
	xorPartial(I1(C,m), I1(P,m), MM, lenPm);  /* Cm = Pm ^ MM */
	padBlock(CCCm, I1(C,m), lenPm);           /* CCCm = pad(Cm) */
  } else if ((m-1) % 128 > 0) {
      multByAlpha(M, M);
      xorBlocks(CCCm, PPPm, M);               /* CCCm = 2**(m-1)*M xor PPPm */
  } else if (m > 1) {
      xorBlocks(MP, PPPm, M1);                /* MP = PPPm xor M1       */
      rv = aesBlock(MC, K1, k1Bits, MP, dir);      /* MC = AES-enc(k; MP)   */
      if (rv)
    	  return (rv);
      xorBlocks(CCCm, MC, M1);                /* CCCm = MC xor M1       */
  }

  xorBlocks(I1(CCC,1), MC1, T_star);           /* CCC1 = MC1 xor (xorSum CCCi) xor T_star */
  for (i=2; i<=m-1; i++)
    xorBlocks(I1(CCC,1), I1(CCC,1), I1(CCC,i));
  if (m > 1)
    xorBlocks(I1(CCC,1), I1(CCC,1), CCCm);

  memcpy (L, K2, 16);						  /* Reset L as copy of K2 */
  for (i=1; i<=m-1; i++) {
    rv = aesBlock(I1(CCC,i),
             K1, k1Bits, I1(CCC,i), dir);     /* CCi = AES-enc(K1; CCCi)  */
    if (rv)
    	return (rv);
    xorBlocks(I1(C,i), I1(CCC,i),  L);        /* Ci = 2**(i-1)*L xor CCi */
    multByAlpha(L, L);
  }
  if (lenPm == 16) {
    /* Note that we computed the last ciphertext block above if it was short */
    if (m == 1) {
      rv = aesBlock(I1(CCC,1), K1, k1Bits, I1(CCC,1), dir);/* CC1=AES-enc(K1;CCC1)*/
      if (rv)
    	  return (rv);
      xorBlocks(I1(C,1), I1(CCC,1),  L);      /* C1 = L xor CC1 */

    } else {
      rv = aesBlock(CCCm, K1, k1Bits, CCCm, dir);  /* CCm = AES-enc(K1; CCCm)  */
      if (rv)
    	  return (rv);
      xorBlocks(I1(C,m), CCCm,  L);           /* Cm = 2**(m-1)*L xor CCm */
    }
  }

  return (0);
}


/* Hash tweak to produce single-AES-wide block */
static void hashTweak (unsigned char outBlock[16],
                       const unsigned char T[16], int tweakBytes,
                       const unsigned char K1[], int k1Bits,
					   const unsigned char K3[16])
{
  unsigned char K3i[16], TT[16];
  int i, r;

  if (tweakBytes == 0) {
    aesBlock(outBlock, K1, k1Bits, K3, AES_ENCRYPT);
    return;
  }

  r = (tweakBytes + 15) / 16;
  memset (outBlock, 0, 16);
  multByAlpha(K3i, K3);                          /* K3i holds shifted K3 */
  for (i=1; i<=r-1; i++) {
	memcpy (TT, I1(T,i), 16);                    /* Copy Ti to TT */
	xorBlocks(TT, TT, K3i);                      /* TT = K3i xor Ti */
    aesBlock(TT, K1, k1Bits, TT, AES_ENCRYPT);  /* AES_enc(K1; K3i xor Ti) */
	xorBlocks(TT, TT, K3i);          /* TT = K3i xor AES_enc(K1; K3i xor Ti) */
	xorBlocks(outBlock, outBlock, TT);           /* Xor all TT's together */
    multByAlpha(K3i, K3i);
  }

  if ((tweakBytes % 16)) {       /* On partial final block */
    padBlock(TT, I1(T,r), (tweakBytes % 16));    /* Pad partial block */
    multByAlpha(K3i, K3i);                       /* And use an extra shift */
  } else {
    memcpy (TT, I1(T,r), 16);                    /* Copy Tr to TT */
  }
  xorBlocks(TT, TT, K3i);                        /* TT = K3i xor Ti */
  aesBlock(TT, K1, k1Bits, TT, AES_ENCRYPT);     /* AES_enc(K1; K3i xor Ti) */
  xorBlocks(TT, TT, K3i);           /* TT = K3i xor AES_enc(K1; K3i xor Ti) */
  xorBlocks(outBlock, outBlock, TT);             /* Xor all TT's together */
}

/* Pad input buffer with 1000...000 to make 16 bytes in output */
static void padBlock(unsigned char output[16], const unsigned char input[16],
                      int inBytes)
{
	if (inBytes >= 16)
		memcpy (output, input, 16);
	else {
	    memset (output, 0, 16);
		memcpy (output, input, inBytes);
		output[inBytes] = 0x80;
	}
}

/* Set out = <alpha> * in, multiplication in GF(2^{128}) */
static void multByAlpha(unsigned char output[16], const unsigned char input[16])
{
  int i;
  unsigned char temp[16];   /* a temporary array, just in case input and */
                            /* output point to the same memory location  */
  for (i=0; i<16; i++) {
    temp[i] = 2 * input[i];
    if (i > 0 && input[i-1] > 127) temp[i] += 1;
  }
  if (input[15] > 127) temp[0] ^= 0x87;
  for (i=0; i<16; i++) output[i] = temp[i];
}

/* Set out = in1 xor in2, for partial or whole blocks */
static void xorPartial(unsigned char out[16],
                      const unsigned char in1[16], const unsigned char in2[16],
					  int lenBytes)
{
  int i; for (i=0; i<lenBytes; i++) out[i] = in1[i] ^ in2[i];
}

/* Encrypt or decrypt one block with AES and the given key */
static int aesBlock(unsigned char out[16], const unsigned char key[],
                     int keyBits, const unsigned char in[16], int dir)
{
  int retCode;
  AES_KEY aesKey;

  if (dir==AES_ENCRYPT)
	  retCode = AES_set_encrypt_key(key, keyBits, &aesKey);
  else
	  retCode = AES_set_decrypt_key(key, keyBits, &aesKey);

  if (retCode!=0)
	  return(retCode);

  if (dir==AES_ENCRYPT)
	  AES_encrypt(in, out, &aesKey);
  else
	  AES_decrypt(in, out, &aesKey);

  return (0);
}



/* Additions for Brian Gladman's gentest.c API */
int
eme2_encrypt( const unsigned char pt_buf[], unsigned char ct_buf[], unsigned int pt_len,
                         const unsigned char ad_buf[], unsigned int ad_len,
                         const unsigned char key[], unsigned int key_len)
{
	return encdecEME2(ct_buf, key, key_len*8, ad_buf, ad_len, pt_buf, pt_len, 1);
}

int
eme2_decrypt( const unsigned char ct_buf[], unsigned char pt_buf[], unsigned int pt_len,
                         const unsigned char ad_buf[], unsigned int ad_len,
                         const unsigned char key[], unsigned int key_len)
{
	return encdecEME2(pt_buf, key, key_len*8, ad_buf, ad_len, ct_buf, pt_len, 0);
}
