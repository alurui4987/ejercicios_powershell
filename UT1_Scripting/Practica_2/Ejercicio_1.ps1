<# Ejercicio 1. Crea un script en lenguaje PowerShell que muestre al usuario los soguientes mensajes:

    - Hola "nombre de usuario"
    - Tu directorio de trabajo es "directorio"
    - Perteneces al dominio "Nombre_dominio"
    - Tu equipo se llama "Nombre_equipo"
#>

Write-host "Hola $env:USERNAME"
Write-host "Tu directorio de trabajo es $env:USERPROFILE"
Write-host "Perteneces al dominio $env:USERDOMAIN"
Write-host "Tu equipo se llama $env:COMPUTERNAME"