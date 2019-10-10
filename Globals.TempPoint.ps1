#--------------------------------------------
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

#Sample variable that provides the location of the script
[string]$ScriptDirectory = Get-ScriptDirectory

#Credential object for vCenter authentication.
$vcCredential = $null

#vCenter connection object.
$vcenterConnection = $null

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
$vmAdminPasswords = ""

#VM Additional User Accounts
$vmLocalUsers = [System.Collections.ArrayList]@()

#VM Additional User Accounts
$vmWorkgroupDomain = [System.Collections.ArrayList]@()

#VM full OS config
$vmFullOSConfig = [System.Collections.ArrayList]@()

#VM TimeZone
$vmTimeZones = "085"

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

# Import all functions.

foreach ($item in (Get-ChildItem -Path "$ScriptDirectory\Functions\"))
{
	. "$($item.FullName)"
}

if (-not (Get-Item "$ScriptDirectory\logs\" -ErrorAction SilentlyContinue))
{
	New-Item -Path $ScriptDirectory -Name logs -ItemType Directory
}
else
{
	foreach ($item in (Get-ChildItem -Path "$ScriptDirectory\logs\"))
	{
		$item | Remove-Item -Force -Recurse
	}
}