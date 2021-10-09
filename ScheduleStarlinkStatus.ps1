$StarlinkFolder="C:\users\$env:USERNAME\documents\StarlinkScripts"
schtasks /create /sc minute /mo 15 /tn starlinkstatus /tr "$StarlinkFolder\starlinkstatusstarter.exe" /f