$ErrorActionPreference = 'Stop'

$pp = Get-PackageParameters

$package_name = $env:ChocolateyPackageName
$package_version = $env:ChocolateyPackageVersion
$install_path = "--- PATH ---\$package_name-$package_version.txt"

if (Test-Path -LiteralPath $install_path) {
    Remove-Item -LiteralPath $install_path -Force > $null
}

if($pp){
    if (Test-Path -LiteralPath "$env:TEMP\$($pp['File'])") {
        Remove-Item -LiteralPath "$env:TEMP\$($pp['File'])" -Force > $null
    }
}
