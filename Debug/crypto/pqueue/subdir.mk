################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/pqueue/pqueue.o 

C_SRCS += \
../crypto/pqueue/pq_test.c \
../crypto/pqueue/pqueue.c 

OBJS += \
./crypto/pqueue/pq_test.o \
./crypto/pqueue/pqueue.o 

C_DEPS += \
./crypto/pqueue/pq_test.d \
./crypto/pqueue/pqueue.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/pqueue/%.o: ../crypto/pqueue/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


