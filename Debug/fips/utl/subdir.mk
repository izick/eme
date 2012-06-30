################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fips/utl/fips_enc.c \
../fips/utl/fips_err.c \
../fips/utl/fips_lck.c \
../fips/utl/fips_md.c \
../fips/utl/fips_mem.c 

OBJS += \
./fips/utl/fips_enc.o \
./fips/utl/fips_err.o \
./fips/utl/fips_lck.o \
./fips/utl/fips_md.o \
./fips/utl/fips_mem.o 

C_DEPS += \
./fips/utl/fips_enc.d \
./fips/utl/fips_err.d \
./fips/utl/fips_lck.d \
./fips/utl/fips_md.d \
./fips/utl/fips_mem.d 


# Each subdirectory must supply rules for building sources it contributes
fips/utl/%.o: ../fips/utl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


