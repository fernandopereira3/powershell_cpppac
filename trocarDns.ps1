
########VARIEAVEIS#######
$interface = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Where-Object {$_.InterfaceAlias -match 'Ethernet' } |Select-Object -ExpandProperty InterfaceIndex)

cls
echo "Hi! Vou configurar este PC para o Dominio cpppac.com"

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




#wimrm quickconfig -force
#Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses ("10.1.6.222",”192.168.10.10”,”10.14.180.2”,”10.14.180.10”)
#Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" >> \\10.14.180.5\programas\textos\
#Clear-Variable -Name MyVariable


