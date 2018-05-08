Param( 
        [string] 
        $DC
    , 
        [string] 
        $SFB 
    ) 

New-Item -ItemType File -Path "C:\cc4skype_info.txt" -Force

$DC | Out-File "C:\cc4skype_info.txt" -Append

$SFB | Out-File "C:\cc4skype_info.txt" -Append

powerShell.exe -NonInteractive -NoProfile -ExecutionPolicy Bypass ./install-cc4skype.ps1 -DC $DC -SFB $SFB
