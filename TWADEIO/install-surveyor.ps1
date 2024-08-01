# FYI: Surveyor is a fucking terrible application.  
# Install it if you want, but it's really bad and I do not recommend. 
# But someone I know needed it and because I'm lazy, I wanted an 
# an easy way to install it that required as little as possible from me.
# Thanks for reading my TED talk. Bye.

mkdir -Force c:\TEMP

$url = "https://files.twade.io/installers/exe/Surveyor.Installer.exe"
$output = "c:\TEMP\Surveyor.Installer.exe"

Invoke-WebRequest -Uri $url -OutFile $output

Start-Process -Wait -FilePath "c:\TEMP\Surveyor.Installer.exe" -ArgumentList "/verysilent /suppressmessagebox /norestart" -PassThru