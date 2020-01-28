# OPTIGA&trade; Trust M Get Started Guide

## Description

This repository contains one of Application Notes for [OPTIGA™ Trust M](https://github.com/Infineon/optiga-trust-m) security chip.
Your evaluation kit comes ready to use with an interactive shell to understand the basic functions offered by the security chip.
Below you can find the instructions on how to compile the code yourself and flash your evaluation kit (optional).

* You can find more information about the security chip in the core [repository](https://github.com/Infineon/optiga-trust-m)
* Below you can find the Quickstart guide, on wiki a [step-by-step guidance](https://github.com/Infineon/getstarted-optiga-trust-m/wiki)

Note: Please be aware that a direct download of the repository as zip **will NOT work** please see section [Hardware and Software](#hardware-and-software) below for details.

## Summary
In this guide you may find the following steps:
* How to import this project into the DAVE™ IDE
* How to build the software and flash the development board (described below)
* How to run shell user interface
* How to debug and run examples for all Tool Box functions

## Hardware and Software

* This get started guide uses the OPTIGA™ Trust M evaluation kit

<img src="https://github.com/Infineon/Assets/raw/master/Pictures/OPTIGA_Trust_M_Eval_Kit%2002.jpg" width="600">

* (optional, required for debugging) DAVE 4.4.2 and device feature 2.2.4, which can be downloaded from Infineon website. 
    * Link to download DAVE 4.4.2: [Dave Download](https://infineoncommunity.com/dave-download_ID645)
    * Note: The path where DAVE tool is extracted is henceforth referred to as <DAVE_PATH>.
*	Segger J-Link tool v6.00 or greater for flashing software on XMC. 
    * Link to download Segger: J-Link tool [Download for Windows, Linux, Mac](https://www.segger.com/downloads/jlink/#J-LinkSoftwareAndDocumentationPack)
    * Link to download manual: J-Link manual [Download](https://www.segger.com/downloads/jlink/)
* Download and install [Tera Term](https://osdn.net/projects/ttssh2/releases/) (recommended)
* Download this repository either via a direct [Download](https://github.com/Infineon/getstarted-optiga-trust-m/releases) or clone using `git clone --recursive`.

## Quickstart

### Flash the binary

1. Power up the kit by connecting Micro USB cable between PC and Debugger micro USB (**X101** Port on the board).
1. Run JFlashLite.exe from JLink installation folder. It shows a notice window. Click OK.
1. Click on **Device** to select a target device
    1. Select Infineon as Manufacturer and Device as XMC4800-2048, and then click OK
1. Select hex file (`bin/xmc4800_optiga_example.hex`) to be flashed under **Data File** and click on **Program Device**. It then shows the programming progress window.
1. Flash download completed

### Logger setup

1. Connect the micro USB cable between PC and micro USB (**X100** Port on the board).
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
* `optiga --bind`         - binding host with optiga
* `optiga --hibernate`    - hibernate and restore
* `optiga --counter`      - update counter
* `optiga --protected`    - protected update
* `optiga --hash`         - hashing of data
* `optiga --prf`          - tls pfr sha256
* `optiga --random`       - random number generation
* `optiga --ecckeygen`    - ecc key pair generation
* `optiga --ecdsasign`    - ecdsa sign
* `optiga --ecdsaverify`  - ecdsa sign and verify signature
* `optiga --ecdh`         - ecc diffie hellman
* `optiga --rsakeygen`    - rsa key pair generation
* `optiga --rsaasign`     - rsa sign
* `optiga --rsaverify`    - rsa sign and verify signature
* `optiga --rsaencmsg`    - rsa encrypt message
* `optiga --rsaencsession`- rsa encrypt session
* `optiga --rsadecstore`  - rsa decrypt and store data on chip
* `optiga --rsaencexp`    - rsa decrypt and export data

## Compile and Debug

The guidance on how to compile and debug the setup you can find [here](https://github.com/Infineon/getstarted-optiga-trust-m/wiki)


## Contributing
Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
