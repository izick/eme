################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../engines/e_4758cca.o \
../engines/e_aep.o \
../engines/e_atalla.o \
../engines/e_capi.o \
../engines/e_chil.o \
../engines/e_cswift.o \
../engines/e_gmp.o \
../engines/e_nuron.o \
../engines/e_padlock.o \
../engines/e_sureware.o \
../engines/e_ubsec.o 

C_SRCS += \
../engines/e_4758cca.c \
../engines/e_4758cca_err.c \
../engines/e_aep.c \
../engines/e_aep_err.c \
../engines/e_atalla.c \
../engines/e_atalla_err.c \
../engines/e_capi.c \
../engines/e_capi_err.c \
../engines/e_chil.c \
../engines/e_chil_err.c \
../engines/e_cswift.c \
../engines/e_cswift_err.c \
../engines/e_gmp.c \
../engines/e_gmp_err.c \
../engines/e_nuron.c \
../engines/e_nuron_err.c \
../engines/e_padlock.c \
../engines/e_sureware.c \
../engines/e_sureware_err.c \
../engines/e_ubsec.c \
../engines/e_ubsec_err.c 

OBJS += \
./engines/e_4758cca.o \
./engines/e_4758cca_err.o \
./engines/e_aep.o \
./engines/e_aep_err.o \
./engines/e_atalla.o \
./engines/e_atalla_err.o \
./engines/e_capi.o \
./engines/e_capi_err.o \
./engines/e_chil.o \
./engines/e_chil_err.o \
./engines/e_cswift.o \
./engines/e_cswift_err.o \
./engines/e_gmp.o \
./engines/e_gmp_err.o \
./engines/e_nuron.o \
./engines/e_nuron_err.o \
./engines/e_padlock.o \
./engines/e_sureware.o \
./engines/e_sureware_err.o \
./engines/e_ubsec.o \
./engines/e_ubsec_err.o 

C_DEPS += \
./engines/e_4758cca.d \
./engines/e_4758cca_err.d \
./engines/e_aep.d \
./engines/e_aep_err.d \
./engines/e_atalla.d \
./engines/e_atalla_err.d \
./engines/e_capi.d \
./engines/e_capi_err.d \
./engines/e_chil.d \
./engines/e_chil_err.d \
./engines/e_cswift.d \
./engines/e_cswift_err.d \
./engines/e_gmp.d \
./engines/e_gmp_err.d \
./engines/e_nuron.d \
./engines/e_nuron_err.d \
./engines/e_padlock.d \
./engines/e_sureware.d \
./engines/e_sureware_err.d \
./engines/e_ubsec.d \
./engines/e_ubsec_err.d 


# Each subdirectory must supply rules for building sources it contributes
engines/%.o: ../engines/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


