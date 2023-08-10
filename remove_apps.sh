#!sbin/bash

echo "Plug the phone then press any key to continue... "
read -s -n 1

adb devices

echo "If the device shows up press any key to continue... "
read -s -n 1

#adb uninstall --user 0 de.axelspringer.yana.zeropage

while read p; do
	echo "Trying to uninstall $p ..."
	# Two methods to remove the app
	adb exec-out "pm uninstall --user 0 $p"
	adb exec-out "pm uninstall $p"
	echo "----------------------------"
done <toremove.txt

echo "### Uninstall completed ! ###"

echo "Press any key to disable usb debug mode... "
read -s -n 1

adb exec-out "settings put global adb_enabled 0"

echo "### Bye bye ###"
