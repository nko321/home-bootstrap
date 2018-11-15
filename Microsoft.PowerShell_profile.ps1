Set-PSReadlineOption -BellStyle None
#$Host.PrivateData.ErrorForegroundColor = "Gray"
#$options = Get-PSReadlineOption
#[console]::ForegroundColor = "DarkGreen"
#[console]::BackgroundColor = "White"

#$options.DefaultTokenForegroundColor            = "DarkCyan"
#$options.CommentForegroundColor                 = "DarkGray"
#$options.KeywordForegroundColor                 = "Magenta"
#$options.StringForegroundColor                  = "DarkCyan"
#$options.OperatorForegroundColor                = "Magenta"
#$options.VariableForegroundColor                = "Green"
#$options.CommandForegroundColor                 = "DarkRed"
#$options.ParameterForegroundColor               = "Red"
#$options.TypeForegroundColor                    = "Gray"
#$options.NumberForegroundColor                  = "Blue"
#$options.MemberForegroundColor                  = "Black"
#$options.ErrorForegroundColor                   = "Red"
#$options.EmphasisForegroundColor                = "Cyan"
#$options.ContinuationPromptForegroundColor      = "Gray"
#
#$options.DefaultTokenBackgroundColor            = "White"
#$options.CommentBackgroundColor                 = "DarkYellow"
#$options.KeywordBackgroundColor                 = "White"
#$options.StringBackgroundColor                  = "White"
#$options.OperatorBackgroundColor                = "White"
#$options.VariableBackgroundColor                = "White"
#$options.CommandBackgroundColor                 = "White"
#$options.ParameterBackgroundColor               = "White"
#$options.TypeBackgroundColor                    = "White"
#$options.NumberBackgroundColor                  = "White"
#$options.MemberBackgroundColor                  = "White"
#$options.EmphasisBackgroundColor                = "DarkMagenta"
#$options.ErrorBackgroundColor                   = "DarkMagenta"
#$options.ContinuationPromptBackgroundColor      = "White"

function grep ($pattern){
        return (Get-ChildItem -Recurse *.* | Select-String -Pattern $pattern | Select-Object -Unique Path)
}

Function Play-Sound
{
    $sound = new-Object System.Media.SoundPlayer;
    $sound.SoundLocation="c:\WINDOWS\Media\notify.wav";
    $sound.Play();
}

Function Touch-File
{
    $file = $args[0]
    if($file -eq $null) {
        throw "No filename supplied"
    }

    if(Test-Path $file)
    {
        (Get-ChildItem $file).LastWriteTime = Get-Date
    }
    else
    {
        echo $null > $file
    }
}

Clear-Host
Start-Transcript