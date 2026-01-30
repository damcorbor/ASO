Clear-Host

# Crear OU Empresa
New-ADOrganizationalUnit -Name "Empresa" -Path "DC=empresa,DC=local" -Description "Unidad principal" -ProtectedFromAccidentalDeletion $false

# Crear OUs de departamentos y su grupo
$deps = Import-Csv "C:\Users\Administrador\Desktop\t1_p1\departamentos.csv" -Delimiter ";"

foreach ($d in $deps) {

    # OU del departamento dentro de Empresa
    New-ADOrganizationalUnit -Name $d.departamento -Path "OU=Empresa,DC=empresa,DC=local" -Description $d.descripcion -ProtectedFromAccidentalDeletion $false

    # Grupo del departamento dentro de su OU
    New-ADGroup -Name $d.departamento -GroupCategory Security -GroupScope Global -Path "OU=$($d.departamento),OU=Empresa,DC=empresa,DC=local"
}

# Crear usuarios y meterlos en su grupo
$emps = Import-Csv "C:\Users\Administrador\Desktop\t1_p1\empleados.csv" -Delimiter ";"

foreach ($e in $emps) {

    # login: nombre.apellido (en minúsculas y sin espacios)
    $n = ($e.nombre -replace " ","").ToLower()
    $a = ($e.apellido -replace " ","").ToLower()
    $login = "$n.$a"

    #lo creamos

    New-ADUser -Name "$($e.nombre) $($e.apellido)" `
        -SamAccountName $login `
        -UserPrincipalName "$login" `
        -GivenName $e.nombre `
        -Surname $e.apellido `
        -Path "OU=$($e.departamento),OU=Empresa,DC=empresa,DC=local" `
        -AccountPassword (ConvertTo-SecureString "aso2025." -AsPlainText -Force) `
        -ChangePasswordAtLogon $true `
        -Enabled $true

    # añadir al grupo del departamento
     Add-ADGroupMember -Identity $e.departamento -Members $login -ErrorAction Stop
}

Write-Output "Estructura creada"
