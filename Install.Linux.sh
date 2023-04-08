#!/bin/bash
read -p "Enter Nightscout URL (only the part AFTER https:// and before the first / e.g mynightscout.com): " url
read -p "Enter 1 for mmol or 2 for mgdl: " mmol




if [ -d "Tizen-wearable-nightscout-BG" ]; then
rm -rf Tizen-wearable-nightscout-BG
fi
git clone https://github.com/RJGns/Tizen-wearable-nightscout-BG.git
sed -i 's/URL/'$url'/g' Tizen-wearable-nightscout-BG/widget/Nightscout/js/main.js
if [ $mmol -eq 2 ]; then
echo MGDL
sed -i 's/0.055/6-/g' Tizen-wearable-nightscout-BG/widget/Nightscout/js/main.js
elif [ $mmol -eq 1 ]; then
echo MMOL
else
echo Invalid
exit 1
fi

echo "Done! Now install Tizen Studio (https://developer.tizen.org/zh-hans/development/tizen-studio/download) and check >read -p "Press [Enter] to exit."