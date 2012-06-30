################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/des/fips_des_selftest.c \
../fips/des/fips_desmovs.c 

OBJS += \
./fips/des/fips_des_selftest.o \
./fips/des/fips_desmovs.o 

C_DEPS += \
./fips/des/fips_des_selftest.d \
./fips/des/fips_desmovs.d 


# Each subdirectory must supply rules for building sources it contributes
fips/des/%.o: ../fips/des/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


