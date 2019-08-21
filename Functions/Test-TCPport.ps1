function Test-TCPport 
{
    Param([parameter(Mandatory=$true,ValueFromPipeline=$True)][string[]]$ComputerName,
            [parameter(Mandatory=$true,ValueFromPipeline=$True)]$TCPport
    )

    $requestCallback = $state = $null
    $client = New-Object System.Net.Sockets.TcpClient
    $beginConnect = $client.BeginConnect($ComputerName,$TCPport,$requestCallback,$state)
    Start-Sleep -Milliseconds 500
    if ($client.Connected) 
    {
        $open = $true
    } 
    else
    {
        $open = $false            
    }

    $client.Close()
        
    [pscustomobject]@{hostname=$ComputerName;port=$TCPport;open=$open}
}