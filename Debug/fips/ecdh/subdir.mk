################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/ecdh/fips_ecdhvs.c 

OBJS += \
./fips/ecdh/fips_ecdhvs.o 

C_DEPS += \
./fips/ecdh/fips_ecdhvs.d 


# Each subdirectory must supply rules for building sources it contributes
fips/ecdh/%.o: ../fips/ecdh/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


