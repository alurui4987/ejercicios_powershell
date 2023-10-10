<# Ejercicio 1 Crea una calculadora muy sencilla, en la que 
se preguntará al usuario dos números y que operación desea realizar.

Ejemplo:

****** CALCULADORA ********

    Sumar
    Restar
    Multiplicar
    Dividir
    Salir

¿Qué desea hacer?Elige una opción:

Debes crear las funciones Sumar, Restar, Multiplicar y Dividir. 
Cada una de estas funciones tendrá dos parámetros.#>

Function Sumar ($num1, $num2){
    $sumar = $num1 + $num2
    Write-Host "El resultado es $sumar"
}

Function Restar ($num1, $num2){
    $restar = $num1 - $num2
    Write-Host "El resultado es $restar"
}

Function Multiplicar ($num1, $num2){
    $multiplicar = $num1 * $num2
    Write-Host "El resultado es $multiplicar"
}

Function Division ($num1, $num2){
    $division = $num1 / $num2
    Write-Host "El resultado es $division"
}

Function Salir ($num1, $num2){
    Write-Host "Hasta luego"
}

do{

 $operacion = Read-host "`n 1.Sumar. `n 2. Resta. `n 3.Multiplicar. `n 4.Dividir. `n 5.Salir `n ¿Qué desea hacer?Elige una opción: "

    if($operacion -ne 5){[double]$num1 = Read-Host "Escribe un número "
    [double]$num2 = Read-Host "Escribe otro número "
    }

switch ($operacion){
        1{
            Sumar $num1 $num2}
        2{
            Resta $num1 $num2}
        3{
            Multiplicar $num1 $num2}
        4{
            Division $num1 $num2}
        5{
            Salir
            }
}
}while($operacion -ne 5)
