while ($true) {
    try {
        iwr 'https://github.com' -UseBasicParsing | Out-Null
        Write-Host "$(Get-Date -Format 'HH:mm:ss') - Request sent"
    }
    catch {
        Write-Host "$(Get-Date -Format 'HH:mm:ss') - Error: $($_.Exception.Message)" -ForegroundColor Red
    }
    
    Start-Sleep -Seconds (Get-Random -Minimum 4 -Maximum 8)
}
