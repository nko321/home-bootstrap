Set-PSReadlineOption -BellStyle None
$Host.PrivateData.ErrorForegroundColor = "Gray"
$options = Get-PSReadlineOption
[console]::ForegroundColor = "DarkGreen"
[console]::BackgroundColor = "White"

$options.DefaultTokenForegroundColor            = "DarkCyan"
$options.CommentForegroundColor                 = "DarkGray"
$options.KeywordForegroundColor                 = "Magenta"
$options.StringForegroundColor                  = "DarkCyan"
$options.OperatorForegroundColor                = "Magenta"
$options.VariableForegroundColor                = "Green"
$options.CommandForegroundColor                 = "DarkRed"
$options.ParameterForegroundColor               = "Red"
$options.TypeForegroundColor                    = "Gray"
$options.NumberForegroundColor                  = "Blue"
$options.MemberForegroundColor                  = "Black"
$options.ErrorForegroundColor                   = "Red"
$options.EmphasisForegroundColor                = "Cyan"
$options.ContinuationPromptForegroundColor      = "Gray"

$options.DefaultTokenBackgroundColor            = "White"
$options.CommentBackgroundColor                 = "DarkYellow"
$options.KeywordBackgroundColor                 = "White"
$options.StringBackgroundColor                  = "White"
$options.OperatorBackgroundColor                = "White"
$options.VariableBackgroundColor                = "White"
$options.CommandBackgroundColor                 = "White"
$options.ParameterBackgroundColor               = "White"
$options.TypeBackgroundColor                    = "White"
$options.NumberBackgroundColor                  = "White"
$options.MemberBackgroundColor                  = "White"
$options.EmphasisBackgroundColor                = "DarkMagenta"
$options.ErrorBackgroundColor                   = "DarkMagenta"
$options.ContinuationPromptBackgroundColor      = "White"

function grep ($pattern){
        return (Get-ChildItem -Recurse *.* | Select-String -Pattern $pattern | Select-Object -Unique Path)
}
Clear-Host
Start-Transcript -Append -Path "~\$(Get-Date -format "yyyy-MM-dd_HH:mm:ss").pstranscript.txt"