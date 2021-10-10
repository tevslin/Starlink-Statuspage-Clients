function SetUp-Folder{
    param([string]$FolderName)
    
    if ($(Test-Path $FolderName) -eq $true){
        "$FolderName already exists."
    }
    else{
          try {
            New-Item -Path $FolderName -ItemType Directory -ErrorAction Stop
             } 
           catch {
            throw "Could not create folder $FolderName!"
           }
        }
        
       

}
function DownloadFromRepo{
    param(
    [string]$file
    )
    $githubfolder="https://raw.githubusercontent.com/tevslin/Starlink-Statuspage-Clients/main"
    Invoke-WebRequest -Uri $githubfolder/$file -OutFile $starlinkfolder\$file -ErrorAction Stop -Verbose
}
$StarlinkFolder="C:\users\$env:USERNAME\documents\StarlinkScripts"

Setup-folder $starlinkfolder
DownloadFromRepo Install.ps1
DownloadFromRepo starlinkstatusstarter.ps1
unblock-file -path $Starlinkfolder/install.ps1
invoke-expression "$StarlinkFolder/Install.ps1"

