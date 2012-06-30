################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../crypto/cpt_err.o \
../crypto/cryptlib.o \
../crypto/cversion.o \
../crypto/ebcdic.o \
../crypto/ex_data.o \
../crypto/fips_ers.o \
../crypto/lock.o \
../crypto/mem.o \
../crypto/mem_clr.o \
../crypto/mem_dbg.o \
../crypto/o_dir.o \
../crypto/o_fips.o \
../crypto/o_init.o \
../crypto/o_str.o \
../crypto/o_time.o \
../crypto/thr_id.o \
../crypto/uid.o 

C_SRCS += \
../crypto/LPdir_nyi.c \
../crypto/LPdir_unix.c \
../crypto/LPdir_vms.c \
../crypto/LPdir_win.c \
../crypto/LPdir_win32.c \
../crypto/LPdir_wince.c \
../crypto/armcap.c \
../crypto/cpt_err.c \
../crypto/cryptlib.c \
../crypto/cversion.c \
../crypto/ebcdic.c \
../crypto/ex_data.c \
../crypto/fips_ers.c \
../crypto/lock.c \
../crypto/mem.c \
../crypto/mem_clr.c \
../crypto/mem_dbg.c \
../crypto/o_dir.c \
../crypto/o_dir_test.c \
../crypto/o_fips.c \
../crypto/o_init.c \
../crypto/o_str.c \
../crypto/o_time.c \
../crypto/ppccap.c \
../crypto/s390xcap.c \
../crypto/sparcv9cap.c \
../crypto/thr_id.c \
../crypto/uid.c 

S_UPPER_SRCS += \
../crypto/armv4cpuid.S \
../crypto/ia64cpuid.S \
../crypto/s390xcpuid.S \
../crypto/sparccpuid.S 

OBJS += \
./crypto/LPdir_nyi.o \
./crypto/LPdir_unix.o \
./crypto/LPdir_vms.o \
./crypto/LPdir_win.o \
./crypto/LPdir_win32.o \
./crypto/LPdir_wince.o \
./crypto/armcap.o \
./crypto/armv4cpuid.o \
./crypto/cpt_err.o \
./crypto/cryptlib.o \
./crypto/cversion.o \
./crypto/ebcdic.o \
./crypto/ex_data.o \
./crypto/fips_ers.o \
./crypto/ia64cpuid.o \
./crypto/lock.o \
./crypto/mem.o \
./crypto/mem_clr.o \
./crypto/mem_dbg.o \
./crypto/o_dir.o \
./crypto/o_dir_test.o \
./crypto/o_fips.o \
./crypto/o_init.o \
./crypto/o_str.o \
./crypto/o_time.o \
./crypto/ppccap.o \
./crypto/s390xcap.o \
./crypto/s390xcpuid.o \
./crypto/sparccpuid.o \
./crypto/sparcv9cap.o \
./crypto/thr_id.o \
./crypto/uid.o 

C_DEPS += \
./crypto/LPdir_nyi.d \
./crypto/LPdir_unix.d \
./crypto/LPdir_vms.d \
./crypto/LPdir_win.d \
./crypto/LPdir_win32.d \
./crypto/LPdir_wince.d \
./crypto/armcap.d \
./crypto/cpt_err.d \
./crypto/cryptlib.d \
./crypto/cversion.d \
./crypto/ebcdic.d \
./crypto/ex_data.d \
./crypto/fips_ers.d \
./crypto/lock.d \
./crypto/mem.d \
./crypto/mem_clr.d \
./crypto/mem_dbg.d \
./crypto/o_dir.d \
./crypto/o_dir_test.d \
./crypto/o_fips.d \
./crypto/o_init.d \
./crypto/o_str.d \
./crypto/o_time.d \
./crypto/ppccap.d \
./crypto/s390xcap.d \
./crypto/sparcv9cap.d \
./crypto/thr_id.d \
./crypto/uid.d 


# Each subdirectory must supply rules for building sources it contributes
crypto/%.o: ../crypto/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

crypto/%.o: ../crypto/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


