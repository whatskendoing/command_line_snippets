# Hardware
####################################################
# Current Model
current_model=$(/usr/bin/curl -s https://support-sp.apple.com/sp/product?cc=`system_profiler SPHardwareDataType | awk '/Serial/ {print $4}' | cut -c 9-` | sed 's|.*<configCode>\(.*\)</configCode>.*|\1|')

# Memory
mem_01=$(system_profiler SPHardwareDataType | grep "  Memory:" | awk -F " " '{print$2,$3}')
mem_02=$(sysctl -n hw.memsize | awk '{print $0/1073741824" GB RAM"}')

#CPU
CPU=$(sysctl -n machdep.cpu.brand_string)

#SMC
smc_01=$(ioreg -c AppleSMC | grep smc-version | cut -d'"' -f4)
smc_02=$(system_profiler SPHardwareDataType | grep "SMC" | awk '{print $4}')

# Show BootROM (EFI version)
boot_rom=$(system_profiler SPHardwareDataType | grep "Boot ROM" | awk '{print $4}')
