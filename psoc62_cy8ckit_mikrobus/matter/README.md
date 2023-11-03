# Get Started with OPTIGA™ Trust M MTR and the PSoC62S2 Pioneer Kit

![PSoC62 CY8CKIT and OPTIGA Trust M MTR](/assets/psoc62_matter_kit.png)

## Description

This repository contains instructions on how to get started with the [OPTIGA™ Trust M MTR Shield](https://www.infineon.com/optiga-trust-m-mtr-shield) together with the [PSoC62S2 Pioneer Kit](https://www.infineon.com/cms/en/product/evaluation-boards/cy8ckit-062s2-43012) ( `CY8CKIT-062S2-43012`). The goal is to replicate a Matter Smart-Lock application.

The PSoC6 board needs to be flashed with a specific software image. Then it will use the pre-provisioned Matter Development Credentials on the [OPTIGA&trade; Trust M MTR](https://www.infineon.com/optiga-trust-m-mtr) to attestate itself as a valid Matter Smart-Lock. The device can be added to your Smart-Home ecosystem via am Matter enabled Smart-Home hub and can then be controlled via your phone. If you "unlock" the Smart-Lock on the controller, the LED on the PSoC Board will turn off.

You can find more information about the security chip on the product [web page](https://www.infineon.com/optiga-trust-m-mtr)

## Table of content

- [Get Started with OPTIGA™ Trust M MTR and the PSoC62S2 Pioneer Kit](#get-started-with-optiga-trust-m-mtr-and-the-psoc62s2-pioneer-kit)
  - [Description](#description)
  - [Table of content](#table-of-content)
  - [Step 1. Kit content](#step-1-kit-content)
  - [Step 2. Flash Kit with pre-compiled Matter Application](#step-2-flash-kit-with-pre-compiled-matter-application)
  - [Step 3. Experience the Matter Demo](#step-3-experience-the-matter-demo)
    - [Demo Setup](#demo-setup)
    - [How it works](#how-it-works)
  - [Step 4. Retrieve Matter Productive Credentials from Kudelski Keystream](#step-4-retrieve-matter-productive-credentials-from-kudelski-keystream)
    - [Retrieval Process](#retrieval-process)
    - [Late-stage Provisioning](#late-stage-provisioning)
  - [Step 5. Develop your own Matter Application for OPTIGA™ Trust M MTR](#step-5-develop-your-own-matter-application-for-optiga-trust-m-mtr)
  - [Support material](#support-material)
  - [Troubleshooting](#troubleshooting)

## Step 1. Kit content

The Kit consists of 3 separate pieces of Hardware:

1. PSoC62S2 Pioneer Kit: [CY8CKIT-062S2-43012](https://www.infineon.com/cms/en/product/evaluation-boards/cy8ckit-062s2-43012)
2. [OPTIGA&trade; Trust Adapter](https://www.infineon.com/optiga-trust-adapter)
3. [OPTIGA&trade; Trust M MTR Shield](https://www.infineon.com/optiga-trust-m-mtr-shield)

You will additionally need a Matter enabled smart-home hub to translate the BLE commissioning signal to your phone and add the "Smart-Lock" to your home fabric.

<!-- A Short Youtube video of the kit unpack experience:

TODO: Change to Link to Video once it exists!
[![OPTIGA™ Trust M MTR Experience](https://img.youtube.com/vi/TSQBHB7JaWg/0.jpg)](https://www.youtube.com/watch?v=TSQBHB7JaWg) -->


## Step 2. Flash Kit with pre-compiled Matter Application

1. Download the attached [chip-psoc6-lock-example.hex](assets/chip-psoc6-lock-example.hex) (right-click and Save as...) hex-file do your PC. This hex-file is a pre-compiled image for the PSoC62S2 Board, based on the Matter SDK v1.1. It will use the Matter credentials stored on the OPTIGA&trade; Trust MTR.
2. Install the ModusToolbox™ toolset:

> [Infineon ModusToolbox™](https://www.infineon.com/cms/en/design-support/tools/sdk/modustoolbox-software/) is a collection of easy-to-use software and tools enabling rapid development of Infineon MCUs, covering applications from embedded sense and control to wireless and cloud-connected systems using AIROC™ Wi-Fi, AIROC™ Bluetooth® and AIROC™ Wi-Fi and Combo devices.
> In order to experience all available code examples demonstrating the usage of OPTIGA™ Trust M and be able to flash the HEX Image to your kit, you need to download and install the software. Please refer for this to the followig documents:
> [ModusToolbox™ Installation Guide](https://www.infineon.com/cms/en/design-support/tools/sdk/modustoolbox-software/#!?fileId=8ac78c8c7d718a49017d99a20342316d)

3. Go to the Windows Start menu and find the `modus-shell` tool, open it
4. Go to the folder where you have downloaded the hex-file.
5. Run the following command:

```shell
<path_to_the_ModusToolbox>/ModusToolbox/tools_3.1/openocd/bin/openocd -s <path_to_the_ModusToolbox>/ModusToolbox/tools_3.1/openocd/scripts -c "source [find interface/kitprog3.cfg]; ; source [find target/psoc6_2m.cfg]; psoc6 allow_efuse_program off; psoc6 sflash_restrictions 1; program chip-psoc6-lock-example.hex verify reset exit;"
```

where `<path_to_the_ModusToolbox>` is the installation path for the ModusToolbox™.

Your PSoC62S2 Pioneer Kit should now be flashed with the application image to run as Matter v1.1 Smart-Lock Device.
<!-- 
1. Create a Wi-Fi hotspot with the following credentials: SSID - **Infineon**, Password - **tischtennis**
    - Go to the **Settings** of your smartphone
        - Android: Select **Connections** -> Select **Mobile Hotspot and Tethering** -> Turn **Mobile Hotspot** on (switch) -> Put the **Network** name: _Infineon_ and **Password**: _tischtennis_, use 2.4 GHz for the connection
        - iOS (1/2): Select **General** -> Select **About** -> Select **Name** -> Put the name: Infineon
        - iOS (2/2): Select **Personal Hotspot** -> Turn **Allow Others to Join** on and set **Wi-Fi Password** to be _tischtennis_
2. Connect the Board to a power source using a micro USB cable comming with the Kit as the figure below depicts (marked as **1**)

    ![trustm_iot_sdk_mqtt_demo_1](https://user-images.githubusercontent.com/12692378/182861562-c4139f77-95c5-4f03-b5c7-aba55d021ed9.png)

3. Wait for 20 seconds, in case you use your smartphone as the hotspot your phone will highlight if the board connects

4. Scan with your smartphone the QR Code on the Board (marked as **2** on the Figure above)

5. Push the user button (labeled: USR_BTN) that you can find just down left from the QR code (marked as **3** on the Figure above)

6. If you push the button a few times you will see the button status is reflected in the graph of the dashboard.

    <img src="https://user-images.githubusercontent.com/12692378/182862492-bad98156-cf8a-442f-bfa0-3b503fe20034.png" width="300" height="357"></a> -->

## Step 3. Experience the Matter Demo

### Demo Setup

### How it works

## Step 4. Retrieve Matter Productive Credentials from Kudelski Keystream

### Retrieval Process
<!-- CIRRENT™ Cloud ID is a unique  approach to device-to-cloud authentication, making it easier, more cost effective, and more secure by automating cloud provisioning of device certificates.  In the past, device authentication has been an expensive, custom IT process on the manufacturing line. With Cloud ID, it can now be a simple, robust, flexible, and secure cloud-to-cloud provisioning process.

Each OPTIGA™ Trust M IoT Security Development Kit comes with a Reel Registration QR Code which shall provide an initial experience for claiming a real OPTIGA™ Trust M reel ordered from Infineon or its distribution partners. The Figure below depicts a Sample Code

<img src="https://user-images.githubusercontent.com/12692378/182866136-0ed356cf-7dbf-4cca-9d75-d52a97fe0e6c.png" width="396" height="300"></a>

Please mark your QR Code as it's uniquely identifies your board and can be used to retrive the certificate stored on the OPTIGA Trust M device as part of the step-by-step guidance. The latter demonstrates how to use that QR code and get your certificate in the [Steps to complete the virtual developer kit](https://documentation.infineon.com/html/cirrent-support-documentation/en/latest/cid/quick-start-cloud-id-virtual-dev-kit.html?_ga=2.12903347.546913535.1659539165-201647719.1625866144&_gac=1.150676036.1657878950.CjwKCAjwoMSWBhAdEiwAVJ2ndt4HH3aEUiRkYC1b1-ZXCXhuE9XQR2hSvms_0YGrF-LGvR1xmGyZbhoCBPsQAvD_BwE#steps-to-complete-the-virtual-developer-kit) of the official **CIRRENT™ Cloud ID Quick Start Guide**

Find more information about CIRRENT™ Cloud ID on the [official product page](https://www.infineon.com/cms/en/design-support/service/cloud/cirrent-cloud-id/) -->

### Late-stage Provisioning

We have prepared a separate application guide for the late-stage provisioning mechanism. For this, you will need a Raspberry Pi as provisioning harness.

Find the Application Guide here: [www.github.com/Infineon/linux-optiga-trust-m/matter_provisioning](https://github.com/Infineon/linux-optiga-trust-m/tree/matter_provisioning/scripts/matter_provisioning)

<!-- Once we have a version 2 of Trust M MTR, add python-provisioning option! -->

## Step 5. Develop your own Matter Application for OPTIGA&trade; Trust M MTR

Developing a Matter application most likely starts with the Matter SDK. To start developing a Matter Application for the OPTIGA&trade; Trust M MTR together with PSoC6, see the [CHIP Matter SDK Repository](https://github.com/project-chip/connectedhomeip/tree/master/examples/lock-app/infineon/psoc6).


## Support material

<!-- ![board_top_bottom_view](https://user-images.githubusercontent.com/12692378/183075607-e1f003da-f0a9-4e33-97fc-7c2db4c32fea.png)

* [Rapid IoT Kit Quick Start Guide (preliminary version)](https://github.com/Infineon/getstarted-optiga-trust-m/files/9260685/002-30996.REV.B.WEB.PDF.V2.pdf)
* [Rapid IoT Kit Schematics (preliminary version)](https://github.com/Infineon/getstarted-optiga-trust-m/files/9260692/schematics.pdf) -->

## Troubleshooting
<!-- In case you run into a problem and no live data can be seen on the dashboard follow the steps below to see where things go wrong.
* Make sure that the WiFi hotspot is open (scan with your computer to see the available SSID)
* Make sure there is no typo in the password
* Be sure that the USB port that you use can supply enough power to run the board (try another port)
* If you still run into problems download teraterm and connect to the virtual Com port of the board to see the output. Use this output and create an accident on our [Community Forum](https://community.infineon.com/t5/OPTIGA-Trust/bd-p/OPTIGA) -->
