################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/comp/c_rle.o \
../crypto/comp/c_zlib.o \
../crypto/comp/comp_err.o \
../crypto/comp/comp_lib.o 

C_SRCS += \
../crypto/comp/c_rle.c \
../crypto/comp/c_zlib.c \
../crypto/comp/comp_err.c \
../crypto/comp/comp_lib.c 

OBJS += \
./crypto/comp/c_rle.o \
./crypto/comp/c_zlib.o \
./crypto/comp/comp_err.o \
./crypto/comp/comp_lib.o 

C_DEPS += \
./crypto/comp/c_rle.d \
./crypto/comp/c_zlib.d \
./crypto/comp/comp_err.d \
./crypto/comp/comp_lib.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/comp/%.o: ../crypto/comp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


