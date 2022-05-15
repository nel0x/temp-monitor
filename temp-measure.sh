#!/usr/bin/env sh
while true
do
    echo "\nCPU-Temp:" $(sudo /usr/bin/vcgencmd measure_temp | cut -c 6-9)"°C"
    sudo smartctl -A /dev/sda | grep Temperature_Celsius | awk '{print "HDD-Temp: " $10 "°C"}'
    sleep 5
done
