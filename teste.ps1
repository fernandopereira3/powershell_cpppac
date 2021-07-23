
########VARIEAVEIS#######
$interface = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Where-Object {$_.InterfaceAlias -match 'Ethernet' } |Select-Object -ExpandProperty InterfaceIndex)

cls
echo "Oi! Agora vou configurar este PC para o Dominio cpppac.com"

#########SET DNS PARA .2################
Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses (”10.14.180.2”)
cls
echo "Adicionado DNSs com sucesso"

winrm quickconfig -force

###########ADICIONAR PC AO DOMINIO#########################################RENOMEAR PC############################
Add-Computer -DomainName cpppac.com | Rename-Computer



cls
echo "PROCESSEDIMENTO FINALIZADO"
pause

Restart-Computer
