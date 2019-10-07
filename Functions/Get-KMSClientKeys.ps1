<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2018 v5.5.150
	 Created on:   	9/20/2019 1:46 PM
	 Created by:   	dalthakar
	 Organization: 	
	 Filename:     	Get-KMSClientKeys.ps1
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>

function Get-KMSClientKeys
{
	Param ($Url = 'https://docs.microsoft.com/en-us/windows-server/get-started/kmsclientkeys')
	try
	{
		$Site = Invoke-WebRequest -Uri $Url -ErrorAction Stop
	}
	catch
	{
		throw "Unable to reach urkl '$Url'."
	}
	$Tables = @($Site.ParsedHtml.getElementsByTagName('TABLE'))
	foreach ($Table in $Tables)
	{
		Try
		{
			[xml]$XMLTable = $Table.innerHTML.ToString().Replace('scope=col', '')
			$Cells = $XMLTable.GetElementsByTagName('TD')
			If ($Cells[0].'data-th' -eq 'Operating system edition')
			{
				for ($i = 0; $i -lt $Cells.count; $i++)
				{
					switch -w ($Cells[$i].'data-th')
					{
						Operating* { $OS = $Cells[$i].P }
						KMS*       {
							[pscustomobject]@{
								OperatingSystem  = $OS
								KMSClientKey	 = $Cells[$i].P
							}
						}
					}
				}
			}
		}
		catch
		{ }
	}
}