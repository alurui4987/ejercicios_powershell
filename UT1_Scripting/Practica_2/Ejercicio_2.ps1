<# Ejercicio 2 
Crea un script en PowerShell que pida dos números 
al usuario e imprima por panatalla su suma, la resta, la multiplicación, división y resto.#>

[int]$numero1 = Read-Host "Escribe un número "
[int]$numero2 = Read-Host "Escribe otro número "

$suma = $numero1 + $numero2
$resta = $numero1 - $numero2
$multiplicacion = $numero1 * $numero2
$division = $numero1 / $numero2
$resto = $numero1 % $numero2

Write-Host "Suma = $suma"
Write-Host "Resta = $resta"
Write-Host "Multiplicacion = $multiplicacion"
Write-Host "Division = $division"
Write-Host "Resto = $resto"