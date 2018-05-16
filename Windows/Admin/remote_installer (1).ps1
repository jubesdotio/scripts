$source = "[URL to File]"
$destination = "[Save Path]"

Invoke-Webrequest $source -Outfile $destination
cd [Save Path]
./[File to Run]