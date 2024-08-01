mkdir -Force c:\TEMP

reg export HKEY_LOCAL_MACHINE\SOFTWARE C:/TEMP/before-chrome-policy-update.reg

$url = "https://files.twade.io/policy/reg/chrome/chrome-default.reg"
$output = "c:\TEMP\chrome-default.reg"

Invoke-WebRequest -Uri $url -OutFile $output

reg import "c:\TEMP\chrome-default.reg"