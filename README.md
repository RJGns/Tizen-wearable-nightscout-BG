# Tizen-nightscout-widget
 Very simple widget that queries nightscout API to display blood glucose iin the form of the widget.
Built using Tizen SDK, in the form of a web widget (comes bundled with a normal app, but you can ignore this). All this does is get the current bg in mmol and displays it.
![alt text](https://github.com/RJGns/Tizen-wearable-nightscout-BG/blob/main/widget/Nightscout/preview.png?raw=true)
## Building
1. Install Tizen Studio, along with the tizen wearable for your watch, along with the Samsung certificate manager (may be in the "Extras" tab)
2. Clone the repo and open it in Tizen Studio.
3. ```Tools>Device Manager``` and connect to your watch. [Instructions here, when connecting for first time, make sure watch is on and NOT on the watch face - scroll to a widget](https://docs.tizen.org/application/dotnet/get-started/wearable-connection/)
4. ```Tools>Certificate Manager``` and make a new certificate, chosing Samsung if you need to. Follow the instructions to make a certificate. Make sure only one DUID is selected.
5. In ```widget>Nightscout>js>main.js``` change line 4 to your nightscout address ```var myapi = "https://YOURNIGHTSOCUT/api/v1/entries.json";```
6. Press the run button in the tab bar and it should be built and run on your watch.
### This process may be complicated, feel free to open an issue if you need help. 
