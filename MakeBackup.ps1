param (
    [Parameter(Mandatory=$true)]
    [string]$fileName
)

$directory = [System.IO.Path]::GetDirectoryName($fileName)
$strippedFileName = [System.IO.Path]::GetFileNameWithoutExtension($fileName)
$extension = [System.IO.Path]::GetExtension($fileName)
$newFileName = $strippedFileName + "-" + (Get-Date -Format "yyyyMMdd-HHmmss") + $extension
Copy-Item "$filename" -Destination "$directory\$newFileName" -Recurse