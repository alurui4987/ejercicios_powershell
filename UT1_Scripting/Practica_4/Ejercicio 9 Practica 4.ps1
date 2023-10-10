<#Ejercicio 9 Escribir un programa que almacene la cadena de caracteres contraseña en una variable, 
pregunte al usuario por la contraseña hasta que introduzca la contraseña correcta.#>


[string] $contraseña = "PortValeN1"

while($contraseña -cne $contraseñausu){

    [string] $contraseñausu = Read-Host "Introduce la contraseña"

}

Write-Host "Has escrito correctamente la contraseña!"