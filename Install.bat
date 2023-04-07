echo off
set /p "url=Enter Nightscout URL (only the part AFTER https:// and before the first / e.g mynightscout.com: "
set /p "mmol=Enter 1 for mmol or 2 for mgdl: "
git | find "recognized" || echo Cloned
git | find "recognized" && winget install Git.git
IF EXIST Tizen-wearable-nightscout-BG RMDIR /S /Q Tizen-wearable-nightscout-BG
git clone https://github.com/RJGns/Tizen-wearable-nightscout-BG.git
powershell -Command "(gc "Tizen-wearable-nightscout-BG\widget\Nightscout\js\main.js") -replace 'URL', '%url%' | Out-File -encoding ASCII Tizen-wearable-nightscout-BG\widget\Nightscout\js\main.js"

if "%mmol%"=="1" (goto start1)
if "%mmol%"=="2" (goto start2)
echo Invalid
:start1
echo Done! Now install Tizen Studio (https://developer.tizen.org/zh-hans/development/tizen-studio/download) and check here (https://github.com/RJGns/Tizen-wearable-nightscout-BG) for instructions on how to deploy to your watch.
:start2
powershell -Command "(gc "Tizen-wearable-nightscout-BG\widget\Nightscout\js\main.js") -replace '0.055', '1' | Out-File -encoding ASCII Tizen-wearable-nightscout-BG\widget\Nightscout\js\main.js"
goto start1
pause