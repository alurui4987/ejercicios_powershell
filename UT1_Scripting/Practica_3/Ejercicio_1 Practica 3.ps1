<# Ejercicio 1. Crea un script que solicite un número al usuario.
El programa debe indicar si el número es impar o par #>

[int]$numero1 = Read-Host "Escribe un número: "
$rest1 = $numero1 %2

If ($rest1 -ne 0){
        Write-Host "Tu número es impar"
}Else {
        Write-Host "Tu número es par"
}
