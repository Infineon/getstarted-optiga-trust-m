################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/pal_crypt_mbedtls.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_gpio.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_i2c.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_ifx_i2c_config.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_logger.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_os_datastore.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_os_event.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_os_lock.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_os_timer.c 

OBJS += \
./lib/xmc4800/pal.o \
./lib/xmc4800/pal_crypt_mbedtls.o \
./lib/xmc4800/pal_gpio.o \
./lib/xmc4800/pal_i2c.o \
./lib/xmc4800/pal_ifx_i2c_config.o \
./lib/xmc4800/pal_logger.o \
./lib/xmc4800/pal_os_datastore.o \
./lib/xmc4800/pal_os_event.o \
./lib/xmc4800/pal_os_lock.o \
./lib/xmc4800/pal_os_timer.o 

C_DEPS += \
./lib/xmc4800/pal.d \
./lib/xmc4800/pal_crypt_mbedtls.d \
./lib/xmc4800/pal_gpio.d \
./lib/xmc4800/pal_i2c.d \
./lib/xmc4800/pal_ifx_i2c_config.d \
./lib/xmc4800/pal_logger.d \
./lib/xmc4800/pal_os_datastore.d \
./lib/xmc4800/pal_os_event.d \
./lib/xmc4800/pal_os_lock.d \
./lib/xmc4800/pal_os_timer.d 


# Each subdirectory must supply rules for building sources it contributes
lib/xmc4800/pal.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
lib/xmc4800/pal_crypt_mbedtls.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/pal_crypt_mbedtls.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
lib/xmc4800/pal_gpio.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
lib/xmc4800/pal_i2c.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
lib/xmc4800/pal_ifx_i2c_config.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_ifx_i2c_config.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
lib/xmc4800/pal_logger.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_logger.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
lib/xmc4800/pal_os_datastore.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_os_datastore.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
lib/xmc4800/pal_os_event.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_os_event.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
lib/xmc4800/pal_os_lock.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_os_lock.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
lib/xmc4800/pal_os_timer.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/pal/xmc4800/pal_os_timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4800_F100x2048 -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/XMCLib/inc" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Include" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Libraries/CMSIS/Infineon/XMC4800_series/Include" -I"$(PROJECT_LOC)" -I"C:/Workspace/getstarted-optiga-trust-m/xmc4800_iot_kit/common/Dave/Generated" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -O3 -ffunction-sections -fdata-sections -Wall -Werror -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

