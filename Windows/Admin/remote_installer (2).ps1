$url = "[URL to File]"
$output = "[Save Path]"
$start_time = Get-Date

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $output)

Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

cd [Save Path]
./[File to Run]