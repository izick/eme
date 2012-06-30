################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/cast/c_cfb64.o \
../crypto/cast/c_ecb.o \
../crypto/cast/c_enc.o \
../crypto/cast/c_ofb64.o \
../crypto/cast/c_skey.o 

C_SRCS += \
../crypto/cast/c_cfb64.c \
../crypto/cast/c_ecb.c \
../crypto/cast/c_enc.c \
../crypto/cast/c_ofb64.c \
../crypto/cast/c_skey.c \
../crypto/cast/cast_spd.c \
../crypto/cast/castopts.c \
../crypto/cast/casttest.c 

OBJS += \
./crypto/cast/c_cfb64.o \
./crypto/cast/c_ecb.o \
./crypto/cast/c_enc.o \
./crypto/cast/c_ofb64.o \
./crypto/cast/c_skey.o \
./crypto/cast/cast_spd.o \
./crypto/cast/castopts.o \
./crypto/cast/casttest.o 

C_DEPS += \
./crypto/cast/c_cfb64.d \
./crypto/cast/c_ecb.d \
./crypto/cast/c_enc.d \
./crypto/cast/c_ofb64.d \
./crypto/cast/c_skey.d \
./crypto/cast/cast_spd.d \
./crypto/cast/castopts.d \
./crypto/cast/casttest.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/cast/%.o: ../crypto/cast/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


