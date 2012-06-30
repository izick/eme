################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../crypto/threads/mttest.c \
../crypto/threads/th-lock.c 

OBJS += \
./crypto/threads/mttest.o \
./crypto/threads/th-lock.o 

C_DEPS += \
./crypto/threads/mttest.d \
./crypto/threads/th-lock.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/threads/%.o: ../crypto/threads/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


