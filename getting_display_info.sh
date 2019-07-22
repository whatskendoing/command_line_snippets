# Screen Resolution
screen_resolution=$(/usr/sbin/system_profiler SPDisplaysDataType |grep Resolution | awk '{print$2,$3,$4}')

# Is Retina?
isRetina=$(/usr/sbin/system_profiler SPDisplaysDataType | grep Resolution | awk -F " " '{print$NF}')
