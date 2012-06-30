################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/hmac/hm_ameth.o \
../crypto/hmac/hm_pmeth.o \
../crypto/hmac/hmac.o 

C_SRCS += \
../crypto/hmac/hm_ameth.c \
../crypto/hmac/hm_pmeth.c \
../crypto/hmac/hmac.c \
../crypto/hmac/hmactest.c 

OBJS += \
./crypto/hmac/hm_ameth.o \
./crypto/hmac/hm_pmeth.o \
./crypto/hmac/hmac.o \
./crypto/hmac/hmactest.o 

C_DEPS += \
./crypto/hmac/hm_ameth.d \
./crypto/hmac/hm_pmeth.d \
./crypto/hmac/hmac.d \
./crypto/hmac/hmactest.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/hmac/%.o: ../crypto/hmac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


