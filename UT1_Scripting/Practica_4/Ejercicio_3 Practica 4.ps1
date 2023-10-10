<#Ejercicio3. Escribir un programa que pida al usuario un número entero positivo 
y muestre por pantalla la cuenta atrás desde ese número hasta cero separados por comas.#>

[int]$numero = Read-Host "Dime un numero entero positivo: "

for($a = $numero; $a -ge 1; $a--){
    Write-Host -nonewline "$a,"
}
Write-Host -NoNewline 0