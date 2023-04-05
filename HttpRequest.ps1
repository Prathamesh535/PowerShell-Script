$random = Get-Random -Maximum 83
$a = Invoke-RestMethod -Uri https://swapi.dev/api/people/$random
Write-Host "The Name is : $($a.Name)"
Write-Host "The Mass is : $($a.Mass)"
Write-Host "The Height is : $($a.Height)"