[int]$numero = Read-Host "Ingrese un número entero: "
$total = $numero*2
for ($a = 1; $a -le $total; $a += 2) {
    for ($b = $a; $b -ge 1; $b -= 2) {
        Write-Host -NoNewline "$b "
    }
    Write-Host ""
}