################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal.c \
C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/pal_crypt_mbedtls.c \
C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_gpio.c \
C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_i2c.c \
C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_ifx_i2c_config.c \
C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_logger.c \
C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_os_datastore.c \
C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_os_event.c \
C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_os_lock.c \
C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_os_timer.c 

OBJS += \
./optiga-trust-m-lib/xmc-dave-polling/pal.o \
./optiga-trust-m-lib/xmc-dave-polling/pal_crypt_mbedtls.o \
./optiga-trust-m-lib/xmc-dave-polling/pal_gpio.o \
./optiga-trust-m-lib/xmc-dave-polling/pal_i2c.o \
./optiga-trust-m-lib/xmc-dave-polling/pal_ifx_i2c_config.o \
./optiga-trust-m-lib/xmc-dave-polling/pal_logger.o \
./optiga-trust-m-lib/xmc-dave-polling/pal_os_datastore.o \
./optiga-trust-m-lib/xmc-dave-polling/pal_os_event.o \
./optiga-trust-m-lib/xmc-dave-polling/pal_os_lock.o \
./optiga-trust-m-lib/xmc-dave-polling/pal_os_timer.o 

C_DEPS += \
./optiga-trust-m-lib/xmc-dave-polling/pal.d \
./optiga-trust-m-lib/xmc-dave-polling/pal_crypt_mbedtls.d \
./optiga-trust-m-lib/xmc-dave-polling/pal_gpio.d \
./optiga-trust-m-lib/xmc-dave-polling/pal_i2c.d \
./optiga-trust-m-lib/xmc-dave-polling/pal_ifx_i2c_config.d \
./optiga-trust-m-lib/xmc-dave-polling/pal_logger.d \
./optiga-trust-m-lib/xmc-dave-polling/pal_os_datastore.d \
./optiga-trust-m-lib/xmc-dave-polling/pal_os_event.d \
./optiga-trust-m-lib/xmc-dave-polling/pal_os_lock.d \
./optiga-trust-m-lib/xmc-dave-polling/pal_os_timer.d 


# Each subdirectory must supply rules for building sources it contributes
optiga-trust-m-lib/xmc-dave-polling/pal.o: C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/examples/optiga/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/externals/mbedtls/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc-dave-polling/pal_crypt_mbedtls.o: C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/pal_crypt_mbedtls.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/examples/optiga/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/externals/mbedtls/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc-dave-polling/pal_gpio.o: C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/examples/optiga/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/externals/mbedtls/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc-dave-polling/pal_i2c.o: C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/examples/optiga/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/externals/mbedtls/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc-dave-polling/pal_ifx_i2c_config.o: C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_ifx_i2c_config.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/examples/optiga/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/externals/mbedtls/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc-dave-polling/pal_logger.o: C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_logger.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/examples/optiga/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/externals/mbedtls/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc-dave-polling/pal_os_datastore.o: C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_os_datastore.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/examples/optiga/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/externals/mbedtls/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc-dave-polling/pal_os_event.o: C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_os_event.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/examples/optiga/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/externals/mbedtls/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc-dave-polling/pal_os_lock.o: C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_os_lock.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/examples/optiga/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/externals/mbedtls/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/xmc-dave-polling/pal_os_timer.o: C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/pal/xmc-dave-polling/pal_os_timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/examples/optiga/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/externals/mbedtls/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/optiga-trust-m/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

