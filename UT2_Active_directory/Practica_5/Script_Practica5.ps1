New-Item -Path C:\Empresa -ItemType Directory

$departamentos = Import-Csv C:\Users\Administrador\Documents\departamentos.csv -Delimiter ";"

foreach ($dep in $departamentos){
    
    $depaNombre = $dep.departamento

    New-Item -Path C:\Empresa\$depaNombre -ItemType Directory
}

foreach ($dep in $departamentos){
    New-SmbShare -Path C:\Empresa\"$($dep.departamento)" -Name "$($dep.departamento)" -ChangeAccess "$($dep.departamento)" -FullAccess "Administradores" -ReadAccess "Usuarios del dominio"
}
 