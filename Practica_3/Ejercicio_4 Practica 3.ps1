<# Ejercicio 4. Crea un script basado en el anterior. Debe ser una calculadora muy senclla, en la que se preguntará al 
usuario dos números y que operación desea realizar.#>
[double]$num1 = Read-Host "Escribe un número "
[double]$num2 = Read-Host "Escribe otro número "

$operacion = Read-host "1.Sumar. `n 2. Resta. `n 3.Multiplicar. `n 4.Dividir. `n ¿Qué desea hacer?Elige una opción: "

switch ($operacion){
        1{
            $res = $num1 + $num2}
        2{
            $res = $num1 - $num2}
        3{
            $res = $num1 * $num2}
        4{
            $res = $num1 / $num2}
        Default{
            $res = "Error"     }
}

Write-Host "Resultado: $res"