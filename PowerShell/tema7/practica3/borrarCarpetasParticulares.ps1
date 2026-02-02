Clear-Host

# borrar recurso compartido
Remove-SmbShare -Name "Empresa_users$" -Force

# borrar carpetas de usuarios
Remove-Item "C:\Empresa_users" -Recurse -Force

Write-Output "Borrado hecho”
