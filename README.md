# auto_log_win10
# FileName:
profile.ps1

# Requirements:
```
Get-ExecutionPolicy -List
---
        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process       Undefined
  CurrentUser    RemoteSigned
 LocalMachine       Undefined
```

```
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

# Log Directory Path 
C:\Users\User_Name\WindowsPowerSHell\logs

