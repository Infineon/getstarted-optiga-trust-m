################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Startup/system_XMC1400.c 

S_UPPER_SRCS += \
../Startup/startup_XMC1400.S 

OBJS += \
./Startup/startup_XMC1400.o \
./Startup/system_XMC1400.o 

S_UPPER_DEPS += \
./Startup/startup_XMC1400.d 

C_DEPS += \
./Startup/system_XMC1400.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC Assembler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -x assembler-with-cpp -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"C:/Workspace/DAVE-4.4.2-64Bit/Temp/getstarted-optiga-trust-m/optiga-trust-m/optiga/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/Temp/getstarted-optiga-trust-m/optiga-trust-m/externals/mbedtls/include" -I"C:/Workspace/DAVE-4.4.2-64Bit/Temp/getstarted-optiga-trust-m/optiga-trust-m/examples/optiga/include" -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
Startup/%.o: ../Startup/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC1404_Q064x0200 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC1400_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/examples/optiga/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/externals/mbedtls/include" -I"//MAC/Home/Downloads/getstarted-optiga-trust-m/optiga-trust-m-1/optiga/include" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

