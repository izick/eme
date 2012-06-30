################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/rc4/rc4_enc.o \
../crypto/rc4/rc4_skey.o 

C_SRCS += \
../crypto/rc4/rc4.c \
../crypto/rc4/rc4_enc.c \
../crypto/rc4/rc4_skey.c \
../crypto/rc4/rc4speed.c \
../crypto/rc4/rc4test.c 

OBJS += \
./crypto/rc4/rc4.o \
./crypto/rc4/rc4_enc.o \
./crypto/rc4/rc4_skey.o \
./crypto/rc4/rc4speed.o \
./crypto/rc4/rc4test.o 

C_DEPS += \
./crypto/rc4/rc4.d \
./crypto/rc4/rc4_enc.d \
./crypto/rc4/rc4_skey.d \
./crypto/rc4/rc4speed.d \
./crypto/rc4/rc4test.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/rc4/%.o: ../crypto/rc4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


