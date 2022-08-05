<a name="top"></a>

[tocstart]: # (toc start)

* [Project Structure](#project-structure)
* [System Overview](#system-overview)
  * [Hardware Setup](#hardware-setup)
    * [Overall Setup](#overall-setup)
    * [XMC4800 IoT Connectivity Kit](#xmc4800-iot-connectivity-kit)
    * [My IoT Adapter](#my-iot-adapter)
    * [Shield2Go Security OPTIGA™ Trust M](#shield2go-security-optiga-trust-m)
* [Using OPTIGA™ Trust M](#using-optiga-trust-m)
  * [Quickstart](#quickstart)
    * [Flash the binary](#flash-the-binary)
    * [Logger setup](#logger-setup)
    * [Available commands](#available-commands)
* [Advanced Setup](#advanced-setup)
  * [Setting up DAVE™ IDE on PC](#setting-up-dave-ide-on-pc)
  * [Debug OPTIGA™ Trust M Example Application Project with DAVE™](#debug-optiga-trust-m-example-application-project-with-dave)
  * [Logger Control](#logger-control)
  * [Shielded Connection Control](#shielded-connection-control)
* [Troubleshooting](#troubleshooting)

[tocend]: # (toc end)

## Project structure
The project consists of the DAVE™ specific files and folders, and an integrated git submodule from the OPTIGA™ Trust M hostcode [repository](https://github.com/Infineon/optiga-trust-m). This is a ready to work DAVE™ project prepared to demonstrate features of the OPTIGA™ Trust M security chip.
If you are looking for a Keil based project you can download and check out this [archive](https://github.com/Infineon/optiga-trust-m/releases/download/v3.00.2490/OPTIGA_Trust_M_V3_3.00.2490.zip)

[Top](#top)

## System Setup

This section explains the basic components required for the setup.

### System Overview

![](https://github.com/Infineon/Assets/raw/master/Pictures/optiga_trust_m3_evalkit_hw.jpg)

This system consists of the following components:
1. XMC4800 IoT Connectivity Kit v1.0 from 
    * The XMC4800 IoT Connectivity Kit is an evaluation board with XMC4800 Microcontroller from Infineon. For more information refer document [1].
    * It can connect to a WiFi access point using WiFi ESP click module.
    * It is used as a reference platform to simulate the Host.
    * It interacts with secure element via I2C.
2. My IoT Adapter
    * It acts as a gateway to add Shield2Go boards onto XMC4800 IoT Connectivity Kit V1.0. 
3. OPTIGA™ Trust M Security Shield2Go
    * Shield2Go board contains OPTIGA™ Trust M chip. It is compatible with Arduino Uno along with Infineon’s My IoT adapter.
 
The following interface/connection is done among the above components:
    * Micro USB data cable (with Data line) from PC is connected to XMC to supply power.

[Top](#top)

### Hardware Setup

#### Overall Setup

![](https://github.com/Infineon/Assets/raw/master/Pictures/OPTIGA_Trust_M_Eval_Kit%2002.jpg)

#### XMC4800 IoT Connectivity Kit

![](https://github.com/Infineon/Assets/raw/master/Pictures/optiga_trust_m_xmc4800iotkit_overview.jpg)

**XMC4800 IoT Connectivity kit Components**

| No | Item | Description
| ------------- | ----- | ----------- | 
| 1     | DC Supply| Power supply of 5V is provided by connecting to Micro USB connector. | 
| 2     | Arduino compatible connector | External interface to connect to Arduino Shields. | 
| 3     | mikroBUS socket  | Socket to connect to WiFi ESP click module from MikroElektronica. | 
| 4     | On-board debug probe  | Supports Serial Wire Debug and UART communication for debugging and logging purposes. | 

The pin headers for Arduino shields can be used for GPIOs or signal interface as well. Arduino compatible connector supports I2C, UART and SPI interfaces among others. 

**XMC4800 IoT Connectivity kit I2C Pin Information**

| No | Description| Pin
| ------------- | ----- | ----------- | 
| 1     | I2C SCL| P0.8 | 
| 2     | I2C SDA | P1.5 | 
| 3     | RST  | P0.6 |  

[Top](#top)

#### My IoT Adapter

The My IoT adapter is an evaluation board that allows users to easily combine different Shield2Go boards to Arduino compliant ecosystem, for fast evaluation of IoT systems. With its solderless connectors, it allows users to easily stack Shield2Go boards instead of soldering it. The shield design is derived from XMC2Go evaluation board.

![](https://github.com/Infineon/Assets/blob/master/Pictures/optiga_trust_m_myiot_adapter.png)

My IoT adapter features are as follows:
  * Provide power supply and connectivity for Shield2Go 
  * Level shifting handling capabilities between CMOS 3.3V and TTL 5V. 
    * Solder bridges to selectively deactivate level shifting. 
    * Additional pins enable setting the reference voltages for level shifting.
  * Separate power control switches for Socket 1 and Socket 2. Socket 1 is independently controllable while Socket 2 and 3 share pins to underlying control board.

[Top](#top)

#### Shield2Go Security OPTIGA™ Trust M

Shield2Go boards are equipped with featured Infineon ICs and provide a standardized form factor and pin layout, allowing a ‘plug and play’ approach for easy prototyping.

![](https://github.com/Infineon/Assets/blob/master/Pictures/OPTIGA_Trust_M_Shield2Go%2002.jpg)

The OPTIGA™ Trust M Shield2Go is equipped with OPTIGA™ Trust M security chip. It allows users to develop system solutions by combining Shield2Go with My IoT adapter and XMC.

_Note: Ensure no voltage supplied to any of the pins exceeds the abolsute maximum rating of Vcc + 0.3 V._

[Top](#top)

### Software Setup
 
* DAVE 4.4.2 and device feature 2.2.4, which can be downloaded from Infineon website. 
    * Link to download DAVE 4.4.2: [Dave Download](https://infineoncommunity.com/dave-download_ID645)
    * Note: The path where DAVE tool is extracted is henceforth referred to as <DAVE_PATH>.
* Segger J-Link tool v6.00 or greater for flashing software on XMC. 
    * Link to download Segger: J-Link tool [Download for Windows, Linux, Mac](https://www.segger.com/downloads/jlink/#J-LinkSoftwareAndDocumentationPack)
    * Link to download manual: J-Link manual [Download](https://www.segger.com/downloads/jlink/)
* Download and install [Tera Term](https://osdn.net/projects/ttssh2/releases/) (recommended)
* This repository either via a direct [Download](https://github.com/Infineon/getstarted-optiga-trust-m/releases) or a `git clone --recurse-submodules https://github.com/Infineon/getstarted-optiga-trust-m.git` command
* (optional) Build-in debugger on the board is sufficent enough for msot of use cases, however if you require more features we do recommend to use the [Segger Ozone J-Link debugger](https://www.segger.com/products/development-tools/ozone-j-link-debugger/) (the trial version is available)

[Top](#top)
## Using OPTIGA™ Trust M

### Quickstart

#### Flash the binary

1. Power up the kit by connecting Micro USB cable between PC and Debugger micro USB (**X101** Port on the board).
1. Run JFlashLite.exe from JLink installation folder. It shows a notice window. Click OK.
1. Click on **Device** to select a target device
    1. Select Infineon as Manufacturer and Device as XMC4800-2048, and then click OK
1. Select hex file (`bin/xmc4800_optiga_example.hex`) to be flashed under **Data File** and click on **Program Device**. It then shows the programming progress window.
1. Flash download completed

#### Logger setup

1. Connect the micro USB cable between PC and micro USB port (**X100** Port on the board).
1. Reset the XMC4800 by pressing the reset button.
1. Open Tera Trem and select the COM port with name “Communications Port”. 
    1. **Note: You might need to bind the Windows serial driver(usbser.sys) with USBD_VCOM device. For this you can point to the driver.inf file in the folder path:** `xmc4800_iot_kit\common\Dave\Generated\USBD_VCOM\inf\`
1. Configure COM port with 9600 8N1
1. Once connected, the terminal displays the text “Press any key to start example demonstration”.
1. The logs of the example execution are displayed along with status of each example as Passed or Failed
<details> <summary> Sample output with `optiga --selftest` command  </summary> 
  <img src="https://github.com/Infineon/Assets/raw/master/Pictures/optiga_trust_m_tera_term.jpg">
</details>

#### Available commands

* `optiga --selftest`     - run all tests at once with performance output
* `optiga --init`         - initialize optiga
* `optiga --deinit`       - de-initialize optiga
* `optiga --readdata`     - read data
* `optiga --writedata`    - write data
* `optiga --coprocid`     - read Co-processor UID
* `optiga --bind`         - binding host with optiga
* `optiga --hibernate`    - hibernate and restore
* `optiga --counter`      - update counter
* `optiga --protected`    - protected update
* `optiga --hash`         - hashing of data
* `optiga --prf`          - tls prf sha256
* `optiga --random`       - random number generation
* `optiga --ecckeygen`    - ecc key pair generation
* `optiga --ecdsasign`    - ecdsa sign
* `optiga --ecdsaverify`  - ecdsa sign and verify signature
* `optiga --ecdh`         - ecc diffie hellman
* `optiga --rsakeygen`    - rsa key pair generation
* `optiga --rsasign`     - rsa sign
* `optiga --rsaverify`    - rsa sign and verify signature
* `optiga --rsaencmsg`    - rsa encrypt message
* `optiga --rsaencsession`- rsa encrypt session
* `optiga --rsadecstore`  - rsa decrypt and store data on chip
* `optiga --rsaencexp`    - rsa decrypt and export data
* `optiga --ecbencdec`    - symmetric AES ECB mode encrypt and decrypt
* `optiga --cbcencdec`    - symmetric AES CBC mode encrypt and decrypt
* `optiga --cbcmacenc`    - symmetric AES CBC MAC mode encrypt
* `optiga --hmac`         - HMAC-SHA256 generation
* `optiga --hmacverify`   - Verify HMAC
* `optiga --hkdf`         - HKDF-SHA256 key dereviation
* `optiga --clrautostate` - clear auto state

[Top](#top)
## Advanced Setup
 
This section explains the steps to build and debug OPTIGA™ Trust M example application.

[Top](#top)
### Setting up DAVE™ IDE on PC 

1. Refer to the installation guide in <DAVE_PATH> to install DAVE™ on your PC.
2. Start DAVE™ from `<DAVE_PATH>\eclipse\DAVE.exe`.
3. Eclipse Launcher will pop-up. Select the workspace for DAVE™.

[Top](#top)
### Debug OPTIGA™ Trust M Example Application Project with DAVE™

1. Make the connections among XMC4800 IoT Connectivity Kit, My IoT Adapter and OPTIGA™ Shield2Go.
2. Power up the kit by connecting Micro USB cable between PC and Debugger micro USB port (**X100** Port on the board)
3. Import example application project into DAVE IDE, by navigating through **File** -> **Import**. In Import pop-up, select Existing Projects into Workspace under General and then click Next.
4. Browse to `<INSTALLDIR>\xmc4800_iot_kit\dave4` for Select root directory, select xmc4800_optiga_example and then click Finish. Note: please make sure the "Copy projects into workspace" option is **disabled**
![](https://github.com/Infineon/Assets/raw/master/Pictures/optiga_trust_m_howto_project_import.png)
5. Set example project as an active project by right-click on project and select **Set Active Project**
6. Select the build configuration by right-click on example project and then select **Build Configurations** -> **Set Active** -> **Debug**.
7. Build the project in debug configuration. It should be error free.
8. Before launching the debugger, ensure that values are properly updated for variables like jlink_gdbserver and jlink_path. Navigate through **Window **-> **Preferences **-> **Run/Debug** -> **String Substitution** and update values if there is a need.
9. Launch debugger for debug of example application by clicking on bug symbol.
![](https://github.com/Infineon/Assets/raw/master/Pictures/optiga_trust_m_howto_debug.png)
10. Create a debug configuration and then click on Debug.
![](https://github.com/Infineon/Assets/raw/master/Pictures/optiga_trust_m_howto_debug_2.png)
11. If Window prompts to confirm the perspective switch, check the Remember my decision, and click yes.
12. Start the debugger.
![](https://github.com/Infineon/Assets/raw/master/Pictures/optiga_trust_m_howto_debug_3.png)
13. Refer to the [Logger Setup section](#logger-setup) to setup the USB, but skip the "Reset the board" step

[Top](#top)
### Logger Control

By default only logging from example is enabled in the release package.
Further control for OPTIGA™ Trust M host code logging is available in [`optiga_lib_config.h.`](https://github.com/Infineon/optiga-trust-m/blob/master/optiga/include/optiga/optiga_lib_config.h#L108).
The macro OPTIGA_LIB_ENABLE_LOGGING provides complete control to enable/disable logging at host code. In addition, logging at UTIL, CRYPT, CMD and COMMS layer can be controlled using the following macros,
*  OPTIGA_LIB_ENABLE_UTIL_LOGGING
*  OPTIGA_LIB_ENABLE_CRYPT_LOGGING
*  OPTIGA_LIB_ENABLE_CMD_LOGGING
*  OPTIGA_LIB_ENABLE_COMMS_LOGGING
For Example,
1. To enable logging for only COMMS layer, enable OPTIGA_LIB_ENABLE_COMMS_LOGGING and disable rest all layer macros.
2. Build the project and run the project
![](https://github.com/Infineon/Assets/raw/master/Pictures/optiga_trust_m_getstarted_logger.png)

[Top](#top)
### Shielded Connection Control
To execute the example without shielded connection, disable the macro OPTIGA_COMMS_SHIELDED_CONNECTION in file [`optiga_lib_config.h.`](https://github.com/Infineon/optiga-trust-m/blob/2901c61ef47d88c4eec01fc3ce23cd779e355224/optiga/include/optiga/optiga_lib_config_m_v3.h#L102)


[Top](#top)
## Troubleshooting

| No | Problem | Possible reason | Solution |
| ------------- |-----| ----------- | ---- |
| 1     | The Green LED light is “Not on” on XMC4800 IoT Connectivity kit  | No power supply | Verify that power supply is connected to XMC4800 IoT Connectivity kit. |
| 2     | CDC port not detected  | SW not correctly installed | In device manager, click on the malfunctioning CDC port and select to manually install the driver. Provide directory as C:\ for path to install the driver. |
| 3     | Problem occurred during debugger launch   | Debug session is not terminated | Go to Debug perspective and remove all terminated launches. |

[Top](#top)
