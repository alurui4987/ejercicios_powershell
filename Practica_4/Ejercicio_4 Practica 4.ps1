<#Ejercicio4 Escribir un programa que pida al usuario un número entero positivo 
y muestre por pantalla todos los números impares desde 1 hasta ese número separados 
por comas#>

[int]$numero = Read-Host "Dime un numero entero positivo: "

Write-Host -NoNewline 1

for($a = 3; $a -le $numero; $a+=2){
    Write-Host -NoNewline ",$a"
}
