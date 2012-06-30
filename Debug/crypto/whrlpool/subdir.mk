################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/whrlpool/wp_block.o \
../crypto/whrlpool/wp_dgst.o 

C_SRCS += \
../crypto/whrlpool/wp_block.c \
../crypto/whrlpool/wp_dgst.c \
../crypto/whrlpool/wp_test.c 

OBJS += \
./crypto/whrlpool/wp_block.o \
./crypto/whrlpool/wp_dgst.o \
./crypto/whrlpool/wp_test.o 

C_DEPS += \
./crypto/whrlpool/wp_block.d \
./crypto/whrlpool/wp_dgst.d \
./crypto/whrlpool/wp_test.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/whrlpool/%.o: ../crypto/whrlpool/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


