################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../crypto/md2/md2.c \
../crypto/md2/md2_dgst.c \
../crypto/md2/md2_one.c \
../crypto/md2/md2test.c 

OBJS += \
./crypto/md2/md2.o \
./crypto/md2/md2_dgst.o \
./crypto/md2/md2_one.o \
./crypto/md2/md2test.o 

C_DEPS += \
./crypto/md2/md2.d \
./crypto/md2/md2_dgst.d \
./crypto/md2/md2_one.d \
./crypto/md2/md2test.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/md2/%.o: ../crypto/md2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


