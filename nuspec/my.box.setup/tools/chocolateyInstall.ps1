$ErrorActionPreference = 'Stop'

choco install git
choco install visualstudio2017community --package-parameters '--locale en-US'
choco install visualstudio2017-workload-manageddesktop
choco install visualstudio2017-workload-netcoretools
choco install vscode

# Refresh environment to use tools such as "code" or "git"
Import-Module "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
Update-SessionEnvironment

code --install-extension cake-build.cake-vscode
