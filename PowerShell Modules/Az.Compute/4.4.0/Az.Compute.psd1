#
# Module manifest for module 'Az.Compute'
#
# Generated by: Microsoft Corporation
#
# Generated on: 9/15/2020
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Az.Compute.psm1'

# Version number of this module.
ModuleVersion = '4.4.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'd4cb9989-9ed1-49c2-bacd-0f8daf758671'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Compute service cmdlets for Azure Resource Manager in Windows PowerShell and PowerShell Core.  Manages virtual machines, hosted services, and related resources in Azure Resource Manager.

For more information on Virtual Machines, please visit the following: https://docs.microsoft.com/azure/virtual-machines/
For more information on Virtual Machine Scale Sets, please visit the following: https://docs.microsoft.com/azure/virtual-machine-scale-sets/'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = 'AutoMapper.dll', 'Microsoft.Azure.Management.Compute.dll', 
               'Microsoft.WindowsAzure.Storage.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'Compute.format.ps1xml', 'Compute.generated.format.ps1xml', 
               'Compute.Automation.generated.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Remove-AzAvailabilitySet', 'Get-AzAvailabilitySet', 
               'New-AzAvailabilitySet', 'Update-AzAvailabilitySet', 
               'Get-AzVMExtensionImageType', 'Get-AzVMExtensionImage', 
               'Get-AzVMADDomainExtension', 'Set-AzVMADDomainExtension', 
               'Get-AzVMAEMExtension', 'Remove-AzVMAEMExtension', 
               'Set-AzVMAEMExtension', 'Test-AzVMAEMExtension', 
               'Set-AzVMBginfoExtension', 'Get-AzVMCustomScriptExtension', 
               'Remove-AzVMCustomScriptExtension', 'Set-AzVMCustomScriptExtension', 
               'Get-AzVMDiagnosticsExtension', 'Remove-AzVMDiagnosticsExtension', 
               'Remove-AzVmssDiagnosticsExtension', 'Set-AzVMDiagnosticsExtension', 
               'Set-AzVMExtension', 'Remove-AzVMExtension', 'Get-AzVMExtension', 
               'Get-AzVMSqlServerExtension', 'New-AzVMSqlServerAutoBackupConfig', 
               'New-AzVMSqlServerAutoPatchingConfig', 
               'New-AzVMSqlServerKeyVaultCredentialConfig', 
               'Remove-AzVMSqlServerExtension', 'Set-AzVMSqlServerExtension', 
               'Get-AzVMImage', 'Get-AzVMAccessExtension', 
               'Remove-AzVMAccessExtension', 'Set-AzVMAccessExtension', 
               'Get-AzVMImageSku', 'Get-AzVMImagePublisher', 'Get-AzVMImageOffer', 
               'Get-AzRemoteDesktopFile', 'Get-AzVMUsage', 'Get-AzVMSize', 
               'Save-AzVMImage', 'Set-AzVM', 'Add-AzVMAdditionalUnattendContent', 
               'Add-AzVMSshPublicKey', 'Add-AzVMSecret', 'Remove-AzVMSecret', 
               'Remove-AzVMNetworkInterface', 'Remove-AzVMDataDisk', 
               'Set-AzVMBootDiagnostic', 'Set-AzVMDataDisk', 'Set-AzVMPlan', 
               'Set-AzVMSourceImage', 'Set-AzVMOSDisk', 
               'Get-AzVMBootDiagnosticsData', 'Get-AzVM', 'Update-AzVM', 
               'Restart-AzVM', 'New-AzVM', 'Start-AzVM', 'Stop-AzVM', 'Remove-AzVM', 
               'New-AzVMConfig', 'Set-AzVMOperatingSystem', 'Add-AzVMDataDisk', 
               'Add-AzVMNetworkInterface', 'Add-AzVhd', 'Save-AzVhd', 
               'Add-AzContainerServiceAgentPoolProfile', 
               'New-AzContainerServiceConfig', 
               'Remove-AzContainerServiceAgentPoolProfile', 
               'New-AzContainerService', 'Update-AzContainerService', 
               'Remove-AzContainerService', 'Get-AzContainerService', 'Get-AzVmssVM', 
               'Set-AzVmssVM', 'Add-AzVmssAdditionalUnattendContent', 
               'Add-AzVmssExtension', 'Add-AzVmssDataDisk', 
               'Add-AzVmssNetworkInterfaceConfiguration', 'Add-AzVmssSecret', 
               'Add-AzVmssSshPublicKey', 'Add-AzVmssWinRMListener', 
               'New-AzVmssConfig', 'New-AzVmssIpConfig', 
               'New-AzVmssVaultCertificateConfig', 'Remove-AzVmssExtension', 
               'Remove-AzVmssDataDisk', 
               'Remove-AzVmssNetworkInterfaceConfiguration', 'Set-AzVmssOsProfile', 
               'Set-AzVmssStorageProfile', 'New-AzVmss', 'Update-AzVmss', 
               'Stop-AzVmss', 'Remove-AzVmss', 'Get-AzVmss', 'Get-AzVmssSku', 
               'Set-AzVmss', 'Restart-AzVmss', 'Start-AzVmss', 'Update-AzVmssInstance', 
               'Get-AzVMDscExtensionStatus', 'Publish-AzVMDscConfiguration', 
               'Remove-AzVMDscExtension', 'Set-AzVMDscExtension', 
               'Get-AzVMDscExtension', 'Add-AzVmssDiagnosticsExtension', 
               'Get-AzVMChefExtension', 'Remove-AzVMChefExtension', 
               'Set-AzVMChefExtension', 'Remove-AzVMBackup', 
               'Disable-AzVMDiskEncryption', 'Get-AzVMDiskEncryptionStatus', 
               'Remove-AzVMDiskEncryptionExtension', 
               'Set-AzVMDiskEncryptionExtension', 'Set-AzVMBackupExtension', 
               'New-AzDisk', 'Update-AzDisk', 'Get-AzDisk', 'Remove-AzDisk', 
               'Grant-AzDiskAccess', 'Revoke-AzDiskAccess', 'New-AzDiskConfig', 
               'Set-AzDiskDiskEncryptionKey', 'Set-AzDiskImageReference', 
               'Set-AzDiskKeyEncryptionKey', 'New-AzDiskUpdateConfig', 
               'Set-AzDiskUpdateDiskEncryptionKey', 
               'Set-AzDiskUpdateKeyEncryptionKey', 'New-AzSnapshot', 
               'Update-AzSnapshot', 'Get-AzSnapshot', 'Remove-AzSnapshot', 
               'Grant-AzSnapshotAccess', 'Revoke-AzSnapshotAccess', 
               'New-AzSnapshotConfig', 'Set-AzSnapshotDiskEncryptionKey', 
               'Set-AzSnapshotImageReference', 'Set-AzSnapshotKeyEncryptionKey', 
               'New-AzSnapshotUpdateConfig', 
               'Set-AzSnapshotUpdateDiskEncryptionKey', 
               'Set-AzSnapshotUpdateKeyEncryptionKey', 'New-AzImage', 
               'Update-AzImage', 'Get-AzImage', 'Remove-AzImage', 'New-AzImageConfig', 
               'Set-AzImageOsDisk', 'Add-AzImageDataDisk', 'Remove-AzImageDataDisk', 
               'ConvertTo-AzVMManagedDisk', 'Set-AzVmssBootDiagnostic', 
               'Get-AzComputeResourceSku', 'Get-AzVMRunCommandDocument', 
               'Invoke-AzVMRunCommand', 'Start-AzVmssRollingOSUpgrade', 
               'Stop-AzVmssRollingUpgrade', 'Get-AzVmssRollingUpgrade', 
               'Set-AzVmssRollingUpgradePolicy', 
               'Set-AzVmssDiskEncryptionExtension', 'Disable-AzVmssDiskEncryption', 
               'Get-AzVmssDiskEncryption', 'Get-AzVmssVMDiskEncryption', 
               'Export-AzLogAnalyticRequestRateByInterval', 
               'Export-AzLogAnalyticThrottledRequest', 
               'Repair-AzVmssServiceFabricUpdateDomain', 'New-AzVMDataDisk', 
               'Update-AzVmssVM', 'New-AzVmssIpTagConfig', 
               'Invoke-AzVmssVMRunCommand', 'New-AzGallery', 'Update-AzGallery', 
               'Get-AzGallery', 'Remove-AzGallery', 'New-AzGalleryImageDefinition', 
               'Update-AzGalleryImageDefinition', 'Get-AzGalleryImageDefinition', 
               'Remove-AzGalleryImageDefinition', 'New-AzGalleryImageVersion', 
               'Update-AzGalleryImageVersion', 'Get-AzGalleryImageVersion', 
               'Remove-AzGalleryImageVersion', 'Add-AzVmssVMDataDisk', 
               'Remove-AzVmssVMDataDisk', 'Invoke-AzVMReimage', 
               'New-AzProximityPlacementGroup', 'Get-AzProximityPlacementGroup', 
               'Remove-AzProximityPlacementGroup', 'New-AzHostGroup', 
               'Get-AzHostGroup', 'Remove-AzHostGroup', 'New-AzHost', 'Get-AzHost', 
               'Remove-AzHost', 'New-AzDiskEncryptionSetConfig', 
               'New-AzDiskEncryptionSet', 'Get-AzDiskEncryptionSet', 
               'Remove-AzDiskEncryptionSet', 'Update-AzDiskEncryptionSet', 
               'Set-AzVmssOrchestrationServiceState', 'New-AzDiskAccess', 
               'Remove-AzDiskAccess', 'Get-AzDiskAccess', 
               'Invoke-AzVmPatchAssessment'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Get-AzVmssDiskEncryptionStatus', 
               'Get-AzVmssVMDiskEncryptionStatus', 'Repair-AzVmssServiceFabricUD', 
               'Invoke-AzVmAssessPatch', 'Invoke-AzVmPatchAssess'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ResourceManager','ARM','Compute','IAAS','VM','VirtualMachine'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Added the ''-EncryptionType'' optional parameter to ''New-AzVmDiskEncryptionSetConfig''
* New cmdlets for new resource type: DiskAccess ''Get-AzDiskAccess'', ''New-AzDiskAccess'', ''Get-AzDiskAccess''
* Added optional parameters ''-DiskAccessId'' and ''-NetworkAccessPolicy'' to ''New-AzSnapshotConfig''
* Added optional parameters ''-DiskAccessId'' and ''-NetworkAccessPolicy'' to ''New-AzDiskConfig''
* Added ''PatchStatus'' property to VirtualMachine Instance View
* Added ''VMHealth'' property to the virtual machine''s instance view, which is the returned object when ''Get-AzVm'' is invoked with ''-Status''
* Added ''AssignedHost'' field to ''Get-AzVM'' and ''Get-AzVmss'' instance views. The field shows the resource id of the virtual machine instance
* Added optional parameter ''-SupportAutomaticPlacement'' to ''New-AzHostGroup'' 
* Added the ''-HostGroupId'' parameter to ''New-AzVm'' and ''New-AzVmss'''

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}


# SIG # Begin signature block
# MIIjhQYJKoZIhvcNAQcCoIIjdjCCI3ICAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDNL5Us8Mru7vzY
# dYtJAjCTv+m28GDEQJ6uXCbI7pFi5aCCDYEwggX/MIID56ADAgECAhMzAAABh3IX
# chVZQMcJAAAAAAGHMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjAwMzA0MTgzOTQ3WhcNMjEwMzAzMTgzOTQ3WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDOt8kLc7P3T7MKIhouYHewMFmnq8Ayu7FOhZCQabVwBp2VS4WyB2Qe4TQBT8aB
# znANDEPjHKNdPT8Xz5cNali6XHefS8i/WXtF0vSsP8NEv6mBHuA2p1fw2wB/F0dH
# sJ3GfZ5c0sPJjklsiYqPw59xJ54kM91IOgiO2OUzjNAljPibjCWfH7UzQ1TPHc4d
# weils8GEIrbBRb7IWwiObL12jWT4Yh71NQgvJ9Fn6+UhD9x2uk3dLj84vwt1NuFQ
# itKJxIV0fVsRNR3abQVOLqpDugbr0SzNL6o8xzOHL5OXiGGwg6ekiXA1/2XXY7yV
# Fc39tledDtZjSjNbex1zzwSXAgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUhov4ZyO96axkJdMjpzu2zVXOJcsw
# UAYDVR0RBEkwR6RFMEMxKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1
# ZXJ0byBSaWNvMRYwFAYDVQQFEw0yMzAwMTIrNDU4Mzg1MB8GA1UdIwQYMBaAFEhu
# ZOVQBdOCqhc3NyK1bajKdQKVMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0w
# Ny0wOC5jcmwwYQYIKwYBBQUHAQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAx
# MS0wNy0wOC5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAixmy
# S6E6vprWD9KFNIB9G5zyMuIjZAOuUJ1EK/Vlg6Fb3ZHXjjUwATKIcXbFuFC6Wr4K
# NrU4DY/sBVqmab5AC/je3bpUpjtxpEyqUqtPc30wEg/rO9vmKmqKoLPT37svc2NV
# BmGNl+85qO4fV/w7Cx7J0Bbqk19KcRNdjt6eKoTnTPHBHlVHQIHZpMxacbFOAkJr
# qAVkYZdz7ikNXTxV+GRb36tC4ByMNxE2DF7vFdvaiZP0CVZ5ByJ2gAhXMdK9+usx
# zVk913qKde1OAuWdv+rndqkAIm8fUlRnr4saSCg7cIbUwCCf116wUJ7EuJDg0vHe
# yhnCeHnBbyH3RZkHEi2ofmfgnFISJZDdMAeVZGVOh20Jp50XBzqokpPzeZ6zc1/g
# yILNyiVgE+RPkjnUQshd1f1PMgn3tns2Cz7bJiVUaqEO3n9qRFgy5JuLae6UweGf
# AeOo3dgLZxikKzYs3hDMaEtJq8IP71cX7QXe6lnMmXU/Hdfz2p897Zd+kU+vZvKI
# 3cwLfuVQgK2RZ2z+Kc3K3dRPz2rXycK5XCuRZmvGab/WbrZiC7wJQapgBodltMI5
# GMdFrBg9IeF7/rP4EqVQXeKtevTlZXjpuNhhjuR+2DMt/dWufjXpiW91bo3aH6Ea
# jOALXmoxgltCp1K7hrS6gmsvj94cLRf50QQ4U8Qwggd6MIIFYqADAgECAgphDpDS
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIVWjCCFVYCAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAYdyF3IVWUDHCQAAAAABhzAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQg2eRvZfvZ
# bJ2fk56PUNvfcpK0Q/tkXuExuqbojqhjjgwwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQC8UWlfKAD09qktoWHSp2rqfIDaTXQ1Y69Qsf2jRkBH
# GRgd6cNikeXlE2bgijx79qflirV9coO2cIgJviN+o5vlmDDBmXx2faNgg+U24rN/
# 8NSByXZgkwXg67skzea4WOL5drYHLYcnwfqHbrBeWxnH43YrTa1O9D5iTDdCpwV/
# y++C/6ynXxofQEreIVTXjg/g5ApFGTmiPHPmckS4pNMJ4kN/o8oBJ0Dwx//ukRQF
# h7k6084mC0KcwpyY7C1dwUYD57PNJKLiaDtI1oR7+YzUPd2D6qQdmVLfm1r0Tk0Z
# ndhw85XHTy860O4EpiC/5mMgqEDuEnzGz4hCTBc/wOWvoYIS5DCCEuAGCisGAQQB
# gjcDAwExghLQMIISzAYJKoZIhvcNAQcCoIISvTCCErkCAQMxDzANBglghkgBZQME
# AgEFADCCAVAGCyqGSIb3DQEJEAEEoIIBPwSCATswggE3AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIPJf/M9PKMwQs1bOaaBJfK/5pME+wP9poJ9Xv+gn
# cPglAgZfPUU2W7sYEjIwMjAwOTE1MDY1NzQ5LjkyWjAEgAIB9KCB0KSBzTCByjEL
# MAkGA1UEBhMCVVMxCzAJBgNVBAgTAldBMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1pY3Jvc29mdCBJ
# cmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhhbGVzIFRTUyBF
# U046RDA4Mi00QkZELUVFQkExJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFNlcnZpY2Wggg48MIIE8TCCA9mgAwIBAgITMwAAAROzcIc9+vDIJAAAAAABEzAN
# BgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0x
# OTEwMjMyMzE5MjFaFw0yMTAxMjEyMzE5MjFaMIHKMQswCQYDVQQGEwJVUzELMAkG
# A1UECBMCV0ExEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0aW9u
# cyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjpEMDgyLTRCRkQtRUVC
# QTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZTCCASIwDQYJ
# KoZIhvcNAQEBBQADggEPADCCAQoCggEBALytxB0BXPp5mYYLphJNzOgSAuigNQyD
# 1Ou2IEXPQxhTRnG35UU6GjIrz1dg1AutA0wDiOdVRwi1iUrRhbESwzowNyFrAWBW
# o0e5moG2FE/O0xHmRhxrz2BUI3o5PqnuQgSrLaoBjZZxD8kV5brCJO9uOlvbXm3Q
# sM4NI1vaDGjDz9a3shGjUo+LMSqxBcUAIgmjtc+60favKPkWpAkapn7nfCkszcPK
# LFEZMCM9qKYUAh7Y+6lZmO51FJU8sYN2zOUqJ9STCAbckMenXYIJdxtMyYCVoQ26
# YTgFh6OqMIIvj+16E5YIw58z1gjrrt3lVLys2Do5Qy5MYJHUn2xdxhECAwEAAaOC
# ARswggEXMB0GA1UdDgQWBBTamYRyGy/uFwjvkpEUHzwjgM6dUjAfBgNVHSMEGDAW
# gBTVYzpcijGQ80N7fEYbxTNoWoVtVTBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8v
# Y3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNUaW1TdGFQQ0Ff
# MjAxMC0wNy0wMS5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRw
# Oi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1RpbVN0YVBDQV8yMDEw
# LTA3LTAxLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0G
# CSqGSIb3DQEBCwUAA4IBAQAPecywgK+R32SIrs/9Z3RrW2Fcd89LpjuKOiTHu5gk
# j8sLYtcjaerwU39oA8CkPpdnGnpwJtNyMAAFsVXd6C+s0Zdem+mgz18eF7fR03Vc
# 6eiGwZtdIw2XzGh2LnY7FH0YMziOeapjyKT3yi6PGFiqFyn2mJwvgMe12ZFqwpWg
# k676pIrXwGgeP0NpR9ZVsoArQ92tdfDH5l1EwddV+KOe1Ua+Z56CuKB/eDVms/jj
# HjpUaiNS3C1w7+srj7uOJRtDdFBJTyzwhxC7chWEVVL8hR3q+QqKy1OLh8wBFBbq
# 3ghjswfMMGy3Rqv/48lR4z7d/35A5UrsYUd4jwW6TV0oMIIGcTCCBFmgAwIBAgIK
# YQmBKgAAAAAAAjANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlm
# aWNhdGUgQXV0aG9yaXR5IDIwMTAwHhcNMTAwNzAxMjEzNjU1WhcNMjUwNzAxMjE0
# NjU1WjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYD
# VQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDCCASIwDQYJKoZIhvcN
# AQEBBQADggEPADCCAQoCggEBAKkdDbx3EYo6IOz8E5f1+n9plGt0VBDVpQoAgoX7
# 7XxoSyxfxcPlYcJ2tz5mK1vwFVMnBDEfQRsalR3OCROOfGEwWbEwRA/xYIiEVEMM
# 1024OAizQt2TrNZzMFcmgqNFDdDq9UeBzb8kYDJYYEbyWEeGMoQedGFnkV+BVLHP
# k0ySwcSmXdFhE24oxhr5hoC732H8RsEnHSRnEnIaIYqvS2SJUGKxXf13Hz3wV3Ws
# vYpCTUBR0Q+cBj5nf/VmwAOWRH7v0Ev9buWayrGo8noqCjHw2k4GkbaICDXoeByw
# 6ZnNPOcvRLqn9NxkvaQBwSAJk3jN/LzAyURdXhacAQVPIk0CAwEAAaOCAeYwggHi
# MBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBTVYzpcijGQ80N7fEYbxTNoWoVt
# VTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0T
# AQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBWBgNV
# HR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9w
# cm9kdWN0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUHAQEE
# TjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2Nl
# cnRzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNydDCBoAYDVR0gAQH/BIGVMIGS
# MIGPBgkrBgEEAYI3LgMwgYEwPQYIKwYBBQUHAgEWMWh0dHA6Ly93d3cubWljcm9z
# b2Z0LmNvbS9QS0kvZG9jcy9DUFMvZGVmYXVsdC5odG0wQAYIKwYBBQUHAgIwNB4y
# IB0ATABlAGcAYQBsAF8AUABvAGwAaQBjAHkAXwBTAHQAYQB0AGUAbQBlAG4AdAAu
# IB0wDQYJKoZIhvcNAQELBQADggIBAAfmiFEN4sbgmD+BcQM9naOhIW+z66bM9TG+
# zwXiqf76V20ZMLPCxWbJat/15/B4vceoniXj+bzta1RXCCtRgkQS+7lTjMz0YBKK
# dsxAQEGb3FwX/1z5Xhc1mCRWS3TvQhDIr79/xn/yN31aPxzymXlKkVIArzgPF/Uv
# eYFl2am1a+THzvbKegBvSzBEJCI8z+0DpZaPWSm8tv0E4XCfMkon/VWvL/625Y4z
# u2JfmttXQOnxzplmkIz/amJ/3cVKC5Em4jnsGUpxY517IW3DnKOiPPp/fZZqkHim
# bdLhnPkd/DjYlPTGpQqWhqS9nhquBEKDuLWAmyI4ILUl5WTs9/S/fmNZJQ96LjlX
# dqJxqgaKD4kWumGnEcua2A5HmoDF0M2n0O99g/DhO3EJ3110mCIIYdqwUB5vvfHh
# AN/nMQekkzr3ZUd46PioSKv33nJ+YWtvd6mBy6cJrDm77MbL2IK0cs0d9LiFAR6A
# +xuJKlQ5slvayA1VmXqHczsI5pgt6o3gMy4SKfXAL1QnIffIrE7aKLixqduWsqdC
# osnPGUFN4Ib5KpqjEWYw07t0MkvfY3v1mYovG8chr1m1rtxEPJdQcdeh0sVV42ne
# V8HR3jDA/czmTfsNv11P6Z0eGTgvvM9YBS7vDaBQNdrvCScc1bN+NR4Iuto229Nf
# j950iEkSoYICzjCCAjcCAQEwgfihgdCkgc0wgcoxCzAJBgNVBAYTAlVTMQswCQYD
# VQQIEwJXQTEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJlbGFuZCBPcGVyYXRpb25z
# IExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOkQwODItNEJGRC1FRUJB
# MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYF
# Kw4DAhoDFQA9V1aRYNOdiGPSmDgJshMKl7julaCBgzCBgKR+MHwxCzAJBgNVBAYT
# AlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFBDQSAyMDEwMA0GCSqGSIb3DQEBBQUAAgUA4wqyTzAiGA8yMDIw
# MDkxNTExMjM1OVoYDzIwMjAwOTE2MTEyMzU5WjB3MD0GCisGAQQBhFkKBAExLzAt
# MAoCBQDjCrJPAgEAMAoCAQACAhn2AgH/MAcCAQACAhHCMAoCBQDjDAPPAgEAMDYG
# CisGAQQBhFkKBAIxKDAmMAwGCisGAQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEA
# AgMBhqAwDQYJKoZIhvcNAQEFBQADgYEAhs1t/WJNinw6qR8oAS2HCEW2BwohJJSU
# 4hVBIlGuDDapK0tDx85JXhY7CydluIM9BpjjG3UWqqMUfn01uA4JPVa8SRIV/2XL
# W5rb+klbrdA5I1aiCdknZeA+ODIZO7bi4t4MrDegaHEn2ZW9uOATbnKZ+ld6Y705
# Ebhoe+njeGwxggMNMIIDCQIBATCBkzB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMAITMwAAAROzcIc9+vDIJAAAAAABEzANBglghkgBZQMEAgEFAKCCAUowGgYJ
# KoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMC8GCSqGSIb3DQEJBDEiBCDAPGUsk+np
# OYSpIp+MdgBB94YtSoa4FeBjYBXa3hdjwDCB+gYLKoZIhvcNAQkQAi8xgeowgecw
# geQwgb0EIKfaF8SPex+rVOVXeqkqdFKBz4yQpRmUGzGa8L9rgFutMIGYMIGApH4w
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAETs3CHPfrwyCQAAAAA
# ARMwIgQgACKLmXEoRAwKZOUveP9oX8rhozwrsRt0YtcUx5uTtiwwDQYJKoZIhvcN
# AQELBQAEggEAA9mJ2z74jU7YlOHEarQYVBUPHF6oug4/l3vhSPaVKAYi3BiP8r7U
# XAK7Oanp8l9IlVqL7Nk8upGvgwZJkowaHWxcKXlmA+x2AXiDkexKLZLeGBt9OZUq
# 8HgihcpVQLgVAD2WiazJqg11MOBhKcVV6Jz+zH1M1jPs1D15TfPU82It5XACvBRx
# BYr9sdLYq+St6zRAxHHbItvbz1sCiO6DioUKwowXOaRU6RBPVgCJBApGyd24ioWo
# bvlrNuhXj05/8xJ4I5tjmgKxGlW6Bjith9GYdzWGf88Meu4eYuZyZKe0llqy6v0d
# +Cl4rlsO0AkSeCWqwvf3GLr+eZRorl4yCw==
# SIG # End signature block
