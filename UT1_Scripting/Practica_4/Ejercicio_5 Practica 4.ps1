<#Ejercicio 5. Crea un script que utilice for para mostrar la tabla de multiplicar 
de un n�mero que se solicita al usuario.#>

[int]$numero = Read-Host "Que n�mero solicitas: "
$b = $numero

for($a = 1; $a -le 10;$a++){
    Write-Host "$b"
    $b = $b + $numero
}