################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/engines/ibmca/hw_ibmca.c \
../demos/engines/ibmca/hw_ibmca_err.c 

OBJS += \
./demos/engines/ibmca/hw_ibmca.o \
./demos/engines/ibmca/hw_ibmca_err.o 

C_DEPS += \
./demos/engines/ibmca/hw_ibmca.d \
./demos/engines/ibmca/hw_ibmca_err.d 


# Each subdirectory must supply rules for building sources it contributes
demos/engines/ibmca/%.o: ../demos/engines/ibmca/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


