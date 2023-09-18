# Tizen-nightscout-widget

A very simple widget that queries the nightscout API to display blood glucose in the form of the widget. It is built using Tizen SDK, in the form of a web widget (comes bundled with a normal app, but you can ignore this). All this does is get the current bg in mmol and displays it. An install script is provided in the form of a batch file for windows.

![alt text](https://github.com/RJGns/Tizen-wearable-nightscout-BG/blob/main/Screen_20230407_220311.png?raw=true)

## Building

### 1. Run the install script
Do this by double clicking on it. This installs the widget to your computer. It also configures your project to use you nightscout URL and desired bg unit. 

![image](https://user-images.githubusercontent.com/64732379/230693231-5b62a2e5-6f54-4b6f-bc3d-682f8e62e540.png)

### 2. [Install Tizen Studio](https://developer.tizen.org/zh-hans/development/tizen-studio/download)
Make sure to pick the version "with IDE installer".

![image](https://user-images.githubusercontent.com/64732379/230693842-b91a9030-eafc-4cb3-9da3-980e7622eb43.png)

Accept license agreements and choose a location to install to. Tizen Studio will now be installed.

![image](https://user-images.githubusercontent.com/64732379/230693793-b232c904-8eee-4f3b-89c0-e3902af99c55.png)

Press finish to open the package manager. When it is open: install the version that corresponds to your watch Tizen version (you can find this in your watch settings). If you have a Gear S3 and are on the latest firmware, it will likely be 4.0. Press install.

![image](https://user-images.githubusercontent.com/64732379/230693970-6b88c4ee-9d5f-452e-9d0e-cebd42878d22.png)

In the Extension SDK tab, scroll to the bottom and install both the Samsung Certificate Extension and Wearable Extension.

![image](https://user-images.githubusercontent.com/64732379/230694115-3632122d-0d69-4bfe-8eb9-e47943669f77.png)

Close the package manager and tick the box to launch Tizen Studio.

### 3. Opening Project
In Tizen Studio, go to `File>Open Projects from file system` (your window may look different to mine.

![image](https://user-images.githubusercontent.com/64732379/230694272-6b3eaeb9-982e-4f87-9889-c5c82ddd2d39.png)

Click on `Directory...` then choose the folder the install script downloaded. It will be in the same place as where you launched the script and the folder is called `Tizen-wearable-nightscout-BG`

![image](https://user-images.githubusercontent.com/64732379/230694340-1153bb02-3032-41b5-939a-645e41799a92.png)

Press OK, then Finish. A project should now be visible in the Project Explorer.

Verify your details were set correctly by naviagting to `widget>Nightscout>js>Main.js`. Double click to open.

You might need to fill in the switch statement with the proper emojis for the arrows as they seem to revert to the default unicode error symbol for some reason.

### 4. Connect to watch

Open the device manager in Tizen Studio. Click remote device manager in top right. Click add.

On your watch connect to WiFi (set to always on, not auto) then go into wifi details and note the IP address. Enable developer options in watch by going to about and click on build version 5 times. Go into about and scroll down to where it says debugging, click on it and enable it. Restart watch.

Go back to TZ and connect to the watch, the watch screen needs to be on and on a screen that isn't the watch face (any one will do). A connection prompt should appear. Accept.

### 5. Generate Certificates.

Go to the certificate manager. Follow the steps to generate a Samsung partner certificate. MUST BE A PARTNER CERTIFICATE. 

### 6. Click run

It should now be installed to your watch.

