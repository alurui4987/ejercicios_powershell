<#Ejercicio1. Escribir un programa que pregunte el nombre del usuario en la consola 
y un número entero e imprima por pantalla en líneas distintas el nombre del usuario 
tantas veces como el número introducido.#>

$nombre = Read-Host "Dime un nombre: "
[int]$número = Read-Host "Dime un número: "

while ($número -gt 0){

        Write-host "$nombre"
        $número = $número -1
}

