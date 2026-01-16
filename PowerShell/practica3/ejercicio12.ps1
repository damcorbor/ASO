<#
Ejercicio 12. La pizzería Bella Napoli ofrece pizzas vegetarianas y no vegetarianas a sus clientes. Los ingredientes para cada tipo de pizza aparecen a continuación.

Ingredientes vegetarianos: Pimiento y tofu.
Ingredientes no vegetarianos: Peperoni, Jamón y Salmón. Escribir un programa que pregunte al usuario si quiere una pizza vegetariana o no, y en función de su respuesta le muestre un menú con los ingredientes disponibles para que elija.
Solo se puede eligir un ingrediente además de la mozzarella y el tomate que están en todas la pizzas. Al final se debe mostrar por pantalla si la pizza elegida es vegetariana o no y todos los ingredientes que lleva.
#>

Clear-Host

$ingredientesVegetariana = @("pimiento", "tofu")
$ingredientesNoVegetarianos = @("peperoni", "jamon", "salmón")
$pizza = @("tomate", "mozzarella")

Write-Output $ingredientesNoVegetarianos[0]

[string] $opcion = Read-Host "Quiere pizza vegetariana o no? (si/no): "

if ($opcion -ceq "si" -or $opcion -ceq "SI" -or $opcion -ceq "Si") {
    Write-Output " INGREDIENTES VEGETARIANOS: $($ingredientesVegetariana -join ', ')"
    while ($pizza.Count -ne 3) {
        [string] $añadir = Read-Host "Que igrediente deseas añadir? "
        while ($ingredientesVegetariana -notcontains $añadir) {
            Write-Output "opcion no valida"
            [string] $añadir = Read-Host "Vuelve a introducir el igrediente que deseas añadir "
        }
        $pizza += $añadir
    }
} elseif ($opcion -ceq "no" -or $opcion -ceq "NO" -or $opcion -ceq "No") {
    Write-Output " INGREDIENTES NO VEGETARIANOS: $($ingredientesNoVegetarianos -join ', ')"
    while ($pizza.Count -ne 3) {
        [string] $añadir = Read-Host "Que igrediente deseas añadir? "
        while ($ingredientesNoVegetarianos -notcontains $añadir) {
            Write-Output "opcion no valida"
            [string] $añadir = Read-Host "Vuelve a introducir el igrediente que deseas añadir "
        }
        $pizza += $añadir
    }
} else {
    Write-Output "Opcion NO VALIDA"
}

Write-Output ""

Write-Output "La pizza final es la siguiente: $($pizza -join ', ')"
