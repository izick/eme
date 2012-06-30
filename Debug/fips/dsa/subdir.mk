################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/dsa/fips_dsa_lib.c \
../fips/dsa/fips_dsa_selftest.c \
../fips/dsa/fips_dsa_sign.c \
../fips/dsa/fips_dsatest.c \
../fips/dsa/fips_dssvs.c 

OBJS += \
./fips/dsa/fips_dsa_lib.o \
./fips/dsa/fips_dsa_selftest.o \
./fips/dsa/fips_dsa_sign.o \
./fips/dsa/fips_dsatest.o \
./fips/dsa/fips_dssvs.o 

C_DEPS += \
./fips/dsa/fips_dsa_lib.d \
./fips/dsa/fips_dsa_selftest.d \
./fips/dsa/fips_dsa_sign.d \
./fips/dsa/fips_dsatest.d \
./fips/dsa/fips_dssvs.d 


# Each subdirectory must supply rules for building sources it contributes
fips/dsa/%.o: ../fips/dsa/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


