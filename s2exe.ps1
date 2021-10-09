$gitFolder="C:\users\$env:USERNAME\documents\github\starlink-statuspage-clients"

invoke-ps2exe $gitfolder\unschedulestarlinkstatus.ps1 $gitfolder/$UnscheduleStarlinkStatus.exe
invoke-ps2exe $gitfolder\schedulestarlinkstatus.ps1 $gitfolder/ScheduleStarlinkStatus.exe
invoke-ps2exe $gitfolder\starlinkstatusstarter.ps1 $gitfolder/StarlinkStatus$tarter.exe -noconsole