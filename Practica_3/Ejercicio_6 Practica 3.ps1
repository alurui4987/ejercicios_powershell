<# Ejercicio 6. Crea unque diga si lo que se pasa por teclado es un directorio. En ese caso sacará una lista con los 
archivos que contiene y subdirectorios. Debes utilizar el parámetro Recurse. #>

$directorio = Read-Host "Ingresa una ruta (directorio)"


if (Test-Path -Path $directorio -PathType Container) {
    Write-Host "La ruta $directorio es un directorio."
} else {
    Write-Host "La ruta $directorio no es un directorio o no existe."
}
