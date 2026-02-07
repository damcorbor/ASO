Clear-Host

# Dominio corto
$dom = (Get-ADDomain).NetBIOSName

# nombre grupo
$grupo = "Personal"

# coger usuarios del grupo
$users = Get-ADGroupMember -Identity $grupo | Where-Object { $_.objectClass -eq "user" }

foreach ($u in $users) {

    # login (consuelo.mateu)
    $login = $u.SamAccountName

    # Ruta del perfil movil
    $rutaPerfil = "\\EMPRESA-DC1\Empresa_users$\$login"

    # Crear carpeta del perfil movil (V6)
    New-Item -Path "C:\Empresa_users\$login.V6" -ItemType Directory -Force

    # Permisos del perfil movil
    $acl = Get-Acl "C:\Empresa_users\$login.V6"
    $acl.SetAccessRuleProtection($true, $false)

    # usuario = control total
    $permisoadd = @("$dom\$login", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
    $rule = New-Object System.Security.AccessControl.FileSystemAccessRule $permisoadd
    $acl.SetAccessRule($rule)

    # administradores = control total
    $permisoadd = @("Administradores", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
    $rule = New-Object System.Security.AccessControl.FileSystemAccessRule $permisoadd
    $acl.SetAccessRule($rule)

    Set-Acl -Path "C:\Empresa_users\$login.V6" -AclObject $acl

    # Asignar ruta
    Set-ADUser -Identity $login -ProfilePath $rutaPerfil
}

Write-Output "Perfiles moviles asignados al grupo Personal"
