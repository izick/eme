################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/fips.c \
../fips/fips_canister.c \
../fips/fips_post.c \
../fips/fips_premain.c \
../fips/fips_test_suite.c 

OBJS += \
./fips/fips.o \
./fips/fips_canister.o \
./fips/fips_post.o \
./fips/fips_premain.o \
./fips/fips_test_suite.o 

C_DEPS += \
./fips/fips.d \
./fips/fips_canister.d \
./fips/fips_post.d \
./fips/fips_premain.d \
./fips/fips_test_suite.d 


# Each subdirectory must supply rules for building sources it contributes
fips/%.o: ../fips/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


