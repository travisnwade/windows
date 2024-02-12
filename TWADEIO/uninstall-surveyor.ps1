taskkill /F /IM Surveyor.exe /T
Start-Process -FilePath "C:\Program Files (x86)\Performance Systems\Green Energy Surveyor for NH Saves\Engine\unins000.exe" -ArgumentList "/SILENT"
Start-Sleep -Seconds 10
Remove-Item -LiteralPath "C:\Program Files (x86)\Performance Systems" -Force -Recurse
Remove-Item -LiteralPath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Green Energy Surveyor for NH Saves" -Force -Recurse