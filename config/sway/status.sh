#!/bin/bash
kernel=$(uname -r | awk -F '-' '{print $1,$4}')
uptime_formatted=$(uptime | awk '{print substr($3, 1, length($3)-1)}')
date_formatted=$(date "+%Y/%m/%d %X")
battery_stat=$(cat /sys/class/power_supply/BAT0/capacity)
volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{gsub(/Volume: /, ""); print 100 * $1}')

echo "linux $kernel | up $uptime_formatted | time $date_formatted | bat $battery_stat% | vol $volume% |"
