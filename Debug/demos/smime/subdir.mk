################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/smime/smdec.c \
../demos/smime/smenc.c \
../demos/smime/smsign.c \
../demos/smime/smsign2.c \
../demos/smime/smver.c 

OBJS += \
./demos/smime/smdec.o \
./demos/smime/smenc.o \
./demos/smime/smsign.o \
./demos/smime/smsign2.o \
./demos/smime/smver.o 

C_DEPS += \
./demos/smime/smdec.d \
./demos/smime/smenc.d \
./demos/smime/smsign.d \
./demos/smime/smsign2.d \
./demos/smime/smver.d 


# Each subdirectory must supply rules for building sources it contributes
demos/smime/%.o: ../demos/smime/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


