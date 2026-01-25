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

El menú se mostrará hasta que el usuario seleccione la opción Salir. Todos los datos que necesite el usuario se pedirán por teclado al usuario.
#>

Clear-Host

Write-Output "***** Mostrando Menú *****

1) Crear una carpeta
2) Crear un fichero nuevo
3) Cambiar el nombre de un fichero o carpeta
4) Borrar un archivo o carpeta
5) Verificar si existe un fichero o carpeta
6) Mostrar el contenido de un directorio
7) Mostrar la fecha y hora actuales
8) Salir
"

[int] $opcion = Read-Host "Introduce la opcion que deseas (1-8): "
while ($opcion -lt 1 -or $opcion -gt 8) {
    Write-Output "Valor no valido"
    [int] $opcion = Read-Host "Introduce correctamente la opcion (1-8): "
}

while ($opcion -ne 8) {

    if ($opcion -eq 1) {
        Write-Output "*** Creando Carpeta ***"
        $directorio = Read-Host "Introduce la ruta completa de la carpeta a crear"
        New-Item $directorio -ItemType Directory
        if ($?) {
            Write-Output "Directorio creado correctamente"
        }

    } elseif ($opcion -eq 2) {
        Write-Output "*** Creando Archivo ***"
        $archivo = Read-Host "Introduce la ruta completa del archivo a crear"
        New-Item $archivo -ItemType File
        if ($?) {
            Write-Output "Archivo creado correctamente"
        }

    } elseif ($opcion -eq 3) {
        Write-Output "*** Cambiar nombre ***"
        $ruta = Read-Host "Introduce la ruta completa del archivo o carpeta"
        $nuevoNombre = Read-Host "Introduce el nuevo nombre"
        Rename-Item $ruta $nuevoNombre
        if ($?) {
            Write-Output "Nombre cambiado correctamente"
        }

    } elseif ($opcion -eq 4) {
        Write-Output "*** Borrar archivo o carpeta ***"
        $ruta = Read-Host "Introduce la ruta completa a borrar"
        Remove-Item $ruta -Recurse -Force
        if ($?) {
            Write-Output "Elemento borrado correctamente"
        }

    } elseif ($opcion -eq 5) {
        Write-Output "*** Verificar existencia ***"
        $ruta = Read-Host "Introduce la ruta a verificar"
        if (Test-Path $ruta) {
            Write-Output "El fichero o carpeta EXISTE"
        } else {
            Write-Output "El fichero o carpeta NO existe"
        }

    } elseif ($opcion -eq 6) {
        Write-Output "*** Contenido de directorio ***"
        $ruta = Read-Host "Introduce la ruta del directorio"
        Get-ChildItem $ruta

    } elseif ($opcion -eq 7) {
        Write-Output "*** Fecha y hora actuales ***"
        Get-Date
    }

    Write-Output ""
    Write-Output "***** Mostrando Menú *****

1) Crear una carpeta
2) Crear un fichero nuevo
3) Cambiar el nombre de un fichero o carpeta
4) Borrar un archivo o carpeta
5) Verificar si existe un fichero o carpeta
6) Mostrar el contenido de un directorio
7) Mostrar la fecha y hora actuales
8) Salir
"

    [int] $opcion = Read-Host "Introduce la opcion que deseas (1-8): "
    while ($opcion -lt 1 -or $opcion -gt 8) {
        Write-Output "Valor no valido"
        [int] $opcion = Read-Host "Introduce correctamente la opcion (1-8): "
    }
}

Write-Output "Saliendo del programa..."
