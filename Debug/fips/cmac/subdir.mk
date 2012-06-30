################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/cmac/fips_cmac_selftest.c \
../fips/cmac/fips_cmactest.c 

OBJS += \
./fips/cmac/fips_cmac_selftest.o \
./fips/cmac/fips_cmactest.o 

C_DEPS += \
./fips/cmac/fips_cmac_selftest.d \
./fips/cmac/fips_cmactest.d 


# Each subdirectory must supply rules for building sources it contributes
fips/cmac/%.o: ../fips/cmac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


