<#
	.SYNOPSIS
		A brief description of the Invoke-CustomizeOS_ps1 file.
	
	.DESCRIPTION
		A description of the file.
	
	.PARAMETER Scripts
		A description of the Scripts parameter.
	
	.PARAMETER VMName
		A description of the VMName parameter.
	
	.PARAMETER GuestCredential
		A description of the GuestCredential parameter.
	
	.NOTES
		===========================================================================
		Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2018 v5.5.150
		Created on:   	7/9/2019 9:38 AM
		Created by:   	dalthakar
		Organization:
		Filename:     	CustomizeOS.ps1
		===========================================================================
#>

function Customize-OS
{
	param
	(
		[Parameter(Mandatory = $true)]
		[string]$VMName,
		[Parameter(Mandatory = $true)]
		[pscredential]$GuestCredential,
		[Parameter(Mandatory = $true)]
		[array]$Scripts
	)
	
	foreach ($script in $Scripts)
	{
		Invoke-VMScript -VM $VMName -GuestCredential $GuestCredential -ScriptText "$($script.Command)" | Out-File "$ScriptDirectory\logs\scriptcommand.log" -Append
		
	}
}