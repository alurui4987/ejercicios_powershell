<#
Ejercicio 10. Crea un script que muestre un menú con las siguientes opciones:

a) Crear una carpeta
b) Crear un fichero nuevo
c) Cambiar el nombre de un fichero o carpeta
d) Borrar un archivo o carpeta
e) Verificar si existe un fichero o carpeta
f) Mostrar el contenido de un directorio.
g) Mostar la fecha y hora actuales
x) Salir
El menú se mostrará hasta que el usuario seleccione la opción Salir. Todos los datos que necesite el
usuario se pedirán por teclado al usuario.
#>

do{
    Write-Host "a) Crear una carpeta"
    Write-Host "b) Crear un fichero"
    Write-Host "c) Cambiar el nombre de un fichero o carpeta"
    Write-Host "d) Borrar un archivo o carpeta"
    Write-Host "e) Verificar si existe un fichero o carpeta"
    Write-Host "f) Mostrar el contenido de un directorio"
    Write-Host "g) Mostrar la fecha y hora"
    Write-Host "x) Salir"

    $opciones = Read-Host "Selecciona una de las opciones"

    switch($opciones){
        
        a {
            $path = Read-Host "Indica la ruta del directorio"
            New-Item $path -ItemType directory
        }

        b {
            $path = Read-Host "Indica la ruta del fichero"
            New-Item $path -ItemType file
        }
        c {
            $path = Read-Host "Indica la ruta del directorio o documento que quieras cambiarle el nombre"
            $nombre = Read-Host "Indica el nombre del archivo o directorio"
            Rename-Item $path $nombre
        }
        
        d {
            $path = Read-Host "Indica la ruta del directorio o archivo que quieras eliminar"
            Remove-Item $path
        }
        
        e {
            $path = Read-Host "Indica la ruta del archivo o directorio que quieras verificar"
            Test-Path $path
        }

        f {
            $path = Read-Host "Indica la ruta del directorio que quieras ver la ruta"
            Get-ChildItem $path 
        }

        g {
            Get-Date
        }
    }
    Read-Host "`nPresiona Enter para continuar"
} while ($opciones -ine "x")