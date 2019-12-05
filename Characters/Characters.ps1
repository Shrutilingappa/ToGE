<#
  Script to get the Number of characters present in a text file
  Consider the input text file Characters.txt having below value

  7 daYs without PizZa mAkes One Weak

#>

# Get Content of the values from Characters.txt text file
$Value = Get-Content $PSScriptRoot\Characters.txt

$Characters = ($Value | Measure-Object -Character).Characters

Write-host "No. of characters in the file are " $Characters

$NoOfChar = "No. of characters are in the file `n " + $value + '=>' + $Characters

#Get Number of words

$words = ($Value | Measure-Object -Word).Words

Write-host "No. of words in a file are " $words

$NoOfWords = "Number of Words in the file are `n " + $value + '=>' + $words

$NoOfAlphabets = ($Value | Select-String -Pattern '[a-z]' -AllMatches ).Matches.Count

write-host "No of alphabets in the sentence are $NoOfAlphabets"
#iv)No. of times the most commonly occurring alphabet occurs

#Will remove any character apart from alphabet
$RemoveotherChar =  $Value -replace '[\W0-9]', ''
#Change all character to upper case
$Char = [string]$RemoveotherChar.ToUpper() 
#Convert to array and group the value 
$Output = $char.ToCharArray() | Group-Object -NoElement | Sort-Object -Property Count -Descending -Unique 

#The output will take the First Value  even if we have 2 aplhabets having same number of occurence 
write-host "No. of times the most commonly occuring alphabet is" $Output[0].Name "with" $Output[0].Count "times"
