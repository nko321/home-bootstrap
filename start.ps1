New-Item -Path $profile -Force
Copy-Item -Path Microsoft.PowerShell_profile.ps1 -Destination $profile
Set-ExecutionPolicy Unrestricted -Force
dism /online /Enable-Feature /FeatureName:TelnetClient
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install autohotkey virtualbox 7zip notepadplusplus putty vscode inkscape vlc sumatrapdf windirstat git openssh -y