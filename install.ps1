# Install new software via Chocolatey (must already be installed)

choco install -y --stop-on-first-failure packages.config

if (! $?) {
	return
}

# Install Node.JS

nvm install 14.15.0
nvm use 14.15.0

# Install Angular CLI

npm install -g @angular/cli@6

# Install Typescript

npm install -g typescript

# Install Ubuntu on WSL

$OS_Ver = [System.Environment]::OSVersion.Version
$Windows_Version = (Get-ComputerInfo | select WindowsVersion).WindowsVersion

if (($Windows_Version -ge 2004) -and ($OS_Ver.Build -ge 19041)) {
    wsl --install -d Ubuntu
	wsl --set-default Ubuntu
	Write-Host "Please reboot your machine now."
} else {
	Write-Warning "Unable to automatically install Ubuntu on WSL2. Please install manually."
}
