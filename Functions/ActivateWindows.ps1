<#
	.SYNOPSIS
		A brief description of the Invoke-ActivateWindows_ps1 file.
	
	.DESCRIPTION
		A description of the file.
	
	.PARAMETER KMSHost
		A description of the KMSHost parameter.
	
	.PARAMETER LicenseKey
		A description of the LicenseKey parameter.
	
	.NOTES
		===========================================================================
		Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2018 v5.5.150
		Created on:   	9/20/2019 1:31 PM
		Created by:   	dalthakar
		Organization:
		Filename:     	ActivateWindows.ps1
		===========================================================================
#>
function Activate-Windows
{
	param
	(
		[string]$KMSHost,
		[Parameter(Mandatory = $true)]
		[string]$LicenseKey
	)
	
}