################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demos/engines/cluster_labs/hw_cluster_labs.c \
../demos/engines/cluster_labs/hw_cluster_labs_err.c 

OBJS += \
./demos/engines/cluster_labs/hw_cluster_labs.o \
./demos/engines/cluster_labs/hw_cluster_labs_err.o 

C_DEPS += \
./demos/engines/cluster_labs/hw_cluster_labs.d \
./demos/engines/cluster_labs/hw_cluster_labs_err.d 


# Each subdirectory must supply rules for building sources it contributes
demos/engines/cluster_labs/%.o: ../demos/engines/cluster_labs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


