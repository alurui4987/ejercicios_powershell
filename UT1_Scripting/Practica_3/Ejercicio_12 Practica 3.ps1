<#Ejercicio 12. La pizzería Bella Napoli ofrece pizzas vegetarianas y no vegetarianas 
a sus clientes. Los ingredientes para cada tipo de pizza aparecen a continuación.

    Ingredientes vegetarianos: Pimiento y tofu.
    Ingredientes no vegetarianos: Peperoni, Jamón y Salmón. 
    
Escribir un programa que pregunte al usuario si quiere una pizza vegetariana o no,
y en función de su respuesta le muestre un menú con los ingredientes disponibles 
para que elija. Solo se puede eligir un ingrediente además de la mozzarella y el 
tomate que están en todas la pizzas. Al final se debe mostrar por pantalla si la 
pizza elegida es vegetariana o no y todos los ingredientes que lleva.
#>

[int]$pizza = Read-Host "De que tipo quieres la pizza? `n
1. Vegetariana `n
2. No vegetariana `n
Cual es tú elección?"

switch($pizza){
    {$_ -eq 1}
        {Write-Host "Ingredientes vegetarianos:"
        Write-Host "1.Pimiento"
        Write-host "2.Tofu"

        [int]$ingredientes = Read-Host "Que ingredientes quieres? (Todas las pizzas llevan tomate y mozzarella)"
            
            switch($ingredientes){
                    {$_ -eq 1}
                        {Write-Host "Tu pizza es vegetariana"
                        Write-Host "Tu pizza es de Tomate,mozzarella y pimiento"}
                    {$_ -eq 2}
                        {Write-host "Tu pizza es vegetariana"
                        Write-Host "Tu pizza es de Tomate, mozzarella y Tofu"}
            }
        }

{$_ -eq 2}{
    Write-Host "Ingredientes no vegetarianos:"
    Write-Host "1.Peperoni"
    Write-Host "2.Jamón"
    Write-Host "3.Salmón"

        [int]$ingredientes = Read-Host "Que ingredientes quieres? (Todas las pizzas llevan tomate y mozzarella)"

        switch($ingredientes){
            {$_ -eq 1}{
                Write-Host "La pizza no es vegetariana."
                Write-Host "Los ingredientes de la pizza seran Tomate,mozzarella y Peperoni"
            }
            {$_ -eq 2}{
                Write-Host "La pizza no es vegetariana."
                Write-Host "Los ingredientes de la pizza seran Tomate,mozzarella y Jamón"
            }
            {$_ -eq 3}{
                Write-Host "La pizza no es vegetariana."
                Write-Host "Los ingredientes de la pizza seran Tomate,mozzarella y Salmón"
            }
        }
    }
}


