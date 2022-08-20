$base_filepath = "C:/Users/Tony Chacon/OneDrive\Documents/__Software_Side_Projects/2022/Q3"
$putty_filepath = $base_filepath + "/psftp.exe"

$file_on_server = "readme.txt"
$downloaded_file = "sftp_readme.txt"
$downloaded_filepath = $base_filepath + "/" + $downloaded_file
$user = "demo"
$password = "password"
$URI = "test.rebex.net 22"

$cmd_1 = @(
"open $URI"
)

$cmd_2 = @(
$user
)


$cmd_3 = @(
"$password"
)

$cmd_4 = @(
"get $file_on_server $downloaded_file"
)

$cmd_5 = @(
"mv $downloaded_file $downloaded_filepath"
)



$cmd_1 | & $putty_filepath
$cmd_2
$cmd_3
$cmd_4
$cmd_5