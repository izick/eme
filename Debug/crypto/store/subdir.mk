################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../crypto/store/str_err.c \
../crypto/store/str_lib.c \
../crypto/store/str_mem.c \
../crypto/store/str_meth.c 

OBJS += \
./crypto/store/str_err.o \
./crypto/store/str_lib.o \
./crypto/store/str_mem.o \
./crypto/store/str_meth.o 

C_DEPS += \
./crypto/store/str_err.d \
./crypto/store/str_lib.d \
./crypto/store/str_mem.d \
./crypto/store/str_meth.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/store/%.o: ../crypto/store/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


