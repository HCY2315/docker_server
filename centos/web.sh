#/bin/bash

NIC_ID=`/usr/sbin/ifconfig | grep eth | wc -l`
echo $NIC_ID
if (( $NIC_ID != 0 )); then
    for usb in `/usr/sbin/ifconfig | grep eth0 | awk -F: {'print$1'}`:
    do
        echo $usb
        `/usr/sbin/ifdown usb`
    done
else
    echo "error"
fi