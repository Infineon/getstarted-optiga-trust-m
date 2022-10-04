# Get Started with OPTIGA™ Trust M IoT Security Development Kit

<img src="https://user-images.githubusercontent.com/12692378/182646635-f5963c06-bf5e-46f5-a6e7-ac2c38270e19.png" width="450" height="300"></a>

## Description

This repository contains instructions on how to get started with the [OPTIGA™ Trust M IoT Security Development Kit](https://www.infineon.com/cms/en/product/evaluation-boards/optiga-trust-m-iot-kit/) ( `CYSBSYSKIT-DEV-01` ). The kit comes pre-flashed and is ready to use. It will connect to AWS IoT with crypto support from [OPTIGA&trade; Trust M](https://www.infineon.com/cms/de/product/security-smart-card-solutions/optiga-embedded-security-solutions/optiga-trust/optiga-trust-m-sls32aia/). We already linked the kit to the Infineon AWS IoT account and a public dashboard is available to show the live data. If you push the user button on the board live data is sent from the kit which can be seen on the dashboard.

You can find more information about the security chip on the product [web page](https://www.infineon.com/cms/de/product/security-smart-card-solutions/optiga-embedded-security-solutions/optiga-trust/optiga-trust-m-sls32aia/)

## Table of content

- [Step 1. Unpack the Kit](#step-1-kit-content)
- [Step 2. Experience AWS IoT MQTT Demo](#step-2-experience-the-aws-iot-mqtt-demo)
    - [Re-flash the Kit with the AWS IoT MQTT Demo Application](#re-flash-the-kit-with-the-aws-iot-mqtt-demo-application)
- [Step 3. Experience CIRRENT™ Cloud ID](#step-3-experience-cirrent™-cloud-id)
- [Step 4. Develop your own ModusToolbox™ Application for OPTIGA Trust M](#step-4-develop-your-own-modustoolbox™-application-for-optiga™-trust-m)
- [Support material](#support-material)
- [Troubleshooting](#troubleshooting)

## Step 1. Kit content

The Kit contains:

1. A short Instruction sheet 
2. A CIRRENT™ Cloud ID sample registration QR Code
2. Infineon Rapid IoT connect developer kit with a preloaded AWS IoT MQTT Demo ( `CYSBSYSKIT-DEV-01` )
3. Micro USB cable

A Short Youtube video of a kit unpack experience

[![OPTIGA™ Trust M IoT Security Development Kit](https://img.youtube.com/vi/TSQBHB7JaWg/0.jpg)](https://www.youtube.com/watch?v=TSQBHB7JaWg)


## Step 2. Experience the AWS IoT MQTT Demo
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

    <img src="https://user-images.githubusercontent.com/12692378/182862492-bad98156-cf8a-442f-bfa0-3b503fe20034.png" width="300" height="357"></a>

### Re-flash the Kit with the AWS IoT MQTT Demo Application 

1. Install the ModusToolbox™ as described in the [Step 4](#step-4-develop-your-own-modustoolbox™-application-for-optiga™-trust-m)
2. Go to the Windows Start menu and find the `modus-shell` tool, open it
3. Go to the folder where you have downloaded the following application image - [mtb-example-optiga-mqtt-client-demo.hex](https://github.com/Infineon/getstarted-optiga-trust-m/raw/main/psoc62_secure_development_kit/mtb-example-optiga-mqtt-client-demo.hex) (right-click and Save as...)
4. Run the following comamnd 
```
<path_to_the_ModusToolbox>/ModusToolbox/tools_2.4/openocd/bin/openocd -s <path_to_the_ModusToolbox>/ModusToolbox/tools_2.4/openocd/scripts -c "source [find interface/kitprog3.cfg]; ; source [find target/psoc6_2m.cfg]; psoc6 allow_efuse_program off; psoc6 sflash_restrictions 1; program mtb-example-optiga-mqtt-client-demo.hex verify reset exit;"
```
where `<path_to_the_ModusToolbox>` is the installation path for the ModusToolbox™


## Step 3. Experience CIRRENT™ Cloud ID

CIRRENT™ Cloud ID is a unique  approach to device-to-cloud authentication, making it easier, more cost effective, and more secure by automating cloud provisioning of device certificates.  In the past, device authentication has been an expensive, custom IT process on the manufacturing line. With Cloud ID, it can now be a simple, robust, flexible, and secure cloud-to-cloud provisioning process.

Each OPTIGA™ Trust M IoT Security Development Kit comes with a Reel Registration QR Code which shall provide an initial experience for claiming a real OPTIGA™ Trust M reel ordered from Infineon or its distribution partners. The Figure below depicts a Sample Code

<img src="https://user-images.githubusercontent.com/12692378/182866136-0ed356cf-7dbf-4cca-9d75-d52a97fe0e6c.png" width="396" height="300"></a>

Please mark your QR Code as it's uniquely identifies your board and can be used to retrive the certificate stored on the OPTIGA Trust M device as part of the step-by-step guidance. The latter demonstrates how to use that QR code and get your certificate in the [Steps to complete the virtual developer kit](https://documentation.infineon.com/html/cirrent-support-documentation/en/latest/cid/quick-start-cloud-id-virtual-dev-kit.html?_ga=2.12903347.546913535.1659539165-201647719.1625866144&_gac=1.150676036.1657878950.CjwKCAjwoMSWBhAdEiwAVJ2ndt4HH3aEUiRkYC1b1-ZXCXhuE9XQR2hSvms_0YGrF-LGvR1xmGyZbhoCBPsQAvD_BwE#steps-to-complete-the-virtual-developer-kit) of the official **CIRRENT™ Cloud ID Quick Start Guide**

Find more information about CIRRENT™ Cloud ID on the [official product page](https://www.infineon.com/cms/en/design-support/service/cloud/cirrent-cloud-id/)

## Step 4. Develop your own ModusToolbox™ Application for OPTIGA™ Trust M 

[Infineon ModusToolbox™](https://www.infineon.com/cms/en/design-support/tools/sdk/modustoolbox-software/) is a collection of easy-to-use software and tools enabling rapid development of Infineon MCUs, covering applications from embedded sense and control to wireless and cloud-connected systems using AIROC™ Wi-Fi, AIROC™ Bluetooth® and AIROC™ Wi-Fi and Combo devices.
In order to experience all available code examples demonstrating the usage of OPTIGA™ Trust M on the IoT Security Development Kit you need to download and install the software. Please refer for this to the followig documents:

1. [ModusToolbox™ Installation Guide](https://www.infineon.com/cms/en/design-support/tools/sdk/modustoolbox-software/#!?fileId=8ac78c8c7d718a49017d99a20342316d)
2. [Eclipse IDE for ModusToolbox™ Quick Start Guide](https://www.infineon.com/cms/en/design-support/tools/sdk/modustoolbox-software/#!?fileId=8ac78c8c7d718a49017d99a11923313b)

There are currently three released Code Examples for OPTIGA™ Trust M:

1. [OPTIGA™ Trust M: Cryptography](https://github.com/Infineon/mtb-example-optiga-crypto)
2. [OPTIGA™ Trust M: MQTT Client](https://github.com/Infineon/mtb-example-optiga-mqtt-client)
3. [OPTIGA™ Trust M: Power management](https://github.com/Infineon/mtb-example-optiga-power-management)
4. [OPTIGA™ Trust M: Data and certificates management](https://github.com/Infineon/mtb-example-optiga-data-management)

In the nutshell, the sequence below demonstrates generic steps to make the code example run, for other than **[OPTIGA™ Trust M: Cryptography](https://github.com/Infineon/mtb-example-optiga-crypto)** examples the process is similar apart from the example name. For settings and individual examples steps please refer to their README's on GitHub

* Start Eclipse IDE for ModusToolbox™

* Create **New Application**: in Quick Panel click on "New application"

![image](https://user-images.githubusercontent.com/39588888/154308211-ab27a95e-35c2-4350-ac98-41d4472b4d11.png)

* Choose your BSP:
Type "DEV-01" into the dialog and choose **CYSBSYSKIT-DEV-01**.
Click on **Next** to continue.

![image](https://user-images.githubusercontent.com/39588888/154307440-1f58615d-bbaf-4a1f-8d65-24b8871d7dc7.png)

* Choose Peripherals and find the **OPTIGA Cryptography** example.
![trustm_iot_sdk_mtb_crypto](https://user-images.githubusercontent.com/12692378/182874698-731bdb1d-67c7-49b9-9bbe-779590a146e8.png)

 * Compile and run. See the [README.md](https://github.com/Infineon/mtb-example-optiga-crypto/blob/master/README.md) for more information about the example


## Support material

![board_top_bottom_view](https://user-images.githubusercontent.com/12692378/183075607-e1f003da-f0a9-4e33-97fc-7c2db4c32fea.png)

* [Rapid IoT Kit Quick Start Guide (preliminary version)](https://github.com/Infineon/getstarted-optiga-trust-m/files/9260685/002-30996.REV.B.WEB.PDF.V2.pdf)
* [Rapid IoT Kit Schematics (preliminary version)](https://github.com/Infineon/getstarted-optiga-trust-m/files/9260692/schematics.pdf)

## Troubleshooting
In case you run into a problem and no live data can be seen on the dashboard follow the steps below to see where things go wrong.
* Make sure that the WiFi hotspot is open (scan with your computer to see the available SSID)
* Make sure there is no typo in the password
* Be sure that the USB port that you use can supply enough power to run the board (try another port)
* If you still run into problems download teraterm and connect to the virtual Com port of the board to see the output. Use this output and create an accident on our [Community Forum](https://community.infineon.com/t5/OPTIGA-Trust/bd-p/OPTIGA)
