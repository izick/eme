################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../crypto/jpake/jpake.c \
../crypto/jpake/jpake_err.c \
../crypto/jpake/jpaketest.c 

OBJS += \
./crypto/jpake/jpake.o \
./crypto/jpake/jpake_err.o \
./crypto/jpake/jpaketest.o 

C_DEPS += \
./crypto/jpake/jpake.d \
./crypto/jpake/jpake_err.d \
./crypto/jpake/jpaketest.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/jpake/%.o: ../crypto/jpake/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


