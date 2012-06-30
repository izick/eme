################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/engines/rsaref/rsaref.c \
../demos/engines/rsaref/rsaref_err.c 

OBJS += \
./demos/engines/rsaref/rsaref.o \
./demos/engines/rsaref/rsaref_err.o 

C_DEPS += \
./demos/engines/rsaref/rsaref.d \
./demos/engines/rsaref/rsaref_err.d 


# Each subdirectory must supply rules for building sources it contributes
demos/engines/rsaref/%.o: ../demos/engines/rsaref/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


