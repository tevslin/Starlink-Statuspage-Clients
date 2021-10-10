$gitFolder="C:\users\$env:USERNAME\documents\github\starlink-statuspage-clients"

invoke-ps2exe $gitfolder\unschedulestarlinkstatus.ps1 $gitfolder\UnscheduleStarlinkStatus.exe
invoke-ps2exe $gitfolder\schedulestarlinkstatus.ps1 $gitfolder\ScheduleStarlinkStatus.exe
invoke-ps2exe $gitfolder\starlinkprestart.ps1 $gitfolder\starlinkprestart.exe -noconsole
#invoke-ps2exe $gitfolder\install.ps1 $gitfolder\install.exe
invoke-ps2exe $gitfolder\starlinkinstaller.ps1 $gitfolder\StarlinkInstaller.exe
compress-archive -path $gitFolder\*starlink*.exe -DestinationPath $gitFolder\exes.zip -Force