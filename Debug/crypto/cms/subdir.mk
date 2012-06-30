################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/cms/cms_asn1.o \
../crypto/cms/cms_att.o \
../crypto/cms/cms_cd.o \
../crypto/cms/cms_dd.o \
../crypto/cms/cms_enc.o \
../crypto/cms/cms_env.o \
../crypto/cms/cms_err.o \
../crypto/cms/cms_ess.o \
../crypto/cms/cms_io.o \
../crypto/cms/cms_lib.o \
../crypto/cms/cms_pwri.o \
../crypto/cms/cms_sd.o \
../crypto/cms/cms_smime.o 

C_SRCS += \
../crypto/cms/cms_asn1.c \
../crypto/cms/cms_att.c \
../crypto/cms/cms_cd.c \
../crypto/cms/cms_dd.c \
../crypto/cms/cms_enc.c \
../crypto/cms/cms_env.c \
../crypto/cms/cms_err.c \
../crypto/cms/cms_ess.c \
../crypto/cms/cms_io.c \
../crypto/cms/cms_lib.c \
../crypto/cms/cms_pwri.c \
../crypto/cms/cms_sd.c \
../crypto/cms/cms_smime.c 

OBJS += \
./crypto/cms/cms_asn1.o \
./crypto/cms/cms_att.o \
./crypto/cms/cms_cd.o \
./crypto/cms/cms_dd.o \
./crypto/cms/cms_enc.o \
./crypto/cms/cms_env.o \
./crypto/cms/cms_err.o \
./crypto/cms/cms_ess.o \
./crypto/cms/cms_io.o \
./crypto/cms/cms_lib.o \
./crypto/cms/cms_pwri.o \
./crypto/cms/cms_sd.o \
./crypto/cms/cms_smime.o 

C_DEPS += \
./crypto/cms/cms_asn1.d \
./crypto/cms/cms_att.d \
./crypto/cms/cms_cd.d \
./crypto/cms/cms_dd.d \
./crypto/cms/cms_enc.d \
./crypto/cms/cms_env.d \
./crypto/cms/cms_err.d \
./crypto/cms/cms_ess.d \
./crypto/cms/cms_io.d \
./crypto/cms/cms_lib.d \
./crypto/cms/cms_pwri.d \
./crypto/cms/cms_sd.d \
./crypto/cms/cms_smime.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/cms/%.o: ../crypto/cms/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


