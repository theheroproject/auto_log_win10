<#
- FileName:
profile.ps1

- Requirements:
> Get-ExecutionPolicy -List
---
        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process       Undefined
  CurrentUser    RemoteSigned
 LocalMachine       Undefined

> Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
#>

# Log Directory Path (C:\Users\User_Name\WindowsPowerSHell\logs)
$log_dir = join-path([Environment]::GetFolderPath("MyDocuments")) "\WindowsPowerShell\logs"
# log file name
$UserInfo = $Env:COMPUTERNAME + '-' + $Env:USERNAME
$file_name = 'PS_' + $UserInfo + '_' + (Get-Date).ToString("yyyyMMdd_HHmmss") + ".log"
$log_file = join-path $log_dir $file_name

# create directory if not file exists
if (Test-Path $log_dir) {
    Start-Transcript $log_file -Append
}
else {
    Write-Host("No such directory:" + $log_dir)
    New-Item $log_dir -ItemType Directory
    Start-Transcript $log_file -Append
}

# change prompt
function global:prompt {
    (Get-Date -format "[yyyy/MM/dd HH:mm:ss]") + " PS " + $(get-location) + "> "
}