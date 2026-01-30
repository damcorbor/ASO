Clear-Host

# Ruta base
New-Item -Path "C:\Empresa" -ItemType Directory

# departamentos
$deps = Import-Csv "C:\Users\Administrador\Desktop\t1_p1\departamentos.csv" -Delimiter ";"

# Nombre corto del dominio (EMPRESA)
$dom = (Get-ADDomain).NetBIOSName

# C:\Empresa
# Usuarios del dominio: = Lectura
# Sin herencia

$acl = Get-Acl "C:\Empresa"

# Quito herencia y borro permisos heredados
$acl.SetAccessRuleProtection($true, $false)

# usuarios del dominio = lectura

$permisoadd = @("$dom\Usuarios del dominio", "ReadAndExecute", "ContainerInherit,ObjectInherit", "None", "Allow")

$rule = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd
$acl.SetAccessRule($rule)

# administradores = control total (por si acaso)

$permisoadd = @("Administradores", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")

$rule = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd

$acl.SetAccessRule($rule)


Set-Acl -Path "C:\Empresa" -AclObject $acl

# crear los permisos y carpetas por departamento C:\Empresa\Dep
# grupo del departamento = modificar
# administradores = Control total
# resto de departamentos ? Lectura
# sin herencia

foreach ($d in $deps) {

    $dep = $d.departamento
    New-Item -Path "C:\Empresa\$dep" -ItemType Directory

    $aclDep = Get-Acl "C:\Empresa\$dep"

    # quito herencia y borro heredados
    $aclDep.SetAccessRuleProtection($true, $false) 

    # Administradores = control total

    $permisoadd = @("Administradores", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")

    $rule = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd

    $aclDep.SetAccessRule($rule)
    


    # grupo del departamento = modificar
    $permisoadd = @("$dom\$dep", "Modify", "ContainerInherit,ObjectInherit", "None", "Allow")
    $rule = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd
    $aclDep.SetAccessRule($rule)
    

    # resto de departamentos = lectura
    foreach ($x in $deps) {
        if ($x.departamento -ne $dep) {
            $permisoadd = @("$dom\$($x.departamento)", "ReadAndExecute", "ContainerInherit,ObjectInherit", "None", "Allow")
            $rule = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadd
            $aclDep.SetAccessRule($rule)
        }
    }

    Set-Acl -Path "C:\Empresa\$dep" -AclObject $aclDep
}


# coparitr C:\Empresa
# Usuarios del dominio si pueden acceder
New-SmbShare -Name "Empresa" -Path "C:\Empresa" -FullAccess "$dom\Usuarios del dominio"

Write-Output "FIN. CarpetaS, permisos y recurso compartido creados"

