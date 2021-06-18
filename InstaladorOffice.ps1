# Instalar o Cholatey
cls
echo "
   _____ _                     _       _             
  / ____| |                   | |     | |            
 | |    | |__   ___   ___ ___ | | __ _| |_ ___ _   _ 
 | |    | '_ \ / _ \ / __/ _ \| |/ _` | __/ _ \ | | |
 | |____| | | | (_) | (_| (_) | | (_| | ||  __/ |_| |
  \_____|_| |_|\___/ \___\___/|_|\__,_|\__\___|\__, |
                                                __/ |
                                               |___/ 
" 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Instalar Office
cls
echo "
   _____          _      __  __            _____  ______ __  __  ____  _____              _    _ __  __   _____   ____  _    _  _____ ____  
  / ____|   /\   | |    |  \/  |   /\     |  __ \|  ____|  \/  |/ __ \|  __ \     /\     | |  | |  \/  | |  __ \ / __ \| |  | |/ ____/ __ \ 
 | |       /  \  | |    | \  / |  /  \    | |  | | |__  | \  / | |  | | |__) |   /  \    | |  | | \  / | | |__) | |  | | |  | | |   | |  | |
 | |      / /\ \ | |    | |\/| | / /\ \   | |  | |  __| | |\/| | |  | |  _  /   / /\ \   | |  | | |\/| | |  ___/| |  | | |  | | |   | |  | |
 | |____ / ____ \| |____| |  | |/ ____ \  | |__| | |____| |  | | |__| | | \ \  / ____ \  | |__| | |  | | | |    | |__| | |__| | |___| |__| |
  \_____/_/    \_\______|_|  |_/_/    \_\ |_____/|______|_|  |_|\____/|_|  \_\/_/    \_\  \____/|_|  |_| |_|     \____/ \____/ \_____\____/ 
                                                                                                                                                                                                                                                                                        
"
echo "
  __  __ _                     __ _      ___   __  __ _        
 |  \/  (_)__ _ _ ___ ___ ___ / _| |_   / _ \ / _|/ _(_)__ ___ 
 | |\/| | / _| '_/ _ (_-</ _ \  _|  _| | (_) |  _|  _| / _/ -_)
 |_|  |_|_\__|_| \___/__/\___/_|  \__|  \___/|_| |_| |_\__\___|
                                                               
"
choco install -y office2019proplus
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /f /v KeyManagementServiceName
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform" /f /v KeyManagementServiceName