"C:\Program Files (x86)\Performance Systems\Green Energy Surveyor for NH Saves\Engine\unins000.exe" /SILENT

timeout /t 10

powershell.exe Remove-Item -LiteralPath "C:\Program Files (x86)\Performance Systems" -Force -Recurse