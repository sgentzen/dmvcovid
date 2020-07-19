param(
  [string]$sourceUrl,
  [string]$sourceFile,
  [string]$destinationFile
)

Write-Host "Downloading $sourcefile"
try {
  ## combine url and sourcefile, download that.
  Invoke-WebRequest -uri "$sourceUrl/$sourcefile" $destinationFile
}
catch {
  Write-Host "Error downloading $sourceFile from $sourceUrl"
}
