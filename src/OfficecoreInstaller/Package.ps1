$prefix = [Environment]::GetEnvironmentVariable("ci_prefix") + [Environment]::GetEnvironmentVariable("bamboo_prefix")
$exportFolder = [Environment]::GetEnvironmentVariable("ci_exportFolder")
$sitesFolder = [Environment]::GetEnvironmentVariable("ci_sitesFolder")

$pathToZipExe = "C:\Program Files\7-zip\7z.exe"

$currentPath = Split-Path -parent $PSCommandPath
$root = (get-item $currentPath ).parent.FullName

$assemblyVersionPattern = 'AssemblyFileVersion\("([0-9]+(\.([0-9]+|\*)){1,3})"\)'
$assemblyFile = "$root\Website\Properties\AssemblyInfo.cs";
$rawVersionNumberGroup = get-content $assemblyFile | select-string -pattern $assemblyVersionPattern | select -first 1 | % { $_.Matches } 
$rawVersionNumber = $rawVersionNumberGroup.Groups[1].Value

$source = "$sitesFolder\$prefix.officecore.net\*"
$dest = "$exportFolder\officecore-" + [Environment]::GetEnvironmentVariable("bamboo_prefix") + "-$rawVersionNumber.zip"

$excludeFolders = @("temp", "serialization")
$excludeFiles = @("*\packages\*", "*\logs\*", "*\diagnostics\*", "*.ldf", "*.mdf", "*.bat", "*.update")

$p = [Environment]::GetEnvironmentVariable("PSModulePath")
$p += ";$currentPath\"
[Environment]::SetEnvironmentVariable("PSModulePath", $p)

Import-Module 7Zip

ZipFile $source $dest $excludeFolders $excludeFiles