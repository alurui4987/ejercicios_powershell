<#Actividad 2 UT2_Practica3#>

New-ADOrganizationalUnit -Name "Empresa" -Path "DC=EMPRESA,DC=LOCAL" -Description "Unidad Empresa"

$departamento = Import-Csv C:\Users\Administrador\Documents\departamentos.csv -Delimiter ";"
$empleados = Import-Csv C:\Users\Administrador\Documents\empleados.csv -Delimiter ";"

foreach($depa in $departamento){

        $depaNombre = $depa.departamento
        $depaDescrip = $depa.descripcion


        New-ADOrganizationalUnit -Name $depaNombre -Description $depaDescrip -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL"
        New-ADGroup -Name $depaNombre -GroupCategory Security -GroupScope Global -Path "OU=$depaNombre,OU=Empresa,DC=EMPRESA,DC=LOCAL"
}
foreach($emple in $empleados){

    $depa = $emple.departamento
    $empleNombre = $emple.nombre
    $empleApellido = $emple.apellido

    New-ADUser -Name "$empleNombre.$empleApellido" -Path "OU=$depa,OU=Empresa,DC=EMPRESA,DC=LOCAL" -UserPrincipalName "$empleNombre.$empleApellido@EMPRESA.LOCAL" 
    -AccountPassword (ConvertTo-SecureString "aso2021." -AsPlainText -Force) -GivenName $empleNombre -Surname $empleApellido -ChangePasswordAtLogon $true -Enabled $true

    Add-ADGroupMember -Identity $depa -Members "$empleNombre.$empleApellido"
}



