﻿<#Ejercicio 10. En una determinada empresa, sus empleados son evaluados al

if ($puntuacion -eq 0.0) {
    $dinero = $puntuacion * 2400
    Write-Host "Tu puntuación es Horrible, te corresponden $dinero €"
} elseif ($puntuacion -eq 0.4) {
    $dinero = $puntuacion * 2400
    Write-Host "Tu puntuación es Aceptable, te corresponden $dinero €"
} elseif ($puntuacion -ge 0.6) {
    $dinero = $puntuacion * 2400
    Write-Host "Tu puntuación es Perfecta, te corresponden $dinero €"
} else {
    Write-Host "Tu puntuación debe ser 0.0, 0.4 o estar por encima de 0.6"
}