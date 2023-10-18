 $interface = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Where-Object {$_.InterfaceAlias -match 'Ethernet' } |Select-Object -ExpandProperty InterfaceIndex)
 
 function gpo_update{
    Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses (”DNS SERVER”)
    gpupdate /force
    Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses ("XXXX",”XXXX”,”XXXX”)
 }return gpo_update