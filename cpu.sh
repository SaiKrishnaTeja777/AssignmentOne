echo "The percentage of Cpu usage: "
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'
swapon | awk 'FNR == 2 {printf "Swap space info: Available :%s Used:%s\n",$3,$4}'

#NAME      TYPE      SIZE USED PRIO
#/dev/dm-1 partition   3G   0B   -1

