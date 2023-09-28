<#Ejercicio 7 Escribir un programa que pida al usuario un número entero 
y muestre por pantalla un triángulo rectángulo como el de más abajo, de altura el número introducido.

*
**
***
****
*****
#>

[int]$altura = Read-Host "Introduce un número entero"

if ($altura -gt 0) {
    for ($a = 1; $a -le $altura; $a++) {
        for ($b = 1; $b -le $a; $b++) {
            Write-Host -NoNewline "*"
        }
        Write-Host ""
    }
}
else {
    Write-Host "Introduce un número entero positivo."
}
