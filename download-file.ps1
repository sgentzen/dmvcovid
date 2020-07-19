param(
  [string]sourceUrl
  [string]sourceFile
  [string]destinationFile
)

Write-Host "Downloading $sourcefile"
try {
  Invoke-Webcommand -uri "$sourceUrl/$sourcefile"
}
catch {
  Write-Host "Error downloading $sourceFile"
}
