mkdir C:\scripts 
cp \\1SERVER\programas\scripst\WINDOWS\*.ps1 C:\scripts\ 
cd C:\scripts\
cls
echo "
 
 
            OLA! VOU INSTALAR ALGUNS PROGRAMAS PARA VOCE ESTE PROCESSO DEMORA APROXIMADAMENTE 30 MIN.
            VOCE PODE FAZER OUTRAS COISAS MAS ESTA MAQUINA PROVAVELMENTE VAI FICAR MAIS LENTA.

                                                                                            OBRIGADO!
 
        
                 
"
sleep 15

Out-Null

# Instalar o Cholatey
cls 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) > $null

# Instalar REALVNC
cls
echo "
  _____            _  __      ___   _  _____ 
 |  __ \          | | \ \    / / \ | |/ ____|
 | |__) |___  __ _| |  \ \  / /|  \| | |     
 |  _  // _ \/ _` | |   \ \/ / | . ` | |     
 | | \ \  __/ (_| | |    \  /  | |\  | |____ 
 |_|  \_\___|\__,_|_|     \/   |_| \_|\_____|
                                             
                                             
" 
echo "INSTALANDO O REAL VNC..." 
choco install -y --force vnc-connect > $null
cls
echo "  "
echo "  "
echo "  "
echo "                                  CONCLUIDO ESPERANDO O SERIAL DE ATIVAÇÃO..."
echo "  "
echo "  "
echo "  "
pause

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
echo "INSTALANDO O WINRAR..."
choco install -y --force winrar > $null
cls
echo "CONCLUIDO..."
sleep 5

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
echo "INSTALANDO O GOOGLE CHROME..."
choco install -y --force googlechrome > $null
cls
echo "CONCLUIDO..."
sleep 5


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
echo "INSTALANDO O SKYPE..."
choco install -y --force skype > $null
cls
echo "CONCLUIDO..."
sleep 5


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
echo "INSTALANDO O ADOBE READER..."
choco install -y --force adobereader > $null
cls
echo "CONCLUIDO..."
sleep 5


# SISCAR E SIA
cls
echo "
   _____ _                                _____ _____          
  / ____(_)                      ___     / ____|_   _|   /\    
 | (___  _ ___  ___ __ _ _ __   ( _ )   | (___   | |    /  \   
  \___ \| / __|/ __/ _` | '__|  / _ \/\  \___ \  | |   / /\ \  
  ____) | \__ \ (_| (_| | |    | (_>  <  ____) |_| |_ / ____ \ 
 |_____/|_|___/\___\__,_|_|     \___/\/ |_____/|_____/_/    \_\
                                                               
                                                               
"

cp -Force -R \\SERVER\programas\beto C:\
cp -Force -R \\SERVER\programas\sia C:\ 
New-Item -ItemType SymbolicLink -Path "$Home\Desktop\" -Name "Siscar" -Value "C:\beto\SisCar\SisCar.exe"

# Instalar Office
cls
echo "
  __  __ _                     __ _      ___   __  __ _        
 |  \/  (_)__ _ _ ___ ___ ___ / _| |_   / _ \ / _|/ _(_)__ ___ 
 | |\/| | / _| '_/ _ (_-</ _ \  _|  _| | (_) |  _|  _| / _/ -_)
 |_|  |_|_\__|_| \___/__/\___/_|  \__|  \___/|_| |_| |_\__\___|
                                                               
"
echo "INSTALANDO O MICROSOFT OFFICE, CALMA ESSE PROCESSO É DEMORADO MESMO!"
choco install -y --force office2019proplus --params '/Language:pt-BR' > $null

reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /f /v KeyManagementServiceName
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform" /f /v KeyManagementServiceName
cls
echo "CONCLUIDO..."
sleep 5


cls
echo "



                FINALIZADO, VOU REINICIAR O COMPUTADOR AGORA PARA QUE TUDO SE FIQUE EM SEU DEVIDO LUGAR.
                                                                                                OBRIGADO!



"
sleep 5
Restart-Computer