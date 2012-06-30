################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/bio/saccept.c \
../demos/bio/sconnect.c 

OBJS += \
./demos/bio/saccept.o \
./demos/bio/sconnect.o 

C_DEPS += \
./demos/bio/saccept.d \
./demos/bio/sconnect.d 


# Each subdirectory must supply rules for building sources it contributes
demos/bio/%.o: ../demos/bio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


