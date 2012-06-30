################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../crypto/md5/asm/md5-ia64.S 

OBJS += \
./crypto/md5/asm/md5-ia64.o 


# Each subdirectory must supply rules for building sources it contributes
crypto/md5/asm/%.o: ../crypto/md5/asm/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


