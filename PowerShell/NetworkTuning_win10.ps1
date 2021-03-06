Set-NetTCPSetting -SettingName InternetCustom -Timestamps enabled
Set-NetTCPSetting -SettingName InternetCustom -InitialRto 1000
Set-NetTCPSetting -SettingName InternetCustom -ForceWS enabled
Set-NetTCPSetting -SettingName InternetCustom -MemoryPressureProtection enabled

Set-NetTCPSetting -SettingName DataCenterCustom -Timestamps enabled
Set-NetTCPSetting -SettingName DataCenterCustom -InitialRto 1000
Set-NetTCPSetting -SettingName DataCenterCustom -ForceWS enabled
Set-NetTCPSetting -SettingName DataCenterCustom -MemoryPressureProtection enabled
 
#win2012
Set-NetTCPSetting -SettingName InternetCustom -InitialCongestionWindow 10

Set-NetTCPSetting -SettingName DataCenterCustom -InitialCongestionWindow 10
Set-NetTCPSetting -SettingName DataCenterCustom -DelayedAckTimeoutMs 10

#禁止IPv6teredo
netsh interface teredo set state disable
#netsh int tcp set heuristics disabled
netsh int tcp set global autotuninglevel=experimental
netsh int tcp set global dca=enabled
netsh int tcp set global ecncapability=enabled
netsh int tcp set global netdma=disabled
netsh int tcp set global nonsackrttresiliency=enabled
netsh int tcp set global initialrto=1000
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=enabled
netsh int tcp set global fastopen=enabled
netsh int tcp set global pacingprofile=always
netsh int tcp set heuristics wsh=enabled forcews=enabled
netsh int tcp set security mpp=enabled startport=1024 numberofports=64500

#win10
netsh int tcp set supplemental internet congestionprovider=dctcp
netsh int tcp set supplemental datacenter congestionprovider=dctcp