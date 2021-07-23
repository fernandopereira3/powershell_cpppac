echo "
 
 
            OLA! VOU INSTALAR MICROSOFT OFFICE PARA VOCE, ESTE PROCESSO DEMORA APROXIMADAMENTE 15 MIN (DEPENDE DA VELOCIDADE DA INTERNET).
            VOCE PODE FAZER OUTRAS COISAS AO MESMO TEMPO, MAS É MELHOR DEIXAR O COMPUTADOR QUIETO NESSE PERIODO.
            AO FIM DO PROCESSO O COMPUTADOR VAI REINICIAR, QUANDO ELE VOLTAR PODERÁ SER USADO NORMALMENTE.

                                                                                            OBRIGADO!
 
        
                 
"
sleep 20


# Instalar o Cholatey
cls
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) > $null

# Instalar Office
cls
echo "
  __  __ _                     __ _      ___   __  __ _        
 |  \/  (_)__ _ _ ___ ___ ___ / _| |_   / _ \ / _|/ _(_)__ ___ 
 | |\/| | / _| '_/ _ (_-</ _ \  _|  _| | (_) |  _|  _| / _/ -_)
 |_|  |_|_\__|_| \___/__/\___/_|  \__|  \___/|_| |_| |_\__\___|
                                                               
"
echo "INSTALANDO O MICROSOFT OFFICE, CALMA, ESTE PROCESSO É DEMORADO MESMO!"
choco install --force -y office2019proplus --params '/Language:pt-BR' > $null
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /f /v KeyManagementServiceName
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform" /f /v KeyManagementServiceName

cls
echo "



                                    FINALIZADO, VOU REINICIAR O COMPUTADOR AGORA.
                                                                        OBRIGADO!



"
sleep 5
Restart-Computer