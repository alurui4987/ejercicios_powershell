<#Ejercicio 10. En una determinada empresa, sus empleados son evaluados al final de cada año. Los puntos que pueden obtener en la evaluación  comienzan en 0.0 y pueden ir aumentando, traduciéndose en mejores  beneficios. Los puntos que pueden conseguir los empleados  pueden ser 0.0, 0.4, 0.6 o más, pero no valores intermedios entre las  cifras mencionadas. A continuación se muestra una tabla con los niveles correspondientes a cada puntuación. La cantidad de dinero conseguida  en cada nivel es de 2.400€ multiplicada por la puntuación del nivel.  Nivel Puntuación Inaceptable 0.0 Aceptable 0.4 Meritorio 0.6 o más#>[double]$puntuacion = Read-Host "Escribe tu puntuación"

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