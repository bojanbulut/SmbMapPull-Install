
Set-ExecutionPolicy Bypass #Permissions 

Install-PackageProvider -Name NuGet -Force #install dependency

$Azpath= "C:\Program Files\WindowsPowerShell\Modules\Az"
$pathbool = Test-path -Path $Azpath

if ($pathbool -eq $false) {Install-Module -Name AzureRM -Force; Write-Host("Azure Module has been installed")

}elseif(Write-Host "AzureRM is already installed"){
}

Start-Sleep -Seconds 10

exit 