mkdir C:\scripts 
cp \\10.14.180.5\programas\scripst\WINDOWS\*.ps1 C:\scripts\ 
cd C:\scripts\

echo "
 ██████╗██████╗ ██████╗ ██████╗  █████╗  ██████╗    ██████╗ ██████╗ ███╗   ███╗
██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝   ██╔════╝██╔═══██╗████╗ ████║
██║     ██████╔╝██████╔╝██████╔╝███████║██║        ██║     ██║   ██║██╔████╔██║
██║     ██╔═══╝ ██╔═══╝ ██╔═══╝ ██╔══██║██║        ██║     ██║   ██║██║╚██╔╝██║
╚██████╗██║     ██║     ██║     ██║  ██║╚██████╗██╗╚██████╗╚██████╔╝██║ ╚═╝ ██║
 ╚═════╝╚═╝     ╚═╝     ╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝"
# Instala o powershell 7.XXX
cls
echo "
  _____                           _          _ _ 
 |  __ \                         | |        | | |
 | |__) |____      _____ _ __ ___| |__   ___| | |
 |  ___/ _ \ \ /\ / / _ \ '__/ __| '_ \ / _ \ | |
 | |  | (_) \ V  V /  __/ |  \__ \ | | |  __/ | |
 |_|   \___/ \_/\_/ \___|_|  |___/_| |_|\___|_|_|
                                                 
                                                 
"
msiexec.exe /package PowerShell-7.1.3-win-x64.msi /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1
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
# Winrar
cls
echo "
 __          ___                      
 \ \        / (_)                     
  \ \  /\  / / _ _ __  _ __ __ _ _ __ 
   \ \/  \/ / | | '_ \| '__/ _` | '__|
    \  /\  /  | | | | | | | (_| | |   
     \/  \/   |_|_| |_|_|  \__,_|_|   
                                      
                                      
" 
choco install -y winrar
# Google Chrome
cls
echo "
   _____                   _         _____ _                              
  / ____|                 | |       / ____| |                             
 | |  __  ___   ___   __ _| | ___  | |    | |__  _ __ ___  _ __ ___   ___ 
 | | |_ |/ _ \ / _ \ / _` | |/ _ \ | |    | '_ \| '__/ _ \| '_ ` _ \ / _ \
 | |__| | (_) | (_) | (_| | |  __/ | |____| | | | | | (_) | | | | | |  __/
  \_____|\___/ \___/ \__, |_|\___|  \_____|_| |_|_|  \___/|_| |_| |_|\___|
                      __/ |                                               
                     |___/                                                
"
choco install -y googlechrome
# Instalar Skype
cls
echo "
   _____ _                     
  / ____| |                    
 | (___ | | ___   _ _ __   ___ 
  \___ \| |/ / | | | '_ \ / _ \
  ____) |   <| |_| | |_) |  __/
 |_____/|_|\_\\__, | .__/ \___|
               __/ | |         
              |___/|_|         
" 
choco install -y skype
# Instalar RealVNC
cls
echo "
  _____            _  __      ___   _  _____ 
 |  __ \          | | \ \    / / \ | |/ ____|
 | |__) |___  __ _| |  \ \  / /|  \| | |     
 |  _  // _ \/ _` | |   \ \/ / | . ` | |     
 | | \ \  __/ (_| | |    \  /  | |\  | |____ 
 |_|  \_\___|\__,_|_|     \/   |_| \_|\_____|
                                             
                                             
"  
choco install -y vnc-connect
# Adobe Reader
cls
echo "
            _       _                               _           
           | |     | |                             | |          
   __ _  __| | ___ | |__   ___   _ __ ___  __ _  __| | ___ _ __ 
  / _` |/ _` |/ _ \| '_ \ / _ \ | '__/ _ \/ _` |/ _` |/ _ \ '__|
 | (_| | (_| | (_) | |_) |  __/ | | |  __/ (_| | (_| |  __/ |   
  \__,_|\__,_|\___/|_.__/ \___| |_|  \___|\__,_|\__,_|\___|_|   
                                                                
   "
choco install -y adobereader
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

cls

########VARIEAVEIS#######
$interface = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Where-Object {$_.InterfaceAlias -match 'Ethernet' } |Select-Object -ExpandProperty InterfaceIndex)

cls
echo "Oi! Agora vou configurar este PC para o Dominio cpppac.com"

#########SET DNS PARA .2################
Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses (”10.14.180.2”)
cls
echo "Adicionado DNSs com sucesso"

winrm quickconfig -force

############RENOMEAR PC############################
Rename-Computer

###########ADICIONAR PC AO DOMINIO##############################
Add-Computer -DomainName cpppac.com

cls
echo "PROCESSEDIMENTO FINALIZADO"
pause

Restart-Computer