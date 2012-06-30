################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/modes/cbc128.o \
../crypto/modes/ccm128.o \
../crypto/modes/cfb128.o \
../crypto/modes/ctr128.o \
../crypto/modes/cts128.o \
../crypto/modes/eme128.o \
../crypto/modes/gcm128.o \
../crypto/modes/ofb128.o \
../crypto/modes/xts128.o 

C_SRCS += \
../crypto/modes/cbc128.c \
../crypto/modes/ccm128.c \
../crypto/modes/cfb128.c \
../crypto/modes/ctr128.c \
../crypto/modes/cts128.c \
../crypto/modes/eme128.c \
../crypto/modes/gcm128.c \
../crypto/modes/ofb128.c \
../crypto/modes/xts128.c 

OBJS += \
./crypto/modes/cbc128.o \
./crypto/modes/ccm128.o \
./crypto/modes/cfb128.o \
./crypto/modes/ctr128.o \
./crypto/modes/cts128.o \
./crypto/modes/eme128.o \
./crypto/modes/gcm128.o \
./crypto/modes/ofb128.o \
./crypto/modes/xts128.o 

C_DEPS += \
./crypto/modes/cbc128.d \
./crypto/modes/ccm128.d \
./crypto/modes/cfb128.d \
./crypto/modes/ctr128.d \
./crypto/modes/cts128.d \
./crypto/modes/eme128.d \
./crypto/modes/gcm128.d \
./crypto/modes/ofb128.d \
./crypto/modes/xts128.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/modes/%.o: ../crypto/modes/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


