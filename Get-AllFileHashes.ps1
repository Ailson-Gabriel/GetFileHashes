$algorithms = @('SHA1', 'SHA256', 'SHA384', 'SHA512', 'MD5')

if ($args.Count -eq 0) {
    Write-Host "Usage: .\Get-AllFileHashes.ps1 <filePath>"
    exit
}

$filePath = $args[0]

$hashes = $algorithms | ForEach-Object {
    $hash = Get-FileHash -Path $filePath -Algorithm $_
    [PSCustomObject]@{
        Algorithm = $hash.Algorithm + "       "
        Hash      = $hash.Hash + "       "
        Path      = $filePath + "       "
    }
}

$hashes | Format-Table -Property Algorithm, Hash, Path -AutoSize