<# Ejercicio 7. Escribir un programa que alamacene la cadena de caracteres 
contraseña en una variable, pregunte al usuario por la contraseña e 
imprima por pantalla si la contraseña introducida por el 
usuario coincide con la guardada en la variable sin tener en 
cuenta mayúsculas y minúsculas.#>

$contraseña = "asix"

[string]$pregcontra = Read-Host "Cual es tu contraseña? "

if ($pregcontra -ieq $contraseña){
    Write-Host = "Tu contraseña coincide"
}Else{
    Write-Host = "Tu contraseña no coincide"
}