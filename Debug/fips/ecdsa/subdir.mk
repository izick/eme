################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/ecdsa/fips_ecdsa_lib.c \
../fips/ecdsa/fips_ecdsa_selftest.c \
../fips/ecdsa/fips_ecdsa_sign.c \
../fips/ecdsa/fips_ecdsavs.c 

OBJS += \
./fips/ecdsa/fips_ecdsa_lib.o \
./fips/ecdsa/fips_ecdsa_selftest.o \
./fips/ecdsa/fips_ecdsa_sign.o \
./fips/ecdsa/fips_ecdsavs.o 

C_DEPS += \
./fips/ecdsa/fips_ecdsa_lib.d \
./fips/ecdsa/fips_ecdsa_selftest.d \
./fips/ecdsa/fips_ecdsa_sign.d \
./fips/ecdsa/fips_ecdsavs.d 


# Each subdirectory must supply rules for building sources it contributes
fips/ecdsa/%.o: ../fips/ecdsa/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


