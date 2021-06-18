 $interface = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Where-Object {$_.InterfaceAlias -match 'Ethernet' } |Select-Object -ExpandProperty InterfaceIndex)
 
 function gpo_update{
    Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses (”10.14.180.2”)
    gpupdate /force
    Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses ("10.1.6.222",”10.14.180.2”,”10.14.180.10”)
 }return gpo_update