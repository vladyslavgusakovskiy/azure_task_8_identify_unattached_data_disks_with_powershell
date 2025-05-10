$result = Get-AzDisk | Where-Object {$_.DiskState -eq "Unattached" -and $_.ResourceGroupName -eq "mate-azure-task-5"}

$result | Select-Object Name, DiskState, ResourceGroupName | ConvertTo-Json | Set-Content -Path "result.json"

