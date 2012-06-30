################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/tunala/breakage.c \
../demos/tunala/buffer.c \
../demos/tunala/cb.c \
../demos/tunala/ip.c \
../demos/tunala/sm.c \
../demos/tunala/tunala.c 

OBJS += \
./demos/tunala/breakage.o \
./demos/tunala/buffer.o \
./demos/tunala/cb.o \
./demos/tunala/ip.o \
./demos/tunala/sm.o \
./demos/tunala/tunala.o 

C_DEPS += \
./demos/tunala/breakage.d \
./demos/tunala/buffer.d \
./demos/tunala/cb.d \
./demos/tunala/ip.d \
./demos/tunala/sm.d \
./demos/tunala/tunala.d 


# Each subdirectory must supply rules for building sources it contributes
demos/tunala/%.o: ../demos/tunala/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


