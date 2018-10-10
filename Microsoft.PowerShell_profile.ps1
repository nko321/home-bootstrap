Set-PSReadlineOption -BellStyle None
$Host.PrivateData.ErrorForegroundColor = "Gray"
Set-PSReadlineOption -TokenKind Command -ForegroundColor "DarkRed"
[console]::ForegroundColor = "DarkGreen"
[console]::BackgroundColor = "White"
function grep ($pattern){
        return (Get-ChildItem -Recurse *.* | Select-String -Pattern $pattern | Select-Object -Unique Path)
}
Clear-Host
