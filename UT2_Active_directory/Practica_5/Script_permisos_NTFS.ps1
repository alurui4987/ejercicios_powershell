New-Item -Path C:\Empresa -ItemType Directory

$departamentos = Import-Csv C:\Users\Administrador\Documents\departamentos.csv -Delimiter ";"

foreach ($dep in $departamentos){
    
    $depaNombre = $dep.departamento

    New-Item -Path C:\Empresa\$depaNombre -ItemType Directory
}

foreach ($dep in $departamentos){

New-SmbShare -Path C:\Empresa\"$($dep.departamento)" -Name "$($dep.departamento)" -ChangeAccess "$($dep.departamento)" -FullAccess "Administradores" -ReadAccess "Usuarios del dominio"

$acl = Get-Acl -Path C:\Empresa\"$($dep.departamento)"

#Rompe la herencia y especifica eliminar TODAS las reglas de acceso.
$acl.SetAccessRuleProtection($true, $false)

#Añadir al grupo administradores control total.
$permisos = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
$acl.SetAccessRule($ace)

#Añadir permisos de lectura a los Usuarios del dominio.
$permisos = 'Usuarios del dominio','Read','ContainerInherit,ObjectInherit','None','Allow'
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
$acl.SetAccessRule($ace)

#Añadir permisos de modificar a los grupos de cada departamento..
$permisos = $($dep.departamento),'Modify','ContainerInherit,ObjectInherit','None','Allow'
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
$acl.SetAccessRule($ace)

#Establecer los permisos.
$acl | Set-Acl -Path C:\Empresa\"$($dep.departamento)"

}