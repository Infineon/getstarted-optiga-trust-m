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
  - [Step 4. Retrieve Matter Productive Credentials from Kudelski Keystream](#step-4-retrieve-matter-productive-credentials-from-kudelski-keystream)
  - [Step 5. Develop your own Matter Application for OPTIGA™ Trust M MTR](#step-5-develop-your-own-matter-application-for-optiga-trust-m-mtr)
  - [Support material](#support-material)
  - [Troubleshooting](#troubleshooting)

## Step 1. Kit content

The Kit consists of 3 separate pieces of Hardware:

1. PSoC62S2 Pioneer Kit: [CY8CKIT-062S2-43012](https://www.infineon.com/cms/en/product/evaluation-boards/cy8ckit-062s2-43012)
2. [OPTIGA&trade; Trust Adapter](https://www.infineon.com/optiga-trust-adapter)
3. [OPTIGA&trade; Trust M MTR Shield](https://www.infineon.com/optiga-trust-m-mtr-shield)

You will additionally need a Matter enabled smart-home hub to translate the BLE commissioning signal to your phone and add the "Smart-Lock" to your home fabric.
A list of tested Hubs is:

- Raspberry Pi 4B running the [CHIP Tool](https://github.com/project-chip/connectedhomeip/blob/master/docs/guides/chip_tool_guide.md)
- [Apple HomePod Mini](https://www.apple.com/de/homepod-mini/), Needs an iPhone or iPad as controller
- [Google Nest Mini, Gen 2](https://store.google.com/de/product/google_nest_mini)

<!-- A Short Youtube video of the kit unpack experience:

TODO: Change to Link to Video once it exists!
[![OPTIGA™ Trust M MTR Experience](https://img.youtube.com/vi/TSQBHB7JaWg/0.jpg)](https://www.youtube.com/watch?v=TSQBHB7JaWg) -->

## Step 2. Flash Kit with pre-compiled Matter Application

1. Download the attached [chip-psoc6-lock-example.hex](/assets/chip-psoc6-lock-example.hex) (right-click and Save as...) hex-file do your PC. This hex-file is a pre-compiled image for the PSoC62S2 Board, based on the Matter SDK v1.1. It will use the Matter credentials stored on the OPTIGA&trade; Trust MTR.
2. Install the ModusToolbox™ toolset:

> [Infineon ModusToolbox™](https://www.infineon.com/cms/en/design-support/tools/sdk/modustoolbox-software/) is a collection of easy-to-use software and tools enabling rapid development of Infineon MCUs, covering applications from embedded sense and control to wireless and cloud-connected systems using AIROC™ Wi-Fi, AIROC™ Bluetooth® and AIROC™ Wi-Fi and Combo devices.
> In order to experience all available code examples demonstrating the usage of OPTIGA™ Trust M and be able to flash the HEX Image to your kit, you need to download and install the software. Please refer for this to the followig documents:
> [ModusToolbox™ Installation Guide](https://www.infineon.com/cms/en/design-support/tools/sdk/modustoolbox-software/#!?fileId=8ac78c8c7d718a49017d99a20342316d)

3. Go to the Windows Start menu and find the `modus-shell` tool, open it
4. Go to the folder where you have downloaded the hex-file.
5. Connect the PSoC62 Pioneer Kit to your PC via the Micro-USB Cable.
6. Assuming you have installed Modustoolbox version 3.1 in the default location, run the following command:

```shell
~/ModusToolbox/tools_3.1/openocd/bin/openocd -s ~/ModusToolbox/tools_3.1/openocd/scripts -c "source [find interface/kitprog3.cfg]; ; source [find target/psoc6_2m.cfg]; psoc6 allow_efuse_program off; psoc6 sflash_restrictions 1; program chip-psoc6-lock-example.hex verify reset exit;"
```

If your installation directory or MTB version differs, replace `<~>` with the installation path for the ModusToolbox™ and `<tools_3.1>` with the correct version.

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
Unfold one of the following sections, depending on your platform setup:

<details>
<summary>RPi 4: Commissioning via CHIP Tool</summary>

> ℹ
>
> For the [Original see here](https://github.com/project-chip/connectedhomeip/tree/master/examples/lock-app/infineon/psoc6#commissioning-and-cluster-control)
> 
> The guide assumes that you have a complete installation of the Matter SDK on your Raspberry Pi 4B.

### Setting up Chip tool

Once PSoC6 is up and running, we need to set up chip-tool on Raspberry Pi 4 to
perform commissioning and cluster control.

-   Set up python controller.

           $ cd {path-to-connectedhomeip}
           $ ./scripts/examples/gn_build_example.sh examples/chip-tool out/debug

-   Execute the controller.

           $ ./out/debug/chip-tool

### Commissioning over BLE

Run the built executable and pass it the discriminator and pairing code of the
remote device, as well as the network credentials to use.

         $ ./out/debug/chip-tool pairing ble-wifi 1234 ${SSID} ${PASSWORD} 20202021 3840
         Parameters:
         1. Discriminator: 3840
         2. Setup-pin-code: 20202021
         3. Node ID: 1234 (you can assign any node id)
         4. SSID : Wi-Fi SSID
         5. PASSWORD : Wi-Fi Password

#### Notes

Raspberry Pi 4 BLE connection issues can be avoided by running the following
commands. These power cycle the BlueTooth hardware and disable BR/EDR mode.

          $ sudo btmgmt -i hci0 power off
          $ sudo btmgmt -i hci0 bredr off
          $ sudo btmgmt -i hci0 power on

### Cluster control

-   After successful commissioning, use the OnOff cluster command to toggle
    device between On or Off states.

    `$ ./out/debug/chip-tool onoff on 1234 1`

    `$ ./out/debug/chip-tool onoff off 1234 1`

-   Cluster OnOff can also be done using the `USER_BTN1` button on the board.
    This button is configured with `APP_LOCK_BUTTON` in `include/AppConfig.h`.
    Press `USER_BTN1` on the board to toggle between lock and unlock states. The
    Lock/Unlock status of door can be observed with 'LED9' on the board. This
    LED is configured with `LOCK_STATE_LED` in `include/AppConfig.h`.

</details>

<details>
<summary>Apple Homepod Mini: Commissioning via Apple Home</summary>

### Platform Setup
Apart from the flashed PSoC62 Pioneer Kit + OPTIGA&trade; Trust M MTR you will need a  Matter enabled Apple Hub (e.g. HomePod Mini, HomePod 2nd Gen) and an iPhone or iPad with iOS 16.1 or later to connect to the Apple Smart-home Hub.

Add the Apple HomePod to your Smart-Home system and WiFi. Complete the setup as instructed by Apple and the Home app.

### Add Device to Home

Connect the PSoC62 Pioneer Kit to your PC using the included micro USB cable. Start tracing the UART log-output via your favorite terminal (e.g. PuTTY, TeraTerm) and the virtual COM Port.

Reset the PSoC62 Pioneer Kit once by pressing the black "XRES" button.

The full output trace can be seen [below](#traces).

```plain
CHIP:DL: Device Configuration:
CHIP:DL:   Serial Number: TEST_SN
CHIP:DL:   Vendor Id: 65521 (0xFFF1)
CHIP:DL:   Product Id: 32774 (0x8006)
CHIP:DL:   Product Name: P6-CYW43012 Lock
CHIP:DL:   Hardware Version: 43012
CHIP:DL:   Setup Pin Code (0 for UNKNOWN/ERROR): 20202021
CHIP:DL:   Setup Discriminator (0xFFFF for UNKNOWN/ERROR): 3840 (0xF00)
CHIP:DL:   Manufacturing Date: (not set)
CHIP:DL:   Device Type: 10 (0xA)
CHIP:SVR: SetupQRCode: [MT:8IXS142C00KA0648G00]
CHIP:SVR: Copy/paste the below URL in a browser to see the QR Code:
CHIP:SVR: https://project-chip.github.io/connectedhomeip/qrcode.html?data=MT%3A8IXS142C00KA0648G00
CHIP:SVR: Manual pairing code: [34970112332]
CHIP:DL: Long dispatch time: 441 ms, for event type 2
CHIP:DL: CHIPoBLE advertising started
CHIP:DL: BLEManagerImpl::SetAdvertisingData err:Success
```

Essential is the URL line pointing to the QR Code for the Device Commissioning phase: [https://project-chip.github.io/connectedhomeip/qrcode.html?data=MT%3A8IXS142C00KA0648G00](https://project-chip.github.io/connectedhomeip/qrcode.html?data=MT%3A8IXS142C00KA0648G00)

Open this URL and Scan the presented QR Code via your iPhone, after clicking "Add Accessory" in your Apple Home App:

![iPhone: Add Matter Accessory](/assets/iphone_matter_onboarding.png)

You will now see additional logging output being generated by the PSoC62 Kit, as it now enters the Device Attestation Phase. In parallel, follow the instructions in the Apple Home App to add the new Matter Accessory to your Matter Smart Home.

> ℹ
> The Home App will ask you, if you want to add the Device even though the "Device has not been certified to work with your home". Press "Add Anyway", as this is related to the Matter Development Credentials, which are pre-provisioned to the OPTIGA Trust M MTR Shield. As soon as you provision your productive credentials, this message will not show anymore.

### Control Device

You can now "lock" and "unlock" the PSoC62 Kit via your Apple Home App.

- "Unlocked" State is when the User LED (red) is off
- "Locked" State is when the User LED (red) is on

The device will automatically "lock" itself again after a certain time.

</details>

<details>
<summary>Google Nest Mini: Commissioning via Google Home</summary>

### Platform Setup

Apart from the flashed PSoC62 Pioneer Kit + OPTIGA&trade; Trust M MTR you will need a Matter enabled Google Nest (e.g. Nest Mini, Nest Hub) and an Android Phone or Tablet with Android 9.0 or later.

Add the Google Nest to your Smart-Home system and WiFi. Complete the setup as instructed by Google and the Home app.

### Add VID to your Google Developer Console

Google Home only allows Matter devices, which are already registered in the Matter Distributed Compliance Ledger.
One can however add development devices in the Google Developer Console. 

Go to https://console.home.google.com/ and sign in with a Google Account. This must be the same account as the one being used on the Android device and connected to your Smart Home.

Create a new Project or open an existing one.

Follow the steps from "Resources" to "Develop". Then, in the "Setup" field, choose a product name like "smartlock".

![Google Home Console: Add Test Device](/assets/google_home_console.png)

The Device type must be set to `Lock`.

The Vendor-ID (VID) must be set to "Test-VID" with the value `0xFFF1`.

The Product ID (PID) must be set to `0x8006`.

Press "Save and Continue" and follow the remaining steps. Skip the "Field Trial" and "Certify" and directly go to "Launch".

Your Google Home Account should now be ready to accept the Smart Lock.

### Add Device to Home

Connect the PSoC62 Pioneer Kit to your PC using the included micro USB cable. Start tracing the UART log-output via your favorite terminal (e.g. PuTTY, TeraTerm) and the virtual COM Port.

Reset the PSoC62 Pioneer Kit once by pressing the black "XRES" button.

The full output trace can be seen [below](#traces).

```plain
CHIP:DL: Device Configuration:
CHIP:DL:   Serial Number: TEST_SN
CHIP:DL:   Vendor Id: 65521 (0xFFF1)
CHIP:DL:   Product Id: 32774 (0x8006)
CHIP:DL:   Product Name: P6-CYW43012 Lock
CHIP:DL:   Hardware Version: 43012
CHIP:DL:   Setup Pin Code (0 for UNKNOWN/ERROR): 20202021
CHIP:DL:   Setup Discriminator (0xFFFF for UNKNOWN/ERROR): 3840 (0xF00)
CHIP:DL:   Manufacturing Date: (not set)
CHIP:DL:   Device Type: 10 (0xA)
CHIP:SVR: SetupQRCode: [MT:8IXS142C00KA0648G00]
CHIP:SVR: Copy/paste the below URL in a browser to see the QR Code:
CHIP:SVR: https://project-chip.github.io/connectedhomeip/qrcode.html?data=MT%3A8IXS142C00KA0648G00
CHIP:SVR: Manual pairing code: [34970112332]
CHIP:DL: Long dispatch time: 441 ms, for event type 2
CHIP:DL: CHIPoBLE advertising started
CHIP:DL: BLEManagerImpl::SetAdvertisingData err:Success
```

Essential is the URL line pointing to the QR Code for the Device Commissioning phase: [https://project-chip.github.io/connectedhomeip/qrcode.html?data=MT%3A8IXS142C00KA0648G00](https://project-chip.github.io/connectedhomeip/qrcode.html?data=MT%3A8IXS142C00KA0648G00)

Open this URL and Scan the presented QR Code via your Android Device, after selecting the tab "Devices" and clicking "Add Device" in your Google Home App.

If the Google Home App does not directly find your device, select "Matter-enabled device" in the device type section.

### Control Device

You can now "lock" and "unlock" the PSoC62 Kit via your Google Home App.

- "Unlocked" State is when the User LED (red) is off
- "Locked" State is when the User LED (red) is on

The device will automatically "lock" itself again after a certain time.

</details>

### Factory Reset

- Commissioned Wi-Fi Credentials can be cleared by pressing `USER_BTN2` button
    on the board. All the data configured on the device during the initial
    commissioning will be deleted and device will be ready for commissioning
    again.

- Pressing the button again within 5 seconds will cancel the factory reset of
    the board.

### Traces

<details>
<summary>Sample UART Trace until QR Code</summary>

```log
CHIP:P6: ==================================================

CHIP:P6: chip-p6-lock-example starting Version 1

CHIP:P6: ==================================================

CHIP:DL: BLEManagerImpl::Init() complete
CHIP:DL: EnableStationMode
CHIP:DL: WiFi station mode change: Disabled -> Disabled
CHIP:DL: Starting P6 WiFi layer
WLAN MAC Address : D8:10:68:7A:CC:F8
WLAN Firmware    : wl0: Apr 12 2022 20:39:36 version 13.10.271.287 (760d561 CY) FWID 01-b438e2a0
WLAN CLM         : API: 18.2 Data: 9.10.0 Compiler: 1.36.1 ClmImport: 1.34.1 Creation: 2021-04-26 04:01:15
WHD VERSION      : v2.4.0 : v2.4.0 : GCC 12.2 : 2022-08-04 17:12:02 +0800
CHIP:DL: EnableStationMode
CHIP:DL: Done driving station state, nothing else to do...
CHIP:DL: SetAPMode
CHIP:DL: Setting device name to : "P6_LOCK"
CHIP:P6: Starting Platform Manager Event Loop
CHIP:DL: CHIP event task running
CHIP:DL: Starting P6 WiFi layer
CHIP:DL: EnableStationMode
CHIP:DL: EnableSiving statCHIP:DL: Done driving station state, nothing else to do...
CHIP:SVR: Subscription persistence not supported
CHIP:SVR: Server initializing...
CHIP:FP: Initializing FabricTable from persistent storage
CHIP:TS: Last Known Good Time: 2023-09-25T14:04:42
CHIP:DMG: AccessControl: initializing
CHIP:DMG: Examples::AccessControlDelegate::Init
CHIP:DMG: AccessControl: setting
CHIP:DMG: DefaultAclStorage: initializing
CHIP:DMG: DefaultAclStorage: 0 entries loaded
CHIP:IN: UDP::Init bind&listen port=5540
CHIP:IN: UDP::Init bound to port=5540
CHIP:IN: UDP::Init bind&listen port=5540
CHIP:IN: UDP::Init bound to port=5540
CHIP:IN: BLEBase::Init - setting/overriding transport
CHIP:IN: TransportMgr initialized
CHIP:ZCL: Using ZAP configuration...
CHIP:DMG: Failed to read stored attribute (0, 0x0000_0028, 0x0000_0005: a0
CHIP:DMG: Failed to read stored attribute (0, 0x0000_0028, 0x0000_0010: a0
CHIP:DMG: Failed to read stored attribute (0, 0x0000_002B, 0x0000_0000: a0
CHIP:DMG: Failed to read stored attribute (0, 0x0000_002C, 0x0000_0000: a0
CHIP:DMG: Failed to read stored attribute (0, 0x0000_002C, 0x0000_0001: a0
CHIP:DMG: Failed to read stored attribute (1, 0x0000_0101, 0x0000_0000: a0
CHIP:DMG: AccessControlCluster: initializing
CHIP:ZCL: Initiating Admin Commissioning cluster.
CHIP:ZCL: Door Lock server initialized
CHIP:DMG: Endpoint 0, Cluster 0x0000_0030 update version to 7fa071bb
CHIP:ZCL: Cluster callback: 0x0000_0030
CHIP:ZCL: GeneralDiagnostics: OnDeviceReboot
CHIP:DMG: Endpoint 0, Cluster 0x0000_0033 update version to 3dee0bf4
CHIP:EVL: LogEvent event number: 0x0000000000010000 priority: 2, endpoint id:  0x0 cluster id: 0x0000_0033 event id: 0x3 Sys timestamp: 0x000000000000007D
CHIP:ZCL: DeviceInfoProvider is not registered
CHIP:ZCL: Trying to write invalid Calendar Type
CHIP:ZCL: Failed to write calendar type with error: 0x87
CHIP:DMG: Endpoint 1, Cluster 0x0000_0003 update version to e83335f2
CHIP:ZCL: Cluster callback: 0x0000_0003
CHIP:IN: SecureSession[0x8031590]: Allocated Type:1 LSID:12908
CHIP:SC: Assigned local session key ID 12908
CHIP:SC: Waiting for PBKDF param request
CHIP:DIS: Updating services using commissioning mode 1
CHIP:DIS: CHIP minimal mDNS started advertising.
CHIP:DL: Using wifi MAC for hostname
CHIP:DIS: Advertise commission parameter vendorID=65521 productID=32774 discriminator=3840/15 cm=1
CHIP:DIS: Responding with _matterc._udp.local
CHIP:DIS: Responding with 25B12C84D299022C._matterc._udp.local
CHIP:DIS: Responding with F8CC7A6810D8.local
CHIP:DIS: Responding with F8CC7A6810D8.local
CHIP:DIS: Responding with _V65521._sub._matterc._udp.local
CHIP:DIS: Responding with _S15._sub._matterc._udp.local
CHIP:DIS: Responding with _L3840._sub._matterc._udp.local
CHIP:DIS: Responding with _CM._sub._matterc._udp.local
CHIP:DIS: Responding with 25B12C84D299022C._matterc._udp.local
CHIP:DIS: CHIP minimal mDNS configured as 'Commissionable node device'; instance name: 25B12C84D299022C.
CHIP:DIS: mDNS service published: _matterc._udp
CHIP:DIS: Updating services using commissioning mode 1
CHIP:DIS: CHIP minimal mDNS started advertising.
CHIP:DL: Using wifi MAC for hostname
CHIP:DIS: Advertise commission parameter vendorID=65521 productID=32774 discriminator=3840/15 cm=1
CHIP:DIS: Responding with _matterc._udp.local
CHIP:DIS: Responding with 25B12C84D299022C._matterc._udp.local
CHIP:DIS: Responding with F8CC7A6810D8.local
CHIP:DIS: Responding with F8CC7A6810D8.local
CHIP:DIS: Responding with _V65521._sub._matterc._udp.local
CHIP:DIS: Responding with _S15._sub._matterc._udp.local
CHIP:DIS: Responding with _L3840._sub._matterc._udp.local
CHIP:DIS: Responding with _CM._sub._matterc._udp.local
CHIP:DIS: Responding with 25B12C84D299022C._matterc._udp.local
CHIP:DIS: CHIP minimal mDNS configured as 'Commissionable node device'; instance name: 25B12C84D299022C.
CHIP:DIS: mDNS service published: _matterc._udp
CHIP:IN: CASE Server enabling CASE session setups
CHIP:IN: SecureSession[0x8031648]: Allocated Type:2 LSID:12909
CHIP:SC: Allocated SecureSession (0x8031648) - waiting for Sigma1 msg
CHIP:SVR: Joining Multicast groups
CHIP:ZCL: Emitting StartUp event
CHIP:EVL: LogEvent event number: 0x0000000000010001 priority: 2, endpoint id:  0x0 cluster id: 0x0000_0028 event id: 0x0 Sys timestamp: 0x0000000000000161
CHIP:SVR: Server Listening...
CHIP:P6: Current Software Version: 1
CHIP:DL: Device Configuration:
CHIP:DL:   Serial Number: TEST_SN
CHIP:DL:   Vendor Id: 65521 (0xFFF1)
CHIP:DL:   Product Id: 32774 (0x8006)
CHIP:DL:   Product Name: P6-CYW43012 Lock
CHIP:DL:   Hardware Version: 43012
CHIP:DL:   Setup Pin Code (0 for UNKNOWN/ERROR): 20202021
CHIP:DL:   Setup Discriminator (0xFFFF for UNKNOWN/ERROR): 3840 (0xF00)
CHIP:DL:   Manufacturing Date: (not set)
CHIP:DL:   Device Type: 10 (0xA)
CHIP:SVR: SetupQRCode: [MT:8IXS142C00KA0648G00]
CHIP:SVR: Copy/paste the below URL in a browser to see the QR Code:
CHIP:SVR: https://project-chip.github.io/connectedhomeip/qrcode.html?data=MT%3A8IXS142C00KA0648G00
CHIP:SVR: Manual pairing code: [34970112332]
CHIP:DL: Long dispatch time: 441 ms, for event type 2
CHIP:DL: CHIPoBLE advertising started
CHIP:DL: BLEManagerImpl::SetAdvertisingData err:Success
```

</details>

## Step 4. Retrieve Matter Productive Credentials from Kudelski Keystream

### Retrieval Process

Go to [www.infineon.com/optiga-trust-m-mtr](https://www.infineon.com/optiga-trust-m-mtr).

Here you will find the instructions to register with Infineon and our partner Kudelski IoT. After a complete registration, you can claim your device certificates from Kudelski keySTREAM.

As input you will need your Reel-ID. The QR Code on the side of the packaging box of the OPTIGA Trust M MTR Shield contains this Reel-ID for your shield.

### Late-stage Provisioning

We have prepared a separate application guide for the late-stage provisioning mechanism. For this, you will need a Raspberry Pi as provisioning harness.

Find the Application Guide here: [www.github.com/Infineon/linux-optiga-trust-m/tree/development_v3/scripts/matter_provisioning](https://github.com/Infineon/linux-optiga-trust-m/tree/development_v3/scripts/matter_provisioning)

<!-- Once we have a version 2 of Trust M MTR, add python-provisioning option! -->

## Step 5. Develop your own Matter Application for OPTIGA&trade; Trust M MTR

Developing a new Matter application most likely starts with the Matter SDK.

To start developing a Matter Application for the OPTIGA&trade; Trust M MTR together with PSoC6, see the [CHIP Matter SDK Repository](https://github.com/project-chip/connectedhomeip/tree/master/examples/lock-app/infineon/psoc6).

## Support material

[See here](../README.md#support-material)

## Troubleshooting
<!-- In case you run into a problem and no live data can be seen on the dashboard follow the steps below to see where things go wrong.
* Make sure that the WiFi hotspot is open (scan with your computer to see the available SSID)
* Make sure there is no typo in the password
* Be sure that the USB port that you use can supply enough power to run the board (try another port)
* If you still run into problems download teraterm and connect to the virtual Com port of the board to see the output. Use this output and create an accident on our [Community Forum](https://community.infineon.com/t5/OPTIGA-Trust/bd-p/OPTIGA) -->
