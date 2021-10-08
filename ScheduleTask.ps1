$StarlinkFolder="C:\users\$env:USERNAME\documents\StarlinkScripts"
schtasks /create /sc minute /mo 15 /tn testy /tr "powershell.exe -windowstyle hidden $StarlinkFolder\runspeedtest.ps1"