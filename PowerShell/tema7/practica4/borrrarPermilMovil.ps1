Clear-Host

# nombre grupo
$grupo = "Personal"

# coger usuarios del grupo
$users = Get-ADGroupMember -Identity $grupo | Where-Object { $_.objectClass -eq "user" }

foreach ($u in $users) {

    # login (carla.mateu)
    $login = $u.SamAccountName

    # Quitar ruta del perfil movil
    Set-ADUser -Identity $login -ProfilePath $null
}

Write-Output "Perfiles moviles quitados al grupo Personal"
