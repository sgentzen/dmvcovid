#data setup
$scriptDir = $(get-location)
$virginiaCasesDataUrl = "https://www.vdh.virginia.gov/content/uploads/sites/182/2020/05/"
$virginiaCasesDataFile = "VDH-COVID-19-PublicUseDataset-Cases.csv"
$marylandCasesDataUrl = "https://opendata.arcgis.com/datasets/"
$marylandCasesDataFile = "18582de727934249b92c52542395a3bf_0.csv"
$districtCasesDataUrl = ""
$districtCasesDataUrl = ""
$districtCasesDataFile =

## Download Virginia data
& "$scriptDir/download-file.ps1" "$virginiaCasesDataUrl" "$virginiaCasesDataFile" "$scriptdir/$virginiaCasesDataFile"

##download Maryland data
& "$scriptDir/download-file.ps1" "$marylandCasesDataUrl" "$marylandCasesDataFile" "$scriptdir/$marylandCasesDataFile"
