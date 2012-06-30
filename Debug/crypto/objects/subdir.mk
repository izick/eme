################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/objects/o_names.o \
../crypto/objects/obj_dat.o \
../crypto/objects/obj_err.o \
../crypto/objects/obj_lib.o \
../crypto/objects/obj_xref.o 

C_SRCS += \
../crypto/objects/o_names.c \
../crypto/objects/obj_dat.c \
../crypto/objects/obj_err.c \
../crypto/objects/obj_lib.c \
../crypto/objects/obj_xref.c 

OBJS += \
./crypto/objects/o_names.o \
./crypto/objects/obj_dat.o \
./crypto/objects/obj_err.o \
./crypto/objects/obj_lib.o \
./crypto/objects/obj_xref.o 

C_DEPS += \
./crypto/objects/o_names.d \
./crypto/objects/obj_dat.d \
./crypto/objects/obj_err.d \
./crypto/objects/obj_lib.d \
./crypto/objects/obj_xref.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/objects/%.o: ../crypto/objects/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


