$string = Get-content $PSScriptRoot\input.txt
$Remove = $string.Replace(" ", "")

$Let = @()
foreach($Name in $Remove.ToCharArray() ){
    [char]$letter = $Name
    $letter = [byte]$letter + 3
    $Let += $letter

}

$Let -join ""
