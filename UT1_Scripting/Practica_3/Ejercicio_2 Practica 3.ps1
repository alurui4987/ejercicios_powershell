<# Ejercicio 2. Escribir un programa que pregunte al usuario si edad y muestre 
por pantalla si es mayor de edad o no#>

[int]$numero1 = Read-Host "Cual es tu edad: "

If ($numero1 -ge 18){
        Write-Host "Eres mayor de edad ;)"
}Else{
        Write-Host "No eres mayor de edad :("
}