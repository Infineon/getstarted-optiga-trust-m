################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/comms/ifx_i2c/ifx_i2c.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/comms/ifx_i2c/ifx_i2c_config.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/comms/ifx_i2c/ifx_i2c_data_link_layer.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/comms/ifx_i2c/ifx_i2c_physical_layer.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/comms/ifx_i2c/ifx_i2c_presentation_layer.c \
C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/comms/ifx_i2c/ifx_i2c_transport_layer.c 

OBJS += \
./optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c.o \
./optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_config.o \
./optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_data_link_layer.o \
./optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_physical_layer.o \
./optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_presentation_layer.o \
./optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_transport_layer.o 

C_DEPS += \
./optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c.d \
./optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_config.d \
./optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_data_link_layer.d \
./optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_physical_layer.d \
./optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_presentation_layer.d \
./optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_transport_layer.d 


# Each subdirectory must supply rules for building sources it contributes
optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/comms/ifx_i2c/ifx_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_config.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/comms/ifx_i2c/ifx_i2c_config.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_data_link_layer.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/comms/ifx_i2c/ifx_i2c_data_link_layer.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_physical_layer.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/comms/ifx_i2c/ifx_i2c_physical_layer.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_presentation_layer.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/comms/ifx_i2c/ifx_i2c_presentation_layer.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
optiga-trust-m-lib/optiga/comms/ifx_i2c/ifx_i2c_transport_layer.o: C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/comms/ifx_i2c/ifx_i2c_transport_layer.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"C:/Workspace/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

