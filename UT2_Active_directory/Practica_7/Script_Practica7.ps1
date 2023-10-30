 $empleados = Import-Csv C:\Users\Administrador\Documents\empleados.csv -Delimiter ";"

 foreach($em in $empleados){
    if($em.departamento -ieq "PERSONAL"){
        Set-ADUser -identity "$($em.nombre).$($em.apellido)" -ProfilePath "\\Empresa-dc1\Empresa_users$\$($em.nombre).$($em.apellido)"
    }
 }