################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/dh/fips_dh_lib.c \
../fips/dh/fips_dhvs.c 

OBJS += \
./fips/dh/fips_dh_lib.o \
./fips/dh/fips_dhvs.o 

C_DEPS += \
./fips/dh/fips_dh_lib.d \
./fips/dh/fips_dhvs.d 


# Each subdirectory must supply rules for building sources it contributes
fips/dh/%.o: ../fips/dh/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


