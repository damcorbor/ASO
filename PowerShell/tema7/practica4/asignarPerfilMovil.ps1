Clear-Host

# Dominio corto
$dom = (Get-ADDomain).NetBIOSName

# nombre grupo
$grupo = "Personal"

# coger usuarios del grupo
$users = Get-ADGroupMember -Identity $grupo | Where-Object { $_.objectClass -eq "user" }

foreach ($u in $users) {

    # login (carla.mateu)
    $login = $u.SamAccountName

    # Ruta del perfil movil
    $rutaPerfil = "\\EMPRESA-DC1\Empresa_users$\$login"

    # Asignar ruta
    Set-ADUser -Identity $login -ProfilePath $rutaPerfil
}

Write-Output "Perfiles moviles asignados al grupo Personal"
