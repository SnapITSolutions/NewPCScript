# NewPCScript

Script for new PC installations

## Instructions

Run this command in PowerShell admin shell to install Chocolatey:

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

After Chocolatey is installed, run the `install.ps1` script in the PowerShell admin shell.
