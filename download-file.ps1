param(
  [string]$sourceUrl,
  [string]$sourceFile,
  [string]$destinationFile
)

Write-Host "Downloading $sourcefile"
try {
  ## combine url and sourcefile, download that.
  Invoke-WebRequest -uri "$sourceUrl/$sourcefile" -Outfile $destinationFile
}
catch {
  Write-Host "Error downloading $sourceFile from $sourceUrl"
}
