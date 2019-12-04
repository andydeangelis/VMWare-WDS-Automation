<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2018 v5.5.150
	 Created on:   	4/9/2019 5:13 PM
	 Created by:   	andy-user
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>

function Install-PreReqs
{
	try
	{
		# Check if the PSWindowsUpdate PoSH module is installed. If it is not, install it.
		
		if (-not (Get-InstalledModule -Name "VMware.PowerCLI" -ErrorAction SilentlyContinue))
		{
			try
			{
				Set-ExecutionPolicy Unrestricted -Force
				Write-Host "Installing PSWindowsUpdate and PendingReboot modules on" $computer -ForegroundColor Yellow
				Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
				Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
				Install-Module -Name "VMWare.PowerCLI" -Force -Scope AllUsers
				Install-Module -Name "PendingReboot" -Force -Scope AllUsers
				Write-Host "All required modules successfully installed." -ForegroundColor Green
				Import-Module VMware.PowerCLI
				Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
				Set-PowerCLIConfiguration -ParticipateInCeip $false -Scope AllUsers -Confirm:$false
				Import-Module PendingReboot
			}
			catch
			{
				
				Write-Host "Unable to install one or more modules. Please install manually or resolve connectivity issues." -ForegroundColor Red
			}
		}
		else
		{
			Write-Host "All required modules are already installed. Checking for module updates." -ForegroundColor Green
			try
			{
				Set-ExecutionPolicy Unrestricted -Force
				Update-Module -Name "VMware.PowerCLI" -Force -Confirm:$false -ErrorAction SilentlyContinue
				Update-Module -Name "PendingReboot" -Force -Confirm:$false -ErrorAction SilentlyContinue
				Write-Host "All required modules are up to date." -ForegroundColor Green
				Import-Module VMWare.PowerCLI
				Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
				Set-PowerCLIConfiguration -ParticipateInCeip $false -Scope AllUsers -Confirm:$false
				Import-Module PendingReboot
			}
			catch
			{
				Write-Host "Unable to update one or more modules. Please install manually or resolve connectivity issues." -ForegroundColor Red
			}
		}
		
	} # End try statement.
	catch
	{
		"Unable to execute."
	} # End catch statement.
	
}