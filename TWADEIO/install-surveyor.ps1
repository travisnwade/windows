md -Force c:\TEMP

$url = "https://files.twade.io/installers/exe/Surveyor.Installer.exe"
$output = "c:\TEMP\Surveyor.Installer.exe"

Invoke-WebRequest -Uri $url -OutFile $output

Start-Process -Wait -FilePath "c:\TEMP\Surveyor.Installer.exe" -ArgumentList "/verysilent /suppressmessagebox /norestart" -PassThru