echo off
set /p "url=Enter Nightscout URL (only the part AFTER https:// and before the first / e.g mynightscout.com: "
git | find "recognized" || echo Cloned
git | find "recognized" && winget install Git.git

powershell -Command "(gc "Tizen-wearable-nightscout-BG\widget\Nightscout\js\main.js") -replace 'URL', '%url%' | Out-File -encoding ASCII Tizen-wearable-nightscout-BG\widget\Nightscout\js\main.js"
pause