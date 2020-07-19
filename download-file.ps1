param(
  [string]sourceUrl
  [string]sourceFile
  [string]destinationFile
)

Write-Host "Downloading $sourcefile"
try {
  ## combine url and sourcefile, download that.
  Invoke-Webcommand -uri "$sourceUrl/$sourcefile"
}
catch {
  Write-Host "Error downloading $sourceFile from $sourceUrl"
}
