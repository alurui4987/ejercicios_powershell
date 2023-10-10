<# Ejercicio 5. Crea un script en el que pidas un fichero o carpeta por teclado y te diga si existe o no.#>

$archivo = Read-Host "Ingresa el nombre de un archivo o carpeta"

if (Test-Path $archivo) {
    Write-Host "El archivo o carpeta $archivo existe."
} else {
    Write-Host "El archivo o carpeta $archivo no existe."
}
