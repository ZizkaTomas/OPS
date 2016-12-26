#!/bin/bash
tmp=$(sudo pcsensor -c)
zaokrouhleni=$(sudo pcsensor -c | rev | cut -c 4- | rev)
vysledek=$(($zaokrouhleni + 0))

if [ "$vysledek" -lt 15 ]; then
echo "Tvoje teplota je pod 15°C, aktualni teplota je presne: $tmp °C" | mail -s "TEPLOTA JE NIZKA" teplota.projekt@gmail.com
elif [ "$vysledek" -gt 30 ]; then
echo "Tvoje teplota je nad 30°C, aktualni teplota je presne: $tmp °C" | mail -s "TEPLOTA JE VYSOKA" teplota.projekt@gmail.com
fi
