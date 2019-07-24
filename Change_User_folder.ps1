$dirs = Get-ChildItem C:\Users\
ForEach ($dir in $dirs){
    $udir = "C:\Users\$dir\Documents"
    $picdir = "$udir\Eigene Bilder"
    $viddir = "$udir\Eigene Videos"
    $musdir = "$udir\Eigene Musik"

    if (Test-Path $picdir){
        Rename-Item $picdir -NewName "EigeneBilder"
        Write-Host "$picdir"
    }
        if (Test-Path $viddir){
        Rename-Item $viddir -NewName "EigeneVideos"
        Write-Host "$viddir"
    }
    if (Test-Path $musdir){
        Rename-Item $musdir -NewName "EigeneMusik"
        Write-Host "$musdir"
    }
}