$interface = (Get-NetIPConfiguration | Where-Object {($_.InterfaceAlias -CContains "Ethernet")} | Select-Object InterfaceIndex) 
Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses "10.1.6.222","ù192.168.10.10"ù,"ù10.14.180.2"ù,"ù10.14.180.10"
echo $interface