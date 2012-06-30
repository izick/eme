################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/dsa/dsa_ameth.o \
../crypto/dsa/dsa_asn1.o \
../crypto/dsa/dsa_depr.o \
../crypto/dsa/dsa_err.o \
../crypto/dsa/dsa_gen.o \
../crypto/dsa/dsa_key.o \
../crypto/dsa/dsa_lib.o \
../crypto/dsa/dsa_ossl.o \
../crypto/dsa/dsa_pmeth.o \
../crypto/dsa/dsa_prn.o \
../crypto/dsa/dsa_sign.o \
../crypto/dsa/dsa_vrf.o 

C_SRCS += \
../crypto/dsa/dsa_ameth.c \
../crypto/dsa/dsa_asn1.c \
../crypto/dsa/dsa_depr.c \
../crypto/dsa/dsa_err.c \
../crypto/dsa/dsa_gen.c \
../crypto/dsa/dsa_key.c \
../crypto/dsa/dsa_lib.c \
../crypto/dsa/dsa_ossl.c \
../crypto/dsa/dsa_pmeth.c \
../crypto/dsa/dsa_prn.c \
../crypto/dsa/dsa_sign.c \
../crypto/dsa/dsa_vrf.c \
../crypto/dsa/dsagen.c \
../crypto/dsa/dsatest.c 

OBJS += \
./crypto/dsa/dsa_ameth.o \
./crypto/dsa/dsa_asn1.o \
./crypto/dsa/dsa_depr.o \
./crypto/dsa/dsa_err.o \
./crypto/dsa/dsa_gen.o \
./crypto/dsa/dsa_key.o \
./crypto/dsa/dsa_lib.o \
./crypto/dsa/dsa_ossl.o \
./crypto/dsa/dsa_pmeth.o \
./crypto/dsa/dsa_prn.o \
./crypto/dsa/dsa_sign.o \
./crypto/dsa/dsa_vrf.o \
./crypto/dsa/dsagen.o \
./crypto/dsa/dsatest.o 

C_DEPS += \
./crypto/dsa/dsa_ameth.d \
./crypto/dsa/dsa_asn1.d \
./crypto/dsa/dsa_depr.d \
./crypto/dsa/dsa_err.d \
./crypto/dsa/dsa_gen.d \
./crypto/dsa/dsa_key.d \
./crypto/dsa/dsa_lib.d \
./crypto/dsa/dsa_ossl.d \
./crypto/dsa/dsa_pmeth.d \
./crypto/dsa/dsa_prn.d \
./crypto/dsa/dsa_sign.d \
./crypto/dsa/dsa_vrf.d \
./crypto/dsa/dsagen.d \
./crypto/dsa/dsatest.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/dsa/%.o: ../crypto/dsa/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


