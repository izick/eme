################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/des/cbc_cksm.o \
../crypto/des/cbc_enc.o \
../crypto/des/cfb64ede.o \
../crypto/des/cfb64enc.o \
../crypto/des/cfb_enc.o \
../crypto/des/des_enc.o \
../crypto/des/des_old.o \
../crypto/des/des_old2.o \
../crypto/des/ecb3_enc.o \
../crypto/des/ecb_enc.o \
../crypto/des/ede_cbcm_enc.o \
../crypto/des/enc_read.o \
../crypto/des/enc_writ.o \
../crypto/des/fcrypt.o \
../crypto/des/fcrypt_b.o \
../crypto/des/ofb64ede.o \
../crypto/des/ofb64enc.o \
../crypto/des/ofb_enc.o \
../crypto/des/pcbc_enc.o \
../crypto/des/qud_cksm.o \
../crypto/des/rand_key.o \
../crypto/des/read2pwd.o \
../crypto/des/rpc_enc.o \
../crypto/des/set_key.o \
../crypto/des/str2key.o \
../crypto/des/xcbc_enc.o 

C_SRCS += \
../crypto/des/cbc3_enc.c \
../crypto/des/cbc_cksm.c \
../crypto/des/cbc_enc.c \
../crypto/des/cfb64ede.c \
../crypto/des/cfb64enc.c \
../crypto/des/cfb_enc.c \
../crypto/des/des.c \
../crypto/des/des_enc.c \
../crypto/des/des_old.c \
../crypto/des/des_old2.c \
../crypto/des/des_opts.c \
../crypto/des/destest.c \
../crypto/des/ecb3_enc.c \
../crypto/des/ecb_enc.c \
../crypto/des/ede_cbcm_enc.c \
../crypto/des/enc_read.c \
../crypto/des/enc_writ.c \
../crypto/des/fcrypt.c \
../crypto/des/fcrypt_b.c \
../crypto/des/ncbc_enc.c \
../crypto/des/ofb64ede.c \
../crypto/des/ofb64enc.c \
../crypto/des/ofb_enc.c \
../crypto/des/pcbc_enc.c \
../crypto/des/qud_cksm.c \
../crypto/des/rand_key.c \
../crypto/des/read2pwd.c \
../crypto/des/read_pwd.c \
../crypto/des/rpc_enc.c \
../crypto/des/rpw.c \
../crypto/des/set_key.c \
../crypto/des/speed.c \
../crypto/des/str2key.c \
../crypto/des/xcbc_enc.c 

OBJS += \
./crypto/des/cbc3_enc.o \
./crypto/des/cbc_cksm.o \
./crypto/des/cbc_enc.o \
./crypto/des/cfb64ede.o \
./crypto/des/cfb64enc.o \
./crypto/des/cfb_enc.o \
./crypto/des/des.o \
./crypto/des/des_enc.o \
./crypto/des/des_old.o \
./crypto/des/des_old2.o \
./crypto/des/des_opts.o \
./crypto/des/destest.o \
./crypto/des/ecb3_enc.o \
./crypto/des/ecb_enc.o \
./crypto/des/ede_cbcm_enc.o \
./crypto/des/enc_read.o \
./crypto/des/enc_writ.o \
./crypto/des/fcrypt.o \
./crypto/des/fcrypt_b.o \
./crypto/des/ncbc_enc.o \
./crypto/des/ofb64ede.o \
./crypto/des/ofb64enc.o \
./crypto/des/ofb_enc.o \
./crypto/des/pcbc_enc.o \
./crypto/des/qud_cksm.o \
./crypto/des/rand_key.o \
./crypto/des/read2pwd.o \
./crypto/des/read_pwd.o \
./crypto/des/rpc_enc.o \
./crypto/des/rpw.o \
./crypto/des/set_key.o \
./crypto/des/speed.o \
./crypto/des/str2key.o \
./crypto/des/xcbc_enc.o 

C_DEPS += \
./crypto/des/cbc3_enc.d \
./crypto/des/cbc_cksm.d \
./crypto/des/cbc_enc.d \
./crypto/des/cfb64ede.d \
./crypto/des/cfb64enc.d \
./crypto/des/cfb_enc.d \
./crypto/des/des.d \
./crypto/des/des_enc.d \
./crypto/des/des_old.d \
./crypto/des/des_old2.d \
./crypto/des/des_opts.d \
./crypto/des/destest.d \
./crypto/des/ecb3_enc.d \
./crypto/des/ecb_enc.d \
./crypto/des/ede_cbcm_enc.d \
./crypto/des/enc_read.d \
./crypto/des/enc_writ.d \
./crypto/des/fcrypt.d \
./crypto/des/fcrypt_b.d \
./crypto/des/ncbc_enc.d \
./crypto/des/ofb64ede.d \
./crypto/des/ofb64enc.d \
./crypto/des/ofb_enc.d \
./crypto/des/pcbc_enc.d \
./crypto/des/qud_cksm.d \
./crypto/des/rand_key.d \
./crypto/des/read2pwd.d \
./crypto/des/read_pwd.d \
./crypto/des/rpc_enc.d \
./crypto/des/rpw.d \
./crypto/des/set_key.d \
./crypto/des/speed.d \
./crypto/des/str2key.d \
./crypto/des/xcbc_enc.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/des/%.o: ../crypto/des/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


