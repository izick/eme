################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/aes/fips_aes_selftest.c \
../fips/aes/fips_aesavs.c \
../fips/aes/fips_gcmtest.c 

OBJS += \
./fips/aes/fips_aes_selftest.o \
./fips/aes/fips_aesavs.o \
./fips/aes/fips_gcmtest.o 

C_DEPS += \
./fips/aes/fips_aes_selftest.d \
./fips/aes/fips_aesavs.d \
./fips/aes/fips_gcmtest.d 


# Each subdirectory must supply rules for building sources it contributes
fips/aes/%.o: ../fips/aes/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


