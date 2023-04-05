class Device {
    [string]$Brand
    [string]$Model = 'XS'
    [int[]] $array
    [void] PrintModel() {
        Write-Host "Hello"
    }
    [int] SumOfNumber([int[]]$arr) {
        [int]$sum = 0
        foreach ($a in $arr) {
           $sum += $a
        }
        return $sum
    }
}
$obj = [Device]::new()
$obj.Brand = 'Iphone'
# $obj.Model = 'X'
$obj.array = 1, 2, 3, 4, 5
Write-Host "Sum of the Number :" $obj.SumOfNumber($obj.array)
$obj.PrintModel()
Write-Host $obj.Brand $obj.Model
Write-Host $obj.array[0].GetType()
enum Types{
    Iphone = 0
    Samsung = 1
}
$a = [int][Types]::Samsung
Write-Host $a
$sum = 1
foreach($p in $obj.array){
    $sum *= $p
}
Write-Host $sum
$hash = [ordered]@{Id=1;Name="Prathamesh Jadhav"}
$hash["Id"] = 2
foreach($key in $hash.keys){
    Write-Host "The $key is : $($hash.$key)"
}
$date =  Get-Date -Format dd-mm-yyyy
Write-Host $date
$z = 'Prathamesh', 'Jadhav'
-join $z
