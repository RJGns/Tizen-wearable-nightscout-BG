# Tizen-nightscout-widget

A very simple widget that queries the nightscout API to display blood glucose in the form of the widget. It is built using Tizen SDK, in the form of a web widget (comes bundled with a normal app, but you can ignore this). All this does is get the current bg in mmol and displays it.

![alt text](https://github.com/RJGns/Tizen-wearable-nightscout-BG/blob/main/Screen_20230407_220311.png?raw=true)

## Building

1. Install Tizen Studio, along with the Tizen wearable for your watch, along with the Samsung certificate manager (may be in the "Extras" tab).

2. Clone the repository and open it in Tizen Studio.

3. Go to `Tools > Device Manager` and connect to your watch. [Instructions here, when connecting for the first time, make sure the watch is on and NOT on the watch face - scroll to a widget](https://docs.tizen.org/application/dotnet/get-started/wearable-connection/).

4. Go to `Tools > Certificate Manager` and make a new certificate, choosing Samsung if you need to. Follow the instructions to make a certificate. Make sure only one DUID is selected.

5. In `widget > Nightscout > js > main.js`, change line 4 to your nightscout address: `var myapi = "https://YOURNIGHTSOCUT/api/v1/entries.json";`

6. Press the run button in the tab bar, and it should be built and run on your watch.

### This process may be complicated. Feel free to open an issue if you need help.

## Change to mg/dL

1. In `widget > Nightscout > js > main.js`, change line 23 from `document.getElementById("current").textContent = String(Math.round(obj[0].sgv * 0.0555 * 10)/10);` to `document.getElementById("current").textContent = String(obj[0].sgv);`

2. Carry on with the installation.
