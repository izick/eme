################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bugs/alpha.c \
../bugs/dggccbug.c \
../bugs/sgiccbug.c \
../bugs/stream.c \
../bugs/ultrixcc.c 

OBJS += \
./bugs/alpha.o \
./bugs/dggccbug.o \
./bugs/sgiccbug.o \
./bugs/stream.o \
./bugs/ultrixcc.o 

C_DEPS += \
./bugs/alpha.d \
./bugs/dggccbug.d \
./bugs/sgiccbug.d \
./bugs/stream.d \
./bugs/ultrixcc.d 


# Each subdirectory must supply rules for building sources it contributes
bugs/%.o: ../bugs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


