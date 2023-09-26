<#Ejercicio 6. Crea un script en lenguaje PowerShell que sea un juego de adivinar 
un número de 0 a 100. El número se pondrá fijo al principio del procedimiento. 
Se irá preguntando al usuario números y se dirá si es mayor o menor en caso de 
no adivinar el numero. Al adivinar el número mostrará un mensaje de enhorabuena 
y se detendrá el juego.#>

[int]$respuesta = Read-Host "Cual número crees que es? "

$num = 23


while($num -ne $respuesta){

    if($respuesta -gt $num ){
        Write-Host "El número es menor"
    }Else{
        Write-Host "El número es mayor"
    }
  [int]$respuesta = Read-Host "Cual número crees que es? "
}

Write-Host "Lo has adivinado muy bien!!"