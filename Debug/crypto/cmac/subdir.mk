################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/cmac/cm_ameth.o \
../crypto/cmac/cm_pmeth.o \
../crypto/cmac/cmac.o 

C_SRCS += \
../crypto/cmac/cm_ameth.c \
../crypto/cmac/cm_pmeth.c \
../crypto/cmac/cmac.c 

OBJS += \
./crypto/cmac/cm_ameth.o \
./crypto/cmac/cm_pmeth.o \
./crypto/cmac/cmac.o 

C_DEPS += \
./crypto/cmac/cm_ameth.d \
./crypto/cmac/cm_pmeth.d \
./crypto/cmac/cmac.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/cmac/%.o: ../crypto/cmac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


