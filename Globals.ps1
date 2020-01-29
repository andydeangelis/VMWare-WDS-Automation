﻿#--------------------------------------------
# Declare Global Variables and Functions here
#--------------------------------------------


#Sample function that provides the location of the script
function Get-ScriptDirectory
{
<#
	.SYNOPSIS
		Get-ScriptDirectory returns the proper location of the script.

	.OUTPUTS
		System.String
	
	.NOTES
		Returns the correct path within a packaged executable.
#>
	[OutputType([string])]
	param ()
	if ($null -ne $hostinvocation)
	{
		Split-Path $hostinvocation.MyCommand.path
	}
	else
	{
		Split-Path $script:MyInvocation.MyCommand.Path
	}
}

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted -Force

#Sample variable that provides the location of the script
[string]$ScriptDirectory = Get-ScriptDirectory

# Set the log directory.
[string]$docsDirectory = [Environment]::GetFolderPath('MyDocuments')
$logGUID = New-Guid
[string]$logParentDirectory = "$docsDirectory\vmware_automation_logfiles"
[string]$logDirectory = "$docsDirectory\vmware_automation_logfiles\$logGUID"

if (-not (Get-Item -Path $logGUID)) { New-Item -ItemType Directory -Path "$logParentDirectory" -Name $logGUID}

#Credential object for vCenter authentication.
if (Get-Item -Path "$($env:TEMP)\vcCreds.xml")
{
	$vcCredential = Import-Clixml -Path "$($env:TEMP)\vcCreds.xml"
}
else
{
	$vcCredential = $null
}

#vCenter connection object.
$vcenterConnection = $null

#vCenter Server Name
if (Get-Item -Path "$($env:TEMP)\vcServer.xml")
{
	$vcServer = Import-Clixml -Path "$($env:TEMP)\vcServer.xml"
}
else
{
	$vcServer = $null
}

#VM build queue
$vmbuilds = [System.Collections.ArrayList]@()

#VM feature config queue
$vmFeatures = [System.Collections.ArrayList]@()

#VM role config queue
$vmRoles = [System.Collections.ArrayList]@()

#VM domain info queue
$vmDomainInfo = [System.Collections.ArrayList]@()

#VM Operating System
$vmOS = [System.Collections.ArrayList]@()

#VM Local Admin Passwords
$vmAdminPasswords

#VM Additional User Accounts
$vmLocalUsers = [System.Collections.ArrayList]@()

#VM Additional User Accounts
$vmWorkgroupDomain = [System.Collections.ArrayList]@()

#VM full OS config
$vmFullOSConfig = [System.Collections.ArrayList]@()

#VM TimeZone
$vmTimeZones

#Existing VM List
$existingVMList = [System.Collections.ArrayList]@()

#Step 3 Selected VM
[string]$vmSelectedStep3

#Step 4 Selected VM
[string]$vmSelectedStep4

#VM Additional Disks
$vmAdditionalDisks = [System.Collections.ArrayList]@()

#VM Additional NICs
$vmAdditionalNICs = [System.Collections.ArrayList]@()

#VM Additional NICs
$vmOSKeys = [System.Collections.ArrayList]@()

# VM Admin Account Rename
$vmAdminAccount = $null

# Post Install Scripts
$postInstallScripts = @()

# Temp array for domain/workgroup info.
$vmDomainWorkgroupStep5 = @()

# Import all functions.

foreach ($item in (Get-ChildItem -Path "$ScriptDirectory\Functions\"))
{
	. "$($item.FullName)"
}

if (-not (Get-ChildItem "$logParentDirectory\prereqsinstalled.log" -ErrorAction SilentlyContinue))
{
	Install-PreReqs | Out-File "$logParentDirectory\prereqsinstalled.log"
}