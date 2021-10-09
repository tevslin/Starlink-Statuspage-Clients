$gitFolder="C:\users\$env:USERNAME\documents\github\starlink-statuspage-clients"

invoke-ps2exe $gitfolder\unschedulestarlinkstatus.ps1 $gitfolder/unschedulestarlinkstatus.exe
invoke-ps2exe $gitfolder\schedulestarlinkstatus.ps1 $gitfolder/schedulestarlinkstatus.exe
invoke-ps2exe $gitfolder\starlinkstatusstarter.ps1 $gitfolder/starlinkstatusstarter.exe -noconsole