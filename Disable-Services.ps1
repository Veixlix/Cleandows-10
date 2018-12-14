#   Description:
# This script disables useless windows services. in my opinion
# The right explains what services are being disabled. I am not responsible for any damage
# some services may just come back on after a windows update.

$services = @(
    "diagnosticshub.standardcollector.service" # Diagnostics Hub Service
    "DiagTrack"                                # Diagnostics Tracking Service
    "dmwappushservice"                         # WAP Push Message Routing Service
    "SharedAccess"                             # Internet Connection Sharing 
    "WbioSrvc"                                 # Windows Biometric Service
    #"WlanSvc"                                 # WLAN 
    "WMPNetworkSvc"                            # Windows Media Player Network Sharing
    #"WSearch"                                 # Windows Search
    "XblAuthManager"                           # Xbox Live Auth Manager
    "XblGameSave"                              # Xbox Live Game Save Service
    "XboxNetApiSvc"                            # Xbox Live Networking Service

  
)

foreach ($service in $services) {
    Write-Output " disabling $services"
    Get-Service -Name $service | Set-Service -StartupType Disabled
}
