#
# Script module for module 'AzureRM.Automation' that is executed when 'AzureRM.Automation' is imported in a PowerShell session.
#
# Generated by: Microsoft Corporation
#
# Generated on: 11/21/2018 02:14:36
#

$PSDefaultParameterValues.Clear()
Set-StrictMode -Version Latest

function Test-DotNet
{
    try
    {
        if ((Get-PSDrive 'HKLM' -ErrorAction Ignore) -and (-not (Get-ChildItem 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full\' -ErrorAction Stop | Get-ItemPropertyValue -ErrorAction Stop -Name Release | Where { $_ -ge 461808 })))
        {
            throw ".NET Framework versions lower than 4.7.2 are not supported in Az.  Please upgrade to .NET Framework 4.7.2 or higher."
        }
    }
    catch [System.Management.Automation.DriveNotFoundException]
    {
        Write-Verbose ".NET Framework version check failed."
    }
}

if ($false -and ($PSEdition -eq 'Desktop'))
{
    if ($PSVersionTable.PSVersion -lt [Version]'5.1')
    {
        throw "PowerShell versions lower than 5.1 are not supported in Az. Please upgrade to PowerShell 5.1 or higher."
    }

    Test-DotNet
}

if (Test-Path -Path "$PSScriptRoot\StartupScripts" -ErrorAction Ignore)
{
    Get-ChildItem "$PSScriptRoot\StartupScripts" -ErrorAction Stop | ForEach-Object {
        . $_.FullName
    }
}

if (Get-Module Az.profile -ErrorAction Ignore)
{
    Write-Warning "Az.Profile already loaded. Az and AzureRM module cannot be run side-by-side, please run 'Uninstall-AzureRm' to remove all AzureRm modules from your machine. More information can be found here: https://aka.ms/azps-migration-guide"
    throw "Az.Profile already loaded. Az and AzureRM module cannot be run side-by-side, please run 'Uninstall-AzureRm' to remove all AzureRm modules from your machine. More information can be found here: https://aka.ms/azps-migration-guide"
}

$preloadPath = (Join-Path $PSScriptRoot -ChildPath "PreloadAssemblies")
if($PSEdition -eq 'Desktop' -and (Test-Path $preloadPath -ErrorAction Ignore))
{
    try
    {
        Get-ChildItem -ErrorAction Stop -Path $preloadPath -Filter "*.dll" | ForEach-Object {
            Add-Type -Path $_.FullName -ErrorAction Ignore | Out-Null
        }
    }
    catch {}
}

$netCorePath = (Join-Path $PSScriptRoot -ChildPath "NetCoreAssemblies")
if($PSEdition -eq 'Core' -and (Test-Path $netCorePath -ErrorAction Ignore))
{
    try
    {
        $loadedAssemblies = ([System.AppDomain]::CurrentDomain.GetAssemblies() | %{New-Object -TypeName System.Reflection.AssemblyName -ArgumentList $_.FullName} )
        Get-ChildItem -ErrorAction Stop -Path $netCorePath -Filter "*.dll" | ForEach-Object {
            $assemblyName = ([System.Reflection.AssemblyName]::GetAssemblyName($_.FullName))
            $matches = ($loadedAssemblies | Where-Object {$_.Name -eq $assemblyName.Name})
            if (-not $matches)
            {
                Add-Type -Path $_.FullName -ErrorAction Ignore | Out-Null
            }
        }
    }
    catch {}
}


$module = Get-Module AzureRM.Profile 
if ($module -ne $null -and $module.Version.ToString().CompareTo("5.8.2") -lt 0) 
{ 
    Write-Error "This module requires AzureRM.Profile version 5.8.2. An earlier version of AzureRM.Profile is imported in the current PowerShell session. Please open a new session before importing this module. This error could indicate that multiple incompatible versions of the Azure PowerShell cmdlets are installed on your system. Please see https://aka.ms/azps-version-error for troubleshooting information." -ErrorAction Stop 
} 
elseif ($module -eq $null) 
{ 
    Import-Module AzureRM.Profile -MinimumVersion 5.8.2 -Scope Global 
}
Import-Module (Join-Path -Path $PSScriptRoot -ChildPath Microsoft.Azure.Commands.Automation.dll)


$FilteredCommands = @('Get-AzureRmAutomationHybridWorkerGroup:ResourceGroupName','Get-AzureRmAutomationJobOutputRecord:ResourceGroupName','Get-AzureRmAutomationSourceControl:ResourceGroupName','Get-AzureRmAutomationSourceControlSyncJob:ResourceGroupName','Get-AzureRmAutomationSourceControlSyncJobOutput:ResourceGroupName','Import-AzureRmAutomationDscNodeConfiguration:ResourceGroupName','Export-AzureRmAutomationDscConfiguration:ResourceGroupName','Export-AzureRmAutomationDscNodeReportContent:ResourceGroupName','Get-AzureRmAutomationCertificate:ResourceGroupName','Get-AzureRmAutomationConnection:ResourceGroupName','Get-AzureRmAutomationCredential:ResourceGroupName','Get-AzureRmAutomationDscCompilationJob:ResourceGroupName','Get-AzureRmAutomationDscCompilationJobOutput:ResourceGroupName','Get-AzureRmAutomationDscNodeConfiguration:ResourceGroupName','Get-AzureRmAutomationDscNodeReport:ResourceGroupName','Get-AzureRmAutomationJob:ResourceGroupName','Get-AzureRmAutomationJobOutput:ResourceGroupName','Get-AzureRmAutomationModule:ResourceGroupName','Get-AzureRmAutomationRunbook:ResourceGroupName','Export-AzureRmAutomationRunbook:ResourceGroupName','Get-AzureRmAutomationSchedule:ResourceGroupName','Get-AzureRmAutomationScheduledRunbook:ResourceGroupName','Get-AzureRmAutomationVariable:ResourceGroupName','Get-AzureRmAutomationWebhook:ResourceGroupName','New-AzureRmAutomationCertificate:ResourceGroupName','New-AzureRmAutomationConnection:ResourceGroupName','New-AzureRmAutomationCredential:ResourceGroupName','New-AzureRmAutomationModule:ResourceGroupName','New-AzureRmAutomationRunbook:ResourceGroupName','New-AzureRmAutomationSchedule:ResourceGroupName','New-AzureRmAutomationSourceControl:ResourceGroupName','New-AzureRmAutomationVariable:ResourceGroupName','New-AzureRmAutomationWebhook:ResourceGroupName','Publish-AzureRmAutomationRunbook:ResourceGroupName','Register-AzureRmAutomationDscNode:ResourceGroupName','Register-AzureRmAutomationScheduledRunbook:ResourceGroupName','Remove-AzureRmAutomationCertificate:ResourceGroupName','Remove-AzureRmAutomationConnectionType:ResourceGroupName','Remove-AzureRmAutomationConnection:ResourceGroupName','Remove-AzureRmAutomationHybridWorkerGroup:ResourceGroupName','Remove-AzureRmAutomationCredential:ResourceGroupName','Remove-AzureRmAutomationDscNodeConfiguration:ResourceGroupName','Remove-AzureRmAutomationModule:ResourceGroupName','Remove-AzureRmAutomationRunbook:ResourceGroupName','Remove-AzureRmAutomationSchedule:ResourceGroupName','Remove-AzureRmAutomationSourceControl:ResourceGroupName','Remove-AzureRmAutomationVariable:ResourceGroupName','Remove-AzureRmAutomationDscConfiguration:ResourceGroupName','Remove-AzureRmAutomationWebhook:ResourceGroupName','Resume-AzureRmAutomationJob:ResourceGroupName','Set-AzureRmAutomationCertificate:ResourceGroupName','Set-AzureRmAutomationConnectionFieldValue:ResourceGroupName','Set-AzureRmAutomationCredential:ResourceGroupName','Set-AzureRmAutomationModule:ResourceGroupName','Set-AzureRmAutomationRunbook:ResourceGroupName','Import-AzureRmAutomationRunbook:ResourceGroupName','Set-AzureRmAutomationSchedule:ResourceGroupName','Set-AzureRmAutomationVariable:ResourceGroupName','Set-AzureRmAutomationWebhook:ResourceGroupName','Start-AzureRmAutomationDscCompilationJob:ResourceGroupName','Get-AzureRmAutomationRegistrationInfo:ResourceGroupName','Get-AzureRmAutomationDscConfiguration:ResourceGroupName','Get-AzureRmAutomationDscNode:ResourceGroupName','Get-AzureRmAutomationDscOnboardingMetaconfig:ResourceGroupName','Import-AzureRmAutomationDscConfiguration:ResourceGroupName','New-AzureRmAutomationKey:ResourceGroupName','Start-AzureRmAutomationRunbook:ResourceGroupName','Start-AzureRmAutomationSourceControlSyncJob:ResourceGroupName','Stop-AzureRmAutomationJob:ResourceGroupName','Start-AzureRmAutomationDscNodeConfigurationDeployment:ResourceGroupName','Get-AzureRmAutomationDscNodeConfigurationDeployment:ResourceGroupName','Get-AzureRmAutomationDscNodeConfigurationDeploymentSchedule:ResourceGroupName','Stop-AzureRmAutomationDscNodeConfigurationDeployment:ResourceGroupName','Suspend-AzureRmAutomationJob:ResourceGroupName','Unregister-AzureRmAutomationDscNode:ResourceGroupName','Set-AzureRmAutomationAccount:ResourceGroupName','Remove-AzureRmAutomationAccount:ResourceGroupName','New-AzureRmAutomationAccount:ResourceGroupName','Set-AzureRmAutomationDscNode:ResourceGroupName','Unregister-AzureRmAutomationScheduledRunbook:ResourceGroupName','Get-AzureRmAutomationSoftwareUpdateConfiguration:ResourceGroupName','Get-AzureRmAutomationSoftwareUpdateMachineRun:ResourceGroupName','Get-AzureRmAutomationSoftwareUpdateRun:ResourceGroupName','Update-AzureRmAutomationSourceControl:ResourceGroupName','New-AzureRmAutomationSoftwareUpdateConfiguration:ResourceGroupName','Remove-AzureRmAutomationSoftwareUpdateConfiguration:ResourceGroupName')

if ($Env:ACC_CLOUD -eq $null)
{
    $FilteredCommands | ForEach-Object {

        $existingDefault = $false
        foreach ($key in $global:PSDefaultParameterValues.Keys)
        {
    	    if ($_ -like "$key")
    	        {
        	    $existingDefault = $true
    	        }
	    }

        if (!$existingDefault)
        {
            $global:PSDefaultParameterValues.Add($_,
                {
                    if ((Get-Command Get-AzContext -ErrorAction Ignore) -eq $null)
                    {
                        $context = Get-AzureRmContext
                    }
                    else
                    {
                        $context = Get-AzContext
                    }
                    if (($context -ne $null) -and $context.ExtendedProperties.ContainsKey("Default Resource Group")) {
                        $context.ExtendedProperties["Default Resource Group"]
                    }
                })
        }
    }
}

# SIG # Begin signature block
# MIIkZQYJKoZIhvcNAQcCoIIkVjCCJFICAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBX8g0vakb0njJ5
# rNX3AByjLq2hnMC3/V/u9uyr8E0Fi6CCDYEwggX/MIID56ADAgECAhMzAAABA14l
# HJkfox64AAAAAAEDMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMTgwNzEyMjAwODQ4WhcNMTkwNzI2MjAwODQ4WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDRlHY25oarNv5p+UZ8i4hQy5Bwf7BVqSQdfjnnBZ8PrHuXss5zCvvUmyRcFrU5
# 3Rt+M2wR/Dsm85iqXVNrqsPsE7jS789Xf8xly69NLjKxVitONAeJ/mkhvT5E+94S
# nYW/fHaGfXKxdpth5opkTEbOttU6jHeTd2chnLZaBl5HhvU80QnKDT3NsumhUHjR
# hIjiATwi/K+WCMxdmcDt66VamJL1yEBOanOv3uN0etNfRpe84mcod5mswQ4xFo8A
# DwH+S15UD8rEZT8K46NG2/YsAzoZvmgFFpzmfzS/p4eNZTkmyWPU78XdvSX+/Sj0
# NIZ5rCrVXzCRO+QUauuxygQjAgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUR77Ay+GmP/1l1jjyA123r3f3QP8w
# UAYDVR0RBEkwR6RFMEMxKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1
# ZXJ0byBSaWNvMRYwFAYDVQQFEw0yMzAwMTIrNDM3OTY1MB8GA1UdIwQYMBaAFEhu
# ZOVQBdOCqhc3NyK1bajKdQKVMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0w
# Ny0wOC5jcmwwYQYIKwYBBQUHAQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAx
# MS0wNy0wOC5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAn/XJ
# Uw0/DSbsokTYDdGfY5YGSz8eXMUzo6TDbK8fwAG662XsnjMQD6esW9S9kGEX5zHn
# wya0rPUn00iThoj+EjWRZCLRay07qCwVlCnSN5bmNf8MzsgGFhaeJLHiOfluDnjY
# DBu2KWAndjQkm925l3XLATutghIWIoCJFYS7mFAgsBcmhkmvzn1FFUM0ls+BXBgs
# 1JPyZ6vic8g9o838Mh5gHOmwGzD7LLsHLpaEk0UoVFzNlv2g24HYtjDKQ7HzSMCy
# RhxdXnYqWJ/U7vL0+khMtWGLsIxB6aq4nZD0/2pCD7k+6Q7slPyNgLt44yOneFuy
# bR/5WcF9ttE5yXnggxxgCto9sNHtNr9FB+kbNm7lPTsFA6fUpyUSj+Z2oxOzRVpD
# MYLa2ISuubAfdfX2HX1RETcn6LU1hHH3V6qu+olxyZjSnlpkdr6Mw30VapHxFPTy
# 2TUxuNty+rR1yIibar+YRcdmstf/zpKQdeTr5obSyBvbJ8BblW9Jb1hdaSreU0v4
# 6Mp79mwV+QMZDxGFqk+av6pX3WDG9XEg9FGomsrp0es0Rz11+iLsVT9qGTlrEOla
# P470I3gwsvKmOMs1jaqYWSRAuDpnpAdfoP7YO0kT+wzh7Qttg1DO8H8+4NkI6Iwh
# SkHC3uuOW+4Dwx1ubuZUNWZncnwa6lL2IsRyP64wggd6MIIFYqADAgECAgphDpDS
# AAAAAAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0
# ZSBBdXRob3JpdHkgMjAxMTAeFw0xMTA3MDgyMDU5MDlaFw0yNjA3MDgyMTA5MDla
# MH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMT
# H01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTEwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQCr8PpyEBwurdhuqoIQTTS68rZYIZ9CGypr6VpQqrgG
# OBoESbp/wwwe3TdrxhLYC/A4wpkGsMg51QEUMULTiQ15ZId+lGAkbK+eSZzpaF7S
# 35tTsgosw6/ZqSuuegmv15ZZymAaBelmdugyUiYSL+erCFDPs0S3XdjELgN1q2jz
# y23zOlyhFvRGuuA4ZKxuZDV4pqBjDy3TQJP4494HDdVceaVJKecNvqATd76UPe/7
# 4ytaEB9NViiienLgEjq3SV7Y7e1DkYPZe7J7hhvZPrGMXeiJT4Qa8qEvWeSQOy2u
# M1jFtz7+MtOzAz2xsq+SOH7SnYAs9U5WkSE1JcM5bmR/U7qcD60ZI4TL9LoDho33
# X/DQUr+MlIe8wCF0JV8YKLbMJyg4JZg5SjbPfLGSrhwjp6lm7GEfauEoSZ1fiOIl
# XdMhSz5SxLVXPyQD8NF6Wy/VI+NwXQ9RRnez+ADhvKwCgl/bwBWzvRvUVUvnOaEP
# 6SNJvBi4RHxF5MHDcnrgcuck379GmcXvwhxX24ON7E1JMKerjt/sW5+v/N2wZuLB
# l4F77dbtS+dJKacTKKanfWeA5opieF+yL4TXV5xcv3coKPHtbcMojyyPQDdPweGF
# RInECUzF1KVDL3SV9274eCBYLBNdYJWaPk8zhNqwiBfenk70lrC8RqBsmNLg1oiM
# CwIDAQABo4IB7TCCAekwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFEhuZOVQ
# BdOCqhc3NyK1bajKdQKVMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1Ud
# DwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFHItOgIxkEO5FAVO
# 4eqnxzHRI4k0MFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwubWljcm9zb2Z0
# LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcmwwXgYIKwYBBQUHAQEEUjBQME4GCCsGAQUFBzAChkJodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcnQwgZ8GA1UdIASBlzCBlDCBkQYJKwYBBAGCNy4DMIGDMD8GCCsGAQUFBwIB
# FjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2RvY3MvcHJpbWFyeWNw
# cy5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AcABvAGwAaQBjAHkA
# XwBzAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIBAGfyhqWY
# 4FR5Gi7T2HRnIpsLlhHhY5KZQpZ90nkMkMFlXy4sPvjDctFtg/6+P+gKyju/R6mj
# 82nbY78iNaWXXWWEkH2LRlBV2AySfNIaSxzzPEKLUtCw/WvjPgcuKZvmPRul1LUd
# d5Q54ulkyUQ9eHoj8xN9ppB0g430yyYCRirCihC7pKkFDJvtaPpoLpWgKj8qa1hJ
# Yx8JaW5amJbkg/TAj/NGK978O9C9Ne9uJa7lryft0N3zDq+ZKJeYTQ49C/IIidYf
# wzIY4vDFLc5bnrRJOQrGCsLGra7lstnbFYhRRVg4MnEnGn+x9Cf43iw6IGmYslmJ
# aG5vp7d0w0AFBqYBKig+gj8TTWYLwLNN9eGPfxxvFX1Fp3blQCplo8NdUmKGwx1j
# NpeG39rz+PIWoZon4c2ll9DuXWNB41sHnIc+BncG0QaxdR8UvmFhtfDcxhsEvt9B
# xw4o7t5lL+yX9qFcltgA1qFGvVnzl6UJS0gQmYAf0AApxbGbpT9Fdx41xtKiop96
# eiL6SJUfq/tHI4D1nvi/a7dLl+LrdXga7Oo3mXkYS//WsyNodeav+vyL6wuA6mk7
# r/ww7QRMjt/fdW1jkT3RnVZOT7+AVyKheBEyIXrvQQqxP/uozKRdwaGIm1dxVk5I
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIWOjCCFjYCAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAQNeJRyZH6MeuAAAAAABAzAN
# BglghkgBZQMEAgEFAKCBzDAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgN4GimNt9
# /wmdbFZBeR3YLFV3UwTTt/LMLCysq9gjsdQwYAYKKwYBBAGCNwIBDDFSMFCgNoA0
# AE0AaQBjAHIAbwBzAG8AZgB0ACAAQQB6AHUAcgBlACAAUABvAHcAZQByAFMAaABl
# AGwAbKEWgBRodHRwOi8vQ29kZVNpZ25JbmZvIDANBgkqhkiG9w0BAQEFAASCAQDF
# sK95bU39q+zZFfxSvXI97+ABrx9VqH+SaK+4QdmDw2EPGkK7MqeL0hgK1/Hx5irC
# d/KcorXFzPIju+Xwm7aH7ofs0Cqotc2aVgr49N8jl7G5q6hvNtyfOD6ioqQpSFCm
# zPtJiFuhxg52bJBo9OPK2OuW99fwWhX7UUGUp17TL7VQxKwHk/4ixIAkcBDZEFc5
# aUDkHj3oWzEVT8xdeBA7XHr5btDLsk1YSSjUv1BwTRFPyTEq/leaGghsEbDnqi22
# PcFYmGzJm8/59YmsKRCilJMyIPrkmzgv+JX/Zl5JB/fwMMkTb5MWhaI/wJrrCamb
# XfsPmzU/OSEJQNOZ7Gw/oYITpjCCE6IGCisGAQQBgjcDAwExghOSMIITjgYJKoZI
# hvcNAQcCoIITfzCCE3sCAQMxDzANBglghkgBZQMEAgEFADCCAVQGCyqGSIb3DQEJ
# EAEEoIIBQwSCAT8wggE7AgEBBgorBgEEAYRZCgMBMDEwDQYJYIZIAWUDBAIBBQAE
# IFPfWqUdlfg5aIcnbAL26Fr0yqvPHXG0m4O4BqS4uhINAgZb26k5s6QYEzIwMTgx
# MTIxMDIxNzA5LjY1OFowBwIBAYACAfSggdCkgc0wgcoxCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1pY3Jvc29mdCBBbWVyaWNh
# IE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjdBQjUtMkRGMi1E
# QTNGMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloIIPEjCC
# BnEwggRZoAMCAQICCmEJgSoAAAAAAAIwDQYJKoZIhvcNAQELBQAwgYgxCzAJBgNV
# BAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4w
# HAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29m
# dCBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eSAyMDEwMB4XDTEwMDcwMTIxMzY1
# NVoXDTI1MDcwMTIxNDY1NVowfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAw
# ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCpHQ28dxGKOiDs/BOX9fp/
# aZRrdFQQ1aUKAIKF++18aEssX8XD5WHCdrc+Zitb8BVTJwQxH0EbGpUdzgkTjnxh
# MFmxMEQP8WCIhFRDDNdNuDgIs0Ldk6zWczBXJoKjRQ3Q6vVHgc2/JGAyWGBG8lhH
# hjKEHnRhZ5FfgVSxz5NMksHEpl3RYRNuKMYa+YaAu99h/EbBJx0kZxJyGiGKr0tk
# iVBisV39dx898Fd1rL2KQk1AUdEPnAY+Z3/1ZsADlkR+79BL/W7lmsqxqPJ6Kgox
# 8NpOBpG2iAg16HgcsOmZzTznL0S6p/TcZL2kAcEgCZN4zfy8wMlEXV4WnAEFTyJN
# AgMBAAGjggHmMIIB4jAQBgkrBgEEAYI3FQEEAwIBADAdBgNVHQ4EFgQU1WM6XIox
# kPNDe3xGG8UzaFqFbVUwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0P
# BAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9
# lJBb186aGMQwVgYDVR0fBE8wTTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQu
# Y29tL3BraS9jcmwvcHJvZHVjdHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3Js
# MFoGCCsGAQUFBwEBBE4wTDBKBggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3Nv
# ZnQuY29tL3BraS9jZXJ0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwgaAG
# A1UdIAEB/wSBlTCBkjCBjwYJKwYBBAGCNy4DMIGBMD0GCCsGAQUFBwIBFjFodHRw
# Oi8vd3d3Lm1pY3Jvc29mdC5jb20vUEtJL2RvY3MvQ1BTL2RlZmF1bHQuaHRtMEAG
# CCsGAQUFBwICMDQeMiAdAEwAZQBnAGEAbABfAFAAbwBsAGkAYwB5AF8AUwB0AGEA
# dABlAG0AZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQAH5ohRDeLG4Jg/gXED
# PZ2joSFvs+umzPUxvs8F4qn++ldtGTCzwsVmyWrf9efweL3HqJ4l4/m87WtUVwgr
# UYJEEvu5U4zM9GASinbMQEBBm9xcF/9c+V4XNZgkVkt070IQyK+/f8Z/8jd9Wj8c
# 8pl5SpFSAK84Dxf1L3mBZdmptWvkx872ynoAb0swRCQiPM/tA6WWj1kpvLb9BOFw
# nzJKJ/1Vry/+tuWOM7tiX5rbV0Dp8c6ZZpCM/2pif93FSguRJuI57BlKcWOdeyFt
# w5yjojz6f32WapB4pm3S4Zz5Hfw42JT0xqUKloakvZ4argRCg7i1gJsiOCC1JeVk
# 7Pf0v35jWSUPei45V3aicaoGig+JFrphpxHLmtgOR5qAxdDNp9DvfYPw4TtxCd9d
# dJgiCGHasFAeb73x4QDf5zEHpJM692VHeOj4qEir995yfmFrb3epgcunCaw5u+zG
# y9iCtHLNHfS4hQEegPsbiSpUObJb2sgNVZl6h3M7COaYLeqN4DMuEin1wC9UJyH3
# yKxO2ii4sanblrKnQqLJzxlBTeCG+SqaoxFmMNO7dDJL32N79ZmKLxvHIa9Zta7c
# RDyXUHHXodLFVeNp3lfB0d4wwP3M5k37Db9dT+mdHhk4L7zPWAUu7w2gUDXa7wkn
# HNWzfjUeCLraNtvTX4/edIhJEjCCBPEwggPZoAMCAQICEzMAAADpO9G3W45LuewA
# AAAAAOkwDQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIw
# MTAwHhcNMTgwODIzMjAyNzE2WhcNMTkxMTIzMjAyNzE2WjCByjELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFt
# ZXJpY2EgT3BlcmF0aW9uczEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046N0FCNS0y
# REYyLURBM0YxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Uw
# ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCEbLhORLQrWCF5OJdQioVI
# bI8ssFvGDwd77gP01cOmKb4wk53SwdnnU9fSvbS25lAEeimDlCCGvWdB/LY9G04C
# RY9+3LQgGl6fYHJpnkM6WlW8j5aRqlT/oHvMG3v5IDPrdCMDEgpCS2YAOH0XYuPB
# 88bpFyfmE/bq/DMWR4bjCwXHc7aXY5yf2mlm45bvOUWjZiGOvlwQB05ZOsNqNKXc
# mwUGOZgINNlxwmBcSt++u0Ll8FiVrrpRonWyCLt1n3ENoc2V4rnYcG3QUp7Gua9B
# E9Q3lUbMI+tke9+6mob7NbwyUKgyN0tPtjvnnw+3lmyhWyBFHll4kJMs6/W+ccix
# AgMBAAGjggEbMIIBFzAdBgNVHQ4EFgQUjwYhP3XINtJhnqsKMSgQd9wtMdwwHwYD
# VR0jBBgwFoAU1WM6XIoxkPNDe3xGG8UzaFqFbVUwVgYDVR0fBE8wTTBLoEmgR4ZF
# aHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWljVGlt
# U3RhUENBXzIwMTAtMDctMDEuY3JsMFoGCCsGAQUFBwEBBE4wTDBKBggrBgEFBQcw
# AoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNUaW1TdGFQ
# Q0FfMjAxMC0wNy0wMS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEF
# BQcDCDANBgkqhkiG9w0BAQsFAAOCAQEAnn85EdQCCtJ7MTt1tFcNY85ZJZNG+YRs
# 50Hv1oWTeKYHrUqNbMBT28xiPF7WD+Q2osgebUXzOeSPhbZzo55SlCvr0/8rvmS+
# JVmJPB5YiAIovcYbxOX/6UfM6JKK6qQ49m+H8sjjXsT96dWbuIQNGXdjT9OLMwmZ
# U53hdlwjluM1ivfq4Ut5pGrkPG9mBY5rd6XtgJolhYFzMZUCyuwC9tOmEGK1MjLz
# Tr/4MvTMy0+SBBVgMs9NBsPDayrmMoPdCpdaCmBRkjIyoOh5/KOCOqTZNs38X5RV
# VTUI441vJ3dKGACCEwYKPmlyg6ZXPgAcPdkbzouvvrIPNQ0MCNNuVaGCA6QwggKM
# AgEBMIH6oYHQpIHNMIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYD
# VQQLEx1UaGFsZXMgVFNTIEVTTjo3QUI1LTJERjItREEzRjElMCMGA1UEAxMcTWlj
# cm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaIlCgEBMAkGBSsOAwIaBQADFQCekRsl
# fxdhZHlY3hUcTLrvtpEolKCB2jCB16SB1DCB0TELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3Bl
# cmF0aW9uczEnMCUGA1UECxMebkNpcGhlciBOVFMgRVNOOjI2NjUtNEMzRi1DNURF
# MSswKQYDVQQDEyJNaWNyb3NvZnQgVGltZSBTb3VyY2UgTWFzdGVyIENsb2NrMA0G
# CSqGSIb3DQEBBQUAAgUA3577fTAiGA8yMDE4MTEyMDIxMzAzN1oYDzIwMTgxMTIx
# MjEzMDM3WjBzMDkGCisGAQQBhFkKBAExKzApMAoCBQDfnvt9AgEAMAYCAQACAQMw
# BwIBAAICGfIwCgIFAN+gTP0CAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYBBAGE
# WQoDAaAKMAgCAQACAxbjYKEKMAgCAQACAwehIDANBgkqhkiG9w0BAQUFAAOCAQEA
# B3K47BfvqWN/4RATJd0x5oosOtpR3JP5aZswCmXf1gM6wtNqWMzLjEsifEELxCBP
# j/L5WzfE9Nep9XxhAG5Ggh8M4g0PtasBEUGHG6hUKOq3weqh0dcfgVBoiZEdb91E
# HUT7gZe8BinBcJkWwPhRqIuP8wyAIRVUDYFk9eI0rDH6Wo0zktRJZa8c27uV7cJV
# BNxumHdtyb5Hap0BP1VhMKznH3QKRaUfsk+/GYoSsQX5O3/ZnAibf0ejzSoTQl25
# j1Uyaw/hpQ+Pqog1ZuAKF0xgPM4pxo7E4hHWo+KkvUVvYblvMnG6sSkBYBVMapTX
# bZx1vV8qPREaOekdwY+7PzGCAvUwggLxAgEBMIGTMHwxCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0
# YW1wIFBDQSAyMDEwAhMzAAAA6TvRt1uOS7nsAAAAAADpMA0GCWCGSAFlAwQCAQUA
# oIIBMjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQAQQwLwYJKoZIhvcNAQkEMSIE
# INh1Mfr9ukQf9wr+qbj7fZAewHJANGzAh6m2wofHiloNMIHiBgsqhkiG9w0BCRAC
# DDGB0jCBzzCBzDCBsQQUnpEbJX8XYWR5WN4VHEy677aRKJQwgZgwgYCkfjB8MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNy
# b3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAOk70bdbjku57AAAAAAA6TAW
# BBTjng1D9UilGJ15ZIdcgGgKsz612zANBgkqhkiG9w0BAQsFAASCAQAT7ommOVBc
# kqIzl6beSBhZBHXBSNRhukTzc3xky5D9ztMFUtOX2OCAhXf+TnFNGjhWImi/ZyFT
# O+Fyu/EZ5l7E9KXVK59M6CM0zcquUz8R83BFG2/d/nHLZD4QJctWulcRRiSMhhPH
# JbVkP69HbabQ7JTV2OT0yBHd1Pgt76al/bXvOd89YZOVs/5gSJOrqiTVxCLw0Evy
# 71jc4Pcm6YJOzXQ7JMg+CzNIPxlNtwNML7IuPAxSPsJ0y2prDJoqanlQva61W2RZ
# j3vkw9/TS8kabPyniRydUEL11GOn8Ht2Aj02VgRHvDxNI6WpHoxn5ef84rzXqx15
# w+u/M1uiyc5N
# SIG # End signature block
