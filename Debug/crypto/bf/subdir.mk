################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/bf/bf_cfb64.o \
../crypto/bf/bf_ecb.o \
../crypto/bf/bf_enc.o \
../crypto/bf/bf_ofb64.o \
../crypto/bf/bf_skey.o 

C_SRCS += \
../crypto/bf/bf_cbc.c \
../crypto/bf/bf_cfb64.c \
../crypto/bf/bf_ecb.c \
../crypto/bf/bf_enc.c \
../crypto/bf/bf_ofb64.c \
../crypto/bf/bf_opts.c \
../crypto/bf/bf_skey.c \
../crypto/bf/bfspeed.c \
../crypto/bf/bftest.c 

OBJS += \
./crypto/bf/bf_cbc.o \
./crypto/bf/bf_cfb64.o \
./crypto/bf/bf_ecb.o \
./crypto/bf/bf_enc.o \
./crypto/bf/bf_ofb64.o \
./crypto/bf/bf_opts.o \
./crypto/bf/bf_skey.o \
./crypto/bf/bfspeed.o \
./crypto/bf/bftest.o 

C_DEPS += \
./crypto/bf/bf_cbc.d \
./crypto/bf/bf_cfb64.d \
./crypto/bf/bf_ecb.d \
./crypto/bf/bf_enc.d \
./crypto/bf/bf_ofb64.d \
./crypto/bf/bf_opts.d \
./crypto/bf/bf_skey.d \
./crypto/bf/bfspeed.d \
./crypto/bf/bftest.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/bf/%.o: ../crypto/bf/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


