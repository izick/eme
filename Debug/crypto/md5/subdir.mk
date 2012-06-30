################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/md5/md5_dgst.o \
../crypto/md5/md5_one.o 

C_SRCS += \
../crypto/md5/md5.c \
../crypto/md5/md5_dgst.c \
../crypto/md5/md5_one.c \
../crypto/md5/md5test.c 

OBJS += \
./crypto/md5/md5.o \
./crypto/md5/md5_dgst.o \
./crypto/md5/md5_one.o \
./crypto/md5/md5test.o 

C_DEPS += \
./crypto/md5/md5.d \
./crypto/md5/md5_dgst.d \
./crypto/md5/md5_one.d \
./crypto/md5/md5test.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/md5/%.o: ../crypto/md5/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


