function CheckStatus{
    param($ServiceName)

    $service = Get-Service -Name $ServiceName

    if ($service.Status -ne "Running") {
        Start-Service $service
        Write-Host "Starting " $ServiceName
    }
}


