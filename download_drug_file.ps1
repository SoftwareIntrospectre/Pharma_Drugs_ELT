
# https://lazyadmin.nl/powershell/download-file-powershell/
# https://mcpmag.com/articles/2019/03/28/environment-variables-in-powershell.aspx

#download the full JSON file from the website.


# URL and Destination
$url = "https://download.open.fda.gov/drug/drugsfda/drug-drugsfda-0001-of-0001.json.zip"

$current_download_location = [System.Environment]::GetEnvironmentVariable('OPEN_FDA_CURRENT_DOWNLOAD_DIRECTORY','user')

$out_file = $current_download_dest + '\drug-drugsfda-0001-of-0001.json.zip'

Write-Output($env)

# Download file
Invoke-WebRequest -Uri $url -OutFile $out_file