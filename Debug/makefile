################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include test/subdir.mk
-include ssl/subdir.mk
-include ms/subdir.mk
-include fips/utl/subdir.mk
-include fips/sha/subdir.mk
-include fips/rsa/subdir.mk
-include fips/rand/subdir.mk
-include fips/hmac/subdir.mk
-include fips/subdir.mk
-include fips/ecdsa/subdir.mk
-include fips/ecdh/subdir.mk
-include fips/dsa/subdir.mk
-include fips/dh/subdir.mk
-include fips/des/subdir.mk
-include fips/cmac/subdir.mk
-include fips/aes/subdir.mk
-include engines/subdir.mk
-include engines/ccgost/subdir.mk
-include demos/x509/subdir.mk
-include demos/tunala/subdir.mk
-include demos/state_machine/subdir.mk
-include demos/subdir.mk
-include demos/smime/subdir.mk
-include demos/sign/subdir.mk
-include demos/prime/subdir.mk
-include demos/pkcs12/subdir.mk
-include demos/maurice/subdir.mk
-include demos/engines/zencod/subdir.mk
-include demos/engines/rsaref/subdir.mk
-include demos/engines/ibmca/subdir.mk
-include demos/engines/cluster_labs/subdir.mk
-include demos/eay/subdir.mk
-include demos/easy_tls/subdir.mk
-include demos/cms/subdir.mk
-include demos/bio/subdir.mk
-include demos/asn1/subdir.mk
-include crypto/x509v3/subdir.mk
-include crypto/x509/subdir.mk
-include crypto/whrlpool/subdir.mk
-include crypto/subdir.mk
-include crypto/ui/subdir.mk
-include crypto/txt_db/subdir.mk
-include crypto/ts/subdir.mk
-include crypto/threads/subdir.mk
-include crypto/store/subdir.mk
-include crypto/stack/subdir.mk
-include crypto/srp/subdir.mk
-include crypto/sha/subdir.mk
-include crypto/seed/subdir.mk
-include crypto/rsa/subdir.mk
-include crypto/ripemd/subdir.mk
-include crypto/rc5/subdir.mk
-include crypto/rc4/subdir.mk
-include crypto/rc2/subdir.mk
-include crypto/rand/subdir.mk
-include crypto/pqueue/subdir.mk
-include crypto/pkcs7/subdir.mk
-include crypto/pkcs12/subdir.mk
-include crypto/pem/subdir.mk
-include crypto/ocsp/subdir.mk
-include crypto/objects/subdir.mk
-include crypto/modes/subdir.mk
-include crypto/mdc2/subdir.mk
-include crypto/md5/subdir.mk
-include crypto/md5/asm/subdir.mk
-include crypto/md4/subdir.mk
-include crypto/md2/subdir.mk
-include crypto/lhash/subdir.mk
-include crypto/krb5/subdir.mk
-include crypto/jpake/subdir.mk
-include crypto/idea/subdir.mk
-include crypto/hmac/subdir.mk
-include crypto/evp/subdir.mk
-include crypto/err/subdir.mk
-include crypto/engine/subdir.mk
-include crypto/ecdsa/subdir.mk
-include crypto/ecdh/subdir.mk
-include crypto/ec/subdir.mk
-include crypto/dso/subdir.mk
-include crypto/dsa/subdir.mk
-include crypto/dh/subdir.mk
-include crypto/des/subdir.mk
-include crypto/conf/subdir.mk
-include crypto/comp/subdir.mk
-include crypto/cms/subdir.mk
-include crypto/cmac/subdir.mk
-include crypto/cast/subdir.mk
-include crypto/camellia/subdir.mk
-include crypto/buffer/subdir.mk
-include crypto/bn/subdir.mk
-include crypto/bn/asm/subdir.mk
-include crypto/bio/subdir.mk
-include crypto/bf/subdir.mk
-include crypto/asn1/subdir.mk
-include crypto/aes/asm/subdir.mk
-include crypto/aes/subdir.mk
-include bugs/subdir.mk
-include apps/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: openssl-eme

# Tool invocations
openssl-eme: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C Linker'
	gcc  -o"openssl-eme" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) openssl-eme
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
