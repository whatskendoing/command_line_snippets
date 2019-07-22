# Name of Ethernet Port
/usr/sbin/networksetup -listallhardwareports | awk "/$wservice/,/Ethernet Address/" | awk 'NR==2' | cut -d " " -f 2

# Name of SSID
/usr/sbin/networksetup -listallnetworkservices | grep -Ei '(Wi-Fi|AirPort)'

# Clear DNS Cache (Mojave)
sudo /usr/bin/killall -HUP mDNSResponder;

# Clear ARP Cache
sudo /usr/sbin/arp -a -d

# Show all open network connections and the apps that are using them
lsof -i | grep ESTABLISHED

# Enable advanced network commands
ENABLE_EXPERIMENTAL_SCUTIL_COMMANDS=1 scutil --net

# Show Bluetooth MAC address
ioreg -c IOBluetoothHCIController | grep BluetoothDeviceAddress | grep -v BluetoothDeviceAddressData | cut -d'"' -f4
