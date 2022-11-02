# Install new software via Chocolatey (must already be installed)

# Utilities

choco install -y 7zip
choco install -y chocolateygui
choco install -y less

# Development Tools - Languages, Compilers, etc.

choco install -y nvm # this will manage node/npm installs
choco install -y jq
choco install -y python3
choco install -y pip
choco install -y yarn

# Development Tools - Editors, IDEs

choco install -y markdownpad2
choco install -y notepadplusplus
choco install -y vscode
choco install -y vscode-powershell
choco install -y vscode-icons
choco install -y vscode-eslint

# Development Tools - Source Control

choco install -y git
choco install -y git-fork
choco install -y git-lfs
choco install -y meld
choco install -y TortoiseGit

# Development Tools - Cloud Deployment

choco install -y docker-cli
choco install -y docker-compose
choco install -y docker-desktop
choco install -y postman

# Development Tools - Database Management

choco install -y dbeaver
choco install -y mongodb
choco install -y mongodb-compass
choco install -y pgadmin4
choco install -y postgresql
choco install -y mysql
choco install -y mysql.workbench
choco install -y SQLite
choco install -y sqlite-studio.portable
choco install -y sqlitebrowser

# Command Line Terminals

choco install -y Cmder

# Network/Internet

choco install -y curl
choco install -y Firefox
choco install -y Wget
choco install -y filezilla
choco install -y putty
choco install -y winscp.install

# Fonts

choco install -y ampfontviewer

choco install -y anonymouspro
choco install -y archivo-narrow.font
choco install -y bitstreamverafonts
choco install -y cascadiacode
choco install -y cascadiacodeitalic
choco install -y cascadiamono
choco install -y cascadiamonoitalic
choco install -y croscorefonts-font
choco install -y croscorefonts-caladea-font
choco install -y croscorefonts-carlito-font
choco install -y dejavufonts
choco install -y fantasque-sans.font
choco install -y fira
choco install -y FiraCode
choco install -y go-fonts
choco install -y hackfont
choco install -y inconsolata
choco install -y inter
choco install -y jetbrainsmono
choco install -y lato
choco install -y liberationfonts
choco install -y libre-baskerville.font
choco install -y montserrat.font
choco install -y opensans
choco install -y oswald.font
choco install -y oxygenmono
choco install -y public-sans.font
choco install -y roboto.font
choco install -y SourceCodePro
choco install -y ubuntu.font

Update-SessionEnvironment

# Install Node.JS

nvm install 14.15.0

Update-SessionEnvironment

# Install Angular CLI

npm install -g @angular/cli@6

# Install Typescript

npm install -g typescript

# Install Ubuntu on WSL

$OS_Ver = [System.Environment]::OSVersion.Version
$Windows_Version = (Get-ComputerInfo | select WindowsVersion).WindowsVersion

if ($Windows_Version -ge 2004) -and ($OS_Ver.Build -ge 19041) {
    wsl --install -d Ubuntu
	wsl --set-default Ubuntu
	Write-Host "Please reboot your machine now."
} else {
	Write-Warning "Unable to automatically install Ubuntu on WSL2. Please install manually."
}

# Install Powershell Git prompt

Install-Module posh-git
