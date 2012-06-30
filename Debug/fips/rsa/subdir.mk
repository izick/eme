################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/rsa/fips_rsa_lib.c \
../fips/rsa/fips_rsa_selftest.c \
../fips/rsa/fips_rsa_sign.c \
../fips/rsa/fips_rsagtest.c \
../fips/rsa/fips_rsastest.c \
../fips/rsa/fips_rsavtest.c 

OBJS += \
./fips/rsa/fips_rsa_lib.o \
./fips/rsa/fips_rsa_selftest.o \
./fips/rsa/fips_rsa_sign.o \
./fips/rsa/fips_rsagtest.o \
./fips/rsa/fips_rsastest.o \
./fips/rsa/fips_rsavtest.o 

C_DEPS += \
./fips/rsa/fips_rsa_lib.d \
./fips/rsa/fips_rsa_selftest.d \
./fips/rsa/fips_rsa_sign.d \
./fips/rsa/fips_rsagtest.d \
./fips/rsa/fips_rsastest.d \
./fips/rsa/fips_rsavtest.d 


# Each subdirectory must supply rules for building sources it contributes
fips/rsa/%.o: ../fips/rsa/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


