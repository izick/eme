################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/rc2/rc2_cbc.o \
../crypto/rc2/rc2_ecb.o \
../crypto/rc2/rc2_skey.o \
../crypto/rc2/rc2cfb64.o \
../crypto/rc2/rc2ofb64.o 

C_SRCS += \
../crypto/rc2/rc2_cbc.c \
../crypto/rc2/rc2_ecb.c \
../crypto/rc2/rc2_skey.c \
../crypto/rc2/rc2cfb64.c \
../crypto/rc2/rc2ofb64.c \
../crypto/rc2/rc2speed.c \
../crypto/rc2/rc2test.c \
../crypto/rc2/tab.c 

OBJS += \
./crypto/rc2/rc2_cbc.o \
./crypto/rc2/rc2_ecb.o \
./crypto/rc2/rc2_skey.o \
./crypto/rc2/rc2cfb64.o \
./crypto/rc2/rc2ofb64.o \
./crypto/rc2/rc2speed.o \
./crypto/rc2/rc2test.o \
./crypto/rc2/tab.o 

C_DEPS += \
./crypto/rc2/rc2_cbc.d \
./crypto/rc2/rc2_ecb.d \
./crypto/rc2/rc2_skey.d \
./crypto/rc2/rc2cfb64.d \
./crypto/rc2/rc2ofb64.d \
./crypto/rc2/rc2speed.d \
./crypto/rc2/rc2test.d \
./crypto/rc2/tab.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/rc2/%.o: ../crypto/rc2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


