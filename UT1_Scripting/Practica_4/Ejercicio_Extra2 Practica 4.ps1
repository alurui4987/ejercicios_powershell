[int]$numero = Read-Host "Introduce un número "


for ($i = 1; $i -le $numero; $i++){
    Write-Host ("- " *($i-1)) -NoNewline
    Write-Host ("*")
}

<#[int]$numero2 = Read-Host "Ingrese un número entero: "
for ($a = 0; $a -le $numero2; $a++) {
    for ($b = 0; $b -lt $a; $b++) {
        Write-Host -NoNewline "- "
    }
    Write-Host "*"
}#>