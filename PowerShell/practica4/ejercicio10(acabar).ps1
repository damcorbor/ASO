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
6) Mostrar el contenido de un directorio.
7) Mostar la fecha y hora actuales
8) Salir 
"


[int] $opcion = Read-Host "Introduce la opcion que deseas(1-8): "
while ($opcion -lt 1 -and $opcion -gt 8) {
    Write-Output "valor no valido.. "
    [int] $opcion = Read-Host "Introduce correctamente la opcion que deseas(1-8): "
}


while ($opcion -ne 8) {
    if ($opcion -eq 1) {
        Write-Output "*** Creando Carpeta ***"
        $directorio = Read-Host "Introduce el nuevo directorio a crear(C:\__): "
        New-Item C:\$directorio -ItemType directory
        if ($? -eq $true) {
            Write-Output "Directorio creado correctamente"
            Write-Output ""
        }
    } elseif ($opcion -eq 2) {
        Write-Output "*** Creando Archivo ***"
        $archivo = Read-Host "Introduce el nuevo archivo a crear(C:\__): "
        New-Item C:\$archivo -ItemType file
        if ($? -eq $true) {
            Write-Output "Archivo creado correctamente"
            Write-Output ""
        }
    } elseif ($opcion -eq 3) {
        Write-Output "*** Cambiando nombre de archivo o carpeta ***"
        $rename = Read-Host "Introduce el archivo o directorio a modificar (C:\_ruta_completa_): "
        $rename2 = Read-Host "Introduce el nuevo nombre para el archivo o directorio (__nombre__): "
        Rename-Item C:\$rename $rename2
        if ($? -eq $true) {
            Write-Output "Archivo o directorio modificado correctamente"
            Write-Output ""
        }
    } 
    Write-Output ""
    Write-Output "***** Mostrando Menú *****

    1) Crear una carpeta
    2) Crear un fichero nuevo
    3) Cambiar el nombre de un fichero o carpeta
    4) Borrar un archivo o carpeta
    5) Verificar si existe un fichero o carpeta
    6) Mostrar el contenido de un directorio.
    7) Mostar la fecha y hora actuales
    8) Salir 
    "
    
    [int] $opcion = Read-Host "Introduce la opcion que deseas(1-8): "
    while ($opcion -lt 1 -and $opcion -gt 8) {
        Write-Output "valor no valido.. "
        [int] $opcion = Read-Host "Introduce correctamente la opcion que deseas(1-8): "
    }
}
