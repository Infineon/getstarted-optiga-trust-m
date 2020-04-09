<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="CPU_CTRL_XMC1" URI="http://resources/4.0.10/app/CPU_CTRL_XMC1/0" description="Defines the number of bits assigned to preemption priority." version="4.0.10" minDaveVersion="4.0.0" instanceLabel="CPU_CTRL_XMC1_0" appLabel="">
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../UART/v4_1_12/UART_0.app#//@requiredApps.1"/>
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../INTERRUPT/v4_0_8/INTERRUPT_0.app#//@requiredApps.0"/>
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../INTERRUPT/v4_0_8/INTERRUPT_1.app#//@requiredApps.0"/>
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../UART/v4_1_12/UART_1.app#//@requiredApps.1"/>
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../I2C_MASTER/v4_1_30/I2C_MASTER_0.app#//@requiredApps.1"/>
  <properties singleton="true" sharable="true"/>
  <hwResources name="swd0_pin0" URI="http://resources/4.0.10/app/CPU_CTRL_XMC1/0/hwres_swd0_0" resourceGroupUri="port/p/0/pad/14" mResGrpUri="port/p/0/pad/14">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.6"/>
  </hwResources>
  <hwResources name="swd0_pin1" URI="http://resources/4.0.10/app/CPU_CTRL_XMC1/0/hwres_swd0_1" resourceGroupUri="port/p/0/pad/15" mResGrpUri="port/p/0/pad/15">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.0"/>
  </hwResources>
  <hwResources name="swd1_pin0" URI="http://resources/4.0.10/app/CPU_CTRL_XMC1/0/hwres_swd1_0" resourceGroupUri="" required="false" mResGrpUri="port/p/1/pad/3"/>
  <hwResources name="swd1_pin1" URI="http://resources/4.0.10/app/CPU_CTRL_XMC1/0/hwres_swd1_1" resourceGroupUri="" required="false" mResGrpUri="port/p/1/pad/2"/>
  <hwResources name="spd0" URI="http://resources/4.0.10/app/CPU_CTRL_XMC1/0/hwres_spd0" resourceGroupUri="" required="false" mResGrpUri="port/p/0/pad/14"/>
  <hwResources name="spd1" URI="http://resources/4.0.10/app/CPU_CTRL_XMC1/0/hwres_spd1" resourceGroupUri="" required="false" mResGrpUri="port/p/1/pad/3"/>
  <hwResources name="bootmode_pin0" URI="http://resources/4.0.10/app/CPU_CTRL_XMC1/0/hwres_bootmode0" resourceGroupUri="" required="false" mResGrpUri="port/p/4/pad/6"/>
  <hwResources name="bootmode_pin1" URI="http://resources/4.0.10/app/CPU_CTRL_XMC1/0/hwres_bootmode1" resourceGroupUri="" required="false" mResGrpUri="port/p/4/pad/7"/>
  <hwResources name="hardfault_exception" URI="http://resources/4.0.10/app/CPU_CTRL_XMC1/0/hwres_exception_hardfault" resourceGroupUri="peripheral/cpu/0/exception/hardfault" mResGrpUri="peripheral/cpu/0/exception/hardfault">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/cpu/cpu_0.dd#//@provided.8"/>
  </hwResources>
</ResourceModel:App>
