<# Ejercicio 3. Crea un script en el que se pida dos números enteros al usuario. El script debe indicar 
si el primer número es mayo, menor o igual que el otro.#>

[int]$numero1 = Read-Host "Escribe un número: "
[int]$numero2 = Read-Host "Escribe un número: "

If ($numero1 -gt $numero2){
        Write-Host "Tu número es mayor"
}ElseIf($numero1 -eq $numero2){
        Write-Host "Tus números son iguales"
}Else{
        Write-Host "Tu número es menor"
}