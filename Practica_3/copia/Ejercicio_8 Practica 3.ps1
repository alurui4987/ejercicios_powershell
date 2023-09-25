<# Ejercicio 8. Los alumnos de un curso se han dividido en dos grupos A y B de acuerdo al sexo 
y el nombre. El grupo A esta formado por las mujeres con un nombre anterior a la M 
y los hombres con un nombre posterior a la N y el grupo B por el resto. 
Escribir un programa que pregunte al usuario su nombre y sexo, 
y muestre por pantalla el grupo que le corresponde.#>

[string]$nombre = Read-Host "Cual es tu nombre? "
[int]$sexo = Read-Host "`n 1.Mujer `n 2.Hombre `n Tu sexo es?"

If ($nombre -lt "M*" -and $sexo -eq 1){
    Write-Host = "Perteneces al grupo A"
}Elseif ($nombre -gt "N*" -and $sexo -eq 2){
    Write-Host = "Perteneces al grupo A"
}Else{
    Write-Host = "Perteneces al grupo B"
}