clear
$politicaEjecucion = $(Get-ExecutionPolicy)

if ($politicaEjecucion -eq "RemoteSigned") {
    Write-Output "Ya dispones de una politica adecuada, en este caso $politicaEjecucion"
} else {
    Write-Output "No dispones de la politica adecuada ($politicaEjecucion), aplicando politica adecuada..."
    Set-ExecutionPolicy RemoteSigned
    if ($? -eq "True") {
       Write-Output "Politica aplicada correctamente... "
    } else {
       Write-Output "Ha habido un error..."
       Write-Output "Abre powershell y aplica tu mismo el comando: ' Set-ExecutionPolicy RemoteSigned ' "
    }
}

Write-Output ""
Write-Output "Tu version actual de powershell es: $PSVersionTable"