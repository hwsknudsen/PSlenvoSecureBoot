$computername = hostname
(Get-WmiObject -Class Lenovo_SetBiosSetting -Namespace root\wmi -ComputerName $Computername -ErrorAction Stop).SetBiosSetting("SecureBoot,Enable,"",ascii,us")
(Get-WmiObject -Class Lenovo_SaveBiosSettings -Namespace root\wmi -ComputerName $Computername -ErrorAction Stop).SaveBiosSettings(""",ascii,us")
restart-computer -computername $Computername -Force



#view all settings
#(Get-WmiObject -Class Lenovo_BiosSetting -Namespace root\wmi -ComputerName $Computername).CurrentSetting | Where-Object {$_ -ne ""} | Sort-Object | Out-GridView
