################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated/UART/uart.c \
C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated/UART/uart_conf.c 

OBJS += \
./lib/xmc/Dave/Generated/UART/uart.o \
./lib/xmc/Dave/Generated/UART/uart_conf.o 

C_DEPS += \
./lib/xmc/Dave/Generated/UART/uart.d \
./lib/xmc/Dave/Generated/UART/uart_conf.d 


# Each subdirectory must supply rules for building sources it contributes
lib/xmc/Dave/Generated/UART/uart.o: C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated/UART/uart.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
lib/xmc/Dave/Generated/UART/uart_conf.o: C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated/UART/uart_conf.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

