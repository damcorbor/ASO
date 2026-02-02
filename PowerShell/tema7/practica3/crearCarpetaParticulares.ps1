Clear-Host

# Ruta base de usuarios
New-Item -Path "C:\Empresa_users" -ItemType Directory

# Dominio corto
$dom = (Get-ADDomain).NetBIOSName

# Quitar herencia y dejar solo administradores
$acl = Get-Acl "C:\Empresa_users"

$acl.SetAccessRuleProtection($true, $false)

# Administradores = control total
$permisoadd = @("Administradores", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule $permisoadd
$acl.SetAccessRule($rule)

#nuevo
$permisoadd = @("$dom\Usuarios del dominio", "ReadAndExecute", "ContainerInherit,ObjectInherit", "None", "Allow")
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule $permisoadd
$acl.SetAccessRule($rule)

Set-Acl -Path "C:\Empresa_users" -AclObject $acl

# Importar usuarios
$emps = Import-Csv "C:\Users\Administrador\Desktop\t1_p1\empleados.csv" -Delimiter ";"

foreach ($e in $emps) {

    # login nombre.apellido
    $n = ($e.nombre -replace " ","").ToLower()
    $a = ($e.apellido -replace " ","").ToLower()
    $login = "$n.$a"

    # crear carpeta personal
    New-Item -Path "C:\Empresa_users\$login" -ItemType Directory

    $aclUser = Get-Acl "C:\Empresa_users\$login"

    # quitar herencia
    $aclUser.SetAccessRuleProtection($true, $false)

    # usuario = control total
    $permisoadd = @("$dom\$login", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
    $rule = New-Object System.Security.AccessControl.FileSystemAccessRule $permisoadd
    $aclUser.SetAccessRule($rule)

    # administradores = control total
    $permisoadd = @("Administradores", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
    $rule = New-Object System.Security.AccessControl.FileSystemAccessRule $permisoadd
    $aclUser.SetAccessRule($rule)

    Set-Acl -Path "C:\Empresa_users\$login" -AclObject $aclUser

    # asignar carpeta personal y script de inicio
    Set-ADUser -Identity $login `
        -ScriptPath "carpetas.bat" `
        -HomeDrive "Z:" `
        -HomeDirectory "\\EMPRESA-DC1\Empresa_users$\$login"
}

# Compartir carpeta oculta
New-SmbShare -Name "Empresa_users$" -Path "C:\Empresa_users" -FullAccess "Administradores" -ChangeAccess "Usuarios del dominio"
#recordar fallo al no dar lectura y ejecucion usuarios del dominio

Write-Output "Carpetas personales creadas”



