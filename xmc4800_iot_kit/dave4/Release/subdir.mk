################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/main_xmc4800_example.c \
C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/optiga_shell.c 

OBJS += \
./main_xmc4800_example.o \
./optiga_shell.o 

C_DEPS += \
./main_xmc4800_example.d \
./optiga_shell.d 


# Each subdirectory must supply rules for building sources it contributes
main_xmc4800_example.o: C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/main_xmc4800_example.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga_shell.o: C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/optiga_shell.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

