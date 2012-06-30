################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/maurice/example1.c \
../demos/maurice/example2.c \
../demos/maurice/example3.c \
../demos/maurice/example4.c \
../demos/maurice/loadkeys.c 

OBJS += \
./demos/maurice/example1.o \
./demos/maurice/example2.o \
./demos/maurice/example3.o \
./demos/maurice/example4.o \
./demos/maurice/loadkeys.o 

C_DEPS += \
./demos/maurice/example1.d \
./demos/maurice/example2.d \
./demos/maurice/example3.d \
./demos/maurice/example4.d \
./demos/maurice/loadkeys.d 


# Each subdirectory must supply rules for building sources it contributes
demos/maurice/%.o: ../demos/maurice/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


