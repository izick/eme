################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/b64.c \
../demos/selfsign.c \
../demos/spkigen.c 

OBJS += \
./demos/b64.o \
./demos/selfsign.o \
./demos/spkigen.o 

C_DEPS += \
./demos/b64.d \
./demos/selfsign.d \
./demos/spkigen.d 


# Each subdirectory must supply rules for building sources it contributes
demos/%.o: ../demos/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


