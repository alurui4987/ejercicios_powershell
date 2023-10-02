<#Ejercicio 2 Haciendo uso de la estructura repetitiva foreach, 
debes leer todos los datos del archivo usuarios.csv e imprimir el nombre, 
apellidos y grupo del usuario#>

$usuarios = Import-Csv C:\Users\Administrador\Desktop\usuarios.csv -Delimiter ","

foreach ($usu in $usuarios){
    write-host "Usuario: $($usu.nombre) $($usu.apellidos) $($usu.grupo) "
}