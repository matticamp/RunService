$ServiceName= Read-host "Enter service name"
$svc= Get-Service -Name $ServiceName | Sort-Object Status, DisplayName


If($status -eq "Stopped")

{
     Start-Service -Name $ServiceName
     Write-Host $status


}Else  {

Write-Host "The specified service is already running"

}

$svc