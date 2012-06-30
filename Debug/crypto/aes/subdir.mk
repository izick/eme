################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/aes/aes_cbc.o \
../crypto/aes/aes_cfb.o \
../crypto/aes/aes_core.o \
../crypto/aes/aes_ecb.o \
../crypto/aes/aes_ige.o \
../crypto/aes/aes_misc.o \
../crypto/aes/aes_ofb.o \
../crypto/aes/aes_wrap.o 

C_SRCS += \
../crypto/aes/aes_cbc.c \
../crypto/aes/aes_cfb.c \
../crypto/aes/aes_core.c \
../crypto/aes/aes_ecb.c \
../crypto/aes/aes_ige.c \
../crypto/aes/aes_misc.c \
../crypto/aes/aes_ofb.c \
../crypto/aes/aes_wrap.c \
../crypto/aes/aes_x86core.c 

OBJS += \
./crypto/aes/aes_cbc.o \
./crypto/aes/aes_cfb.o \
./crypto/aes/aes_core.o \
./crypto/aes/aes_ecb.o \
./crypto/aes/aes_ige.o \
./crypto/aes/aes_misc.o \
./crypto/aes/aes_ofb.o \
./crypto/aes/aes_wrap.o \
./crypto/aes/aes_x86core.o 

C_DEPS += \
./crypto/aes/aes_cbc.d \
./crypto/aes/aes_cfb.d \
./crypto/aes/aes_core.d \
./crypto/aes/aes_ecb.d \
./crypto/aes/aes_ige.d \
./crypto/aes/aes_misc.d \
./crypto/aes/aes_ofb.d \
./crypto/aes/aes_wrap.d \
./crypto/aes/aes_x86core.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/aes/%.o: ../crypto/aes/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


