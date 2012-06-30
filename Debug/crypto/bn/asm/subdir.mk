################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../crypto/bn/asm/x86_64-gcc.c 

S_UPPER_SRCS += \
../crypto/bn/asm/ia64.S \
../crypto/bn/asm/s390x.S \
../crypto/bn/asm/sparcv8.S \
../crypto/bn/asm/sparcv8plus.S 

OBJS += \
./crypto/bn/asm/ia64.o \
./crypto/bn/asm/s390x.o \
./crypto/bn/asm/sparcv8.o \
./crypto/bn/asm/sparcv8plus.o \
./crypto/bn/asm/x86_64-gcc.o 

C_DEPS += \
./crypto/bn/asm/x86_64-gcc.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/bn/asm/%.o: ../crypto/bn/asm/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

crypto/bn/asm/%.o: ../crypto/bn/asm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


