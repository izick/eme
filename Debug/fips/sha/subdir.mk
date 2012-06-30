################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/sha/fips_sha1_selftest.c \
../fips/sha/fips_shatest.c \
../fips/sha/fips_standalone_sha1.c 

OBJS += \
./fips/sha/fips_sha1_selftest.o \
./fips/sha/fips_shatest.o \
./fips/sha/fips_standalone_sha1.o 

C_DEPS += \
./fips/sha/fips_sha1_selftest.d \
./fips/sha/fips_shatest.d \
./fips/sha/fips_standalone_sha1.d 


# Each subdirectory must supply rules for building sources it contributes
fips/sha/%.o: ../fips/sha/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


