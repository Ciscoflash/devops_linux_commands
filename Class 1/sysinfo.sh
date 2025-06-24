#This comand helps me to get my system cpu information

echo -e  "\nCPU INFORMATION"
lscpu | uptime

#This shows the used storage 
echo -e  "\nSTORAGE INFORMATION"
df -h | df

#System Infomation
echo "\nSYSTEM INFORMATION"
uname -a -h

#usb connections
echo -e  "\nUSD CONNECTED"
lsusb

#disk usage
echo -e  "\nDISK USED"
du -a

#This is my system information
echo "END OF SYSTEM INFORMATION"





