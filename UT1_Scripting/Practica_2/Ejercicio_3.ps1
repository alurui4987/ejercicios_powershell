<# Ejercicio3. Crea un script en PowerShell que pregunte al usuario por el número de horas trabajadas y el coste por hora. 
Después debe mostrar por pantalla el salario que debemos pagarle. #>

[double] $numeroh = Read-Host "Escribe las horas trabajadas: "
[double] $precioh = Read-Host "Escribe el precio por hora: "

$salario = $numeroh * $precioh

Write-Host "Tu salario es igual a $salario"
