################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/hmac/fips_hmac_selftest.c \
../fips/hmac/fips_hmactest.c 

OBJS += \
./fips/hmac/fips_hmac_selftest.o \
./fips/hmac/fips_hmactest.o 

C_DEPS += \
./fips/hmac/fips_hmac_selftest.d \
./fips/hmac/fips_hmactest.d 


# Each subdirectory must supply rules for building sources it contributes
fips/hmac/%.o: ../fips/hmac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


