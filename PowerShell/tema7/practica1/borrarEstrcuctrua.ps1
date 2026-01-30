Clear-Host
# quitar protección a Empresa
Set-ADOrganizationalUnit -Identity "OU=Empresa,DC=empresa,DC=local" -ProtectedFromAccidentalDeletion $false


# borrar todo
Remove-ADOrganizationalUnit -Identity "OU=Empresa,DC=empresa,DC=local" -Recursive -Confirm:$false

Write-Output "Estrcutura Borrada"

