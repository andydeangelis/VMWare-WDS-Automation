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
		# Check if the PowerCLI PoSH module is installed. If it is not, install it.
		
		if (-not (Get-InstalledModule -Name "VMware.PowerCLI" -ErrorAction SilentlyContinue))
		{
			try
			{
				Set-ExecutionPolicy Unrestricted -Force
				Write-Host "Installing PowerCLI and PendingReboot modules on" $computer -ForegroundColor Yellow
				Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
				Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
				Install-Module -Name "VMWare.PowerCLI" -MaximumVersion 11.5.0.14912921 -Force -Scope AllUsers
				Write-Host "All required modules successfully installed." -ForegroundColor Green
				Import-Module VMware.PowerCLI
				Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
				Set-PowerCLIConfiguration -ParticipateInCeip $false -Scope AllUsers -Confirm:$false				
			}
			catch
			{
				
				Write-Host "Unable to install one or more modules. Please install manually or resolve connectivity issues." -ForegroundColor Red
			}
		}
		elseif (-not (Get-InstalledModule -Name "VMware.PowerCLI" -MinimumVersion 11.5.0.14912921 -ErrorAction SilentlyContinue))
		{
			Write-Host "All required modules are already installed, but less than the required version. Checking for module updates." -ForegroundColor Green
			try
			{
				Set-ExecutionPolicy Unrestricted -Force
				Update-Module -Name "VMware.PowerCLI" -Force -Confirm:$false -MaximumVersion 11.5.0.14912921 -ErrorAction SilentlyContinue
				Write-Host "All required modules are up to date." -ForegroundColor Green
				Import-Module VMWare.PowerCLI
				Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
				Set-PowerCLIConfiguration -ParticipateInCeip $false -Scope AllUsers -Confirm:$false
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