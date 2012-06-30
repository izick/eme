################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../crypto/rc5/rc5_ecb.c \
../crypto/rc5/rc5_enc.c \
../crypto/rc5/rc5_skey.c \
../crypto/rc5/rc5cfb64.c \
../crypto/rc5/rc5ofb64.c \
../crypto/rc5/rc5speed.c \
../crypto/rc5/rc5test.c 

OBJS += \
./crypto/rc5/rc5_ecb.o \
./crypto/rc5/rc5_enc.o \
./crypto/rc5/rc5_skey.o \
./crypto/rc5/rc5cfb64.o \
./crypto/rc5/rc5ofb64.o \
./crypto/rc5/rc5speed.o \
./crypto/rc5/rc5test.o 

C_DEPS += \
./crypto/rc5/rc5_ecb.d \
./crypto/rc5/rc5_enc.d \
./crypto/rc5/rc5_skey.d \
./crypto/rc5/rc5cfb64.d \
./crypto/rc5/rc5ofb64.d \
./crypto/rc5/rc5speed.d \
./crypto/rc5/rc5test.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/rc5/%.o: ../crypto/rc5/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


