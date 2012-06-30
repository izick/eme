################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/lhash/lh_stats.o \
../crypto/lhash/lhash.o 

C_SRCS += \
../crypto/lhash/lh_stats.c \
../crypto/lhash/lh_test.c \
../crypto/lhash/lhash.c 

OBJS += \
./crypto/lhash/lh_stats.o \
./crypto/lhash/lh_test.o \
./crypto/lhash/lhash.o 

C_DEPS += \
./crypto/lhash/lh_stats.d \
./crypto/lhash/lh_test.d \
./crypto/lhash/lhash.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/lhash/%.o: ../crypto/lhash/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


