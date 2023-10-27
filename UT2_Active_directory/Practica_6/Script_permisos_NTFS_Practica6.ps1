#Crear carpeta empresa_users
New-Item -Path C:\Empresa_users -ItemType Directory

#A partir de empleados.csv construir las carpetas
$empleados =  Import-Csv C:\Users\Administrador\Documents\empleados.csv -Delimiter ";"

foreach($em in $empleados){

    New-Item -Path C:\Empresa_users\"$($em.nombre).$($em.apellido)" -ItemType Directory

}

#Compartir la carpeta en modo oculto.
New-SmbShare -Path C:\Empresa_users -Name Empresa_users$ -FullAccess "Administrador" -ChangeAccess "Usuarios del dominio"

foreach($em in $empleados){
    
$acl = Get-Acl -Path C:\Empresa_users\"$($em.nombre).$($em.apellido)"

#Deshabilitar la herencia y eliminar TODAS las reglas de acceso.
$acl.SetAccessRuleProtection($true,$false)

#Añadir el grupo administradores.
$permisos = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
$acl.SetAccessRule($ace)

#Añadir permiso de control total al propietario de la carpeta.
$permisos = "$($em.nombre).$($em.apellido)",'FullControl','ContainerInherit,ObjectInherit','None','Allow'
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
$acl.SetAccessRule($ace)

#Establecer los permisos.
$acl | Set-Acl -Path C:\Empresa_users\"$($em.nombre).$($em.apellido)"

#Añadir las carpetas del propio usuario y de su departamento.
if($($em.departamento) -ieq "finanzas"){
Set-ADUser -identity "$($em.nombre).$($em.apellido)" -ScriptPath "carpetas_finanzas.bat" -HomeDrive "Z:" -HomeDirectory "\\Empresa-dc1\Empresa_users$\$($em.nombre).$($em.apellido)"
}elseif($($em.departamento) -ieq "produccion"){
Set-ADUser -identity "$($em.nombre).$($em.apellido)" -ScriptPath "carpetas_produccion.bat" -HomeDrive "Z:" -HomeDirectory "\\Empresa-dc1\Empresa_users$\$($em.nombre).$($em.apellido)"
}elseif($($em.departamento) -ieq "ventas"){
Set-ADUser -identity "$($em.nombre).$($em.apellido)" -ScriptPath "carpetas_ventas.bat" -HomeDrive "Z:" -HomeDirectory "\\Empresa-dc1\Empresa_users$\$($em.nombre).$($em.apellido)"
}elseif($($em.departamento) -ieq "personal"){
Set-ADUser -identity "$($em.nombre).$($em.apellido)" -ScriptPath "carpetas_personal.bat" -HomeDrive "Z:" -HomeDirectory "\\Empresa-dc1\Empresa_users$\$($em.nombre).$($em.apellido)"}

#Otra manera de realizarlo más corta --> Set-ADUser -identity $($em.nombre).$($em.apellido) -ScriptPath "carpetas_$($em.departamento).bat" -HomeDrive "Z:" -HomeDirectory "º\Empresa-dc1\Empresa_users$\$($em.nombre).$($em.apellido)"
}