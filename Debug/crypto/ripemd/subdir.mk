################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/ripemd/rmd_dgst.o \
../crypto/ripemd/rmd_one.o 

C_SRCS += \
../crypto/ripemd/rmd160.c \
../crypto/ripemd/rmd_dgst.c \
../crypto/ripemd/rmd_one.c \
../crypto/ripemd/rmdtest.c 

OBJS += \
./crypto/ripemd/rmd160.o \
./crypto/ripemd/rmd_dgst.o \
./crypto/ripemd/rmd_one.o \
./crypto/ripemd/rmdtest.o 

C_DEPS += \
./crypto/ripemd/rmd160.d \
./crypto/ripemd/rmd_dgst.d \
./crypto/ripemd/rmd_one.d \
./crypto/ripemd/rmdtest.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/ripemd/%.o: ../crypto/ripemd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


