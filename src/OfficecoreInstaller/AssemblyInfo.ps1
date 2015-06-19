$ErrorActionPreference = "Stop"
$build = [Environment]::GetEnvironmentVariable("bamboo_buildNumber")
$branch = [Environment]::GetEnvironmentVariable("bamboo_prefix")
$changeset = [Environment]::GetEnvironmentVariable("bamboo_planRepository_revision")
$prefix = [Environment]::GetEnvironmentVariable("ci_prefix") + [Environment]::GetEnvironmentVariable("bamboo_prefix")

$currentPath = Split-Path -parent $PSCommandPath
$p = [Environment]::GetEnvironmentVariable("PSModulePath")
$p += ";$currentPath\"
[Environment]::SetEnvironmentVariable("PSModulePath", $p)

$root = (get-item $currentPath ).parent.FullName

$filename = "$root\Website\Properties\AssemblyInfo.cs";

Write-Host "Editing file: $filename"

$assemblyVersionPattern = 'AssemblyVersion\("([0-9]+(\.([0-9]+|\*)){1,3})"\)'

$rawVersionNumberGroup = get-content $filename | select-string -pattern $assemblyVersionPattern | select -first 1 | % { $_.Matches } 
$rawVersionNumber = $rawVersionNumberGroup.Groups[1].Value

Write-Host "Version: $rawVersionNumber"

$versionParts = $rawVersionNumber.Split('.')
$assemblyFileVersion = "{0}.{1}.{2}.{3}" -f $versionParts[0], $versionParts[1], $versionParts[2], $build
$pomVersion = "{0}.{1}.{2}-{3}" -f $versionParts[0], $versionParts[1], $versionParts[2], $branch

Write-Host "FileVersion: $assemblyFileVersion"
$assemblyInformationalVersion = "{0} {1} {2}" -f $assemblyFileVersion, $branch, $changeset

Write-Host "ProductVersion: $assemblyInformationalVersion"

(Get-Content $filename) | 
    % {$_ -replace "AssemblyFileVersion\(""$rawVersionNumber""\)", "AssemblyFileVersion(""$assemblyFileVersion"")" } |
    % {$_ -replace "AssemblyInformationalVersion\(""$rawVersionNumber""\)", "AssemblyInformationalVersion(""$assemblyInformationalVersion"")" } > $filename

$sitesFolder = [Environment]::GetEnvironmentVariable("ci_sitesFolder")
$versionFile = $sitesFolder + "\" + $prefix + ".officecore.net\Data\oc-version.txt"
    
Write-Host "Writing to version file: $versionFile"    
Set-Content $versionFile $assemblyInformationalVersion

$bjob = (get-item $currentPath ).parent.parent.FullName
$pomFile = "$bjob\pom.xml"

Write-Host "Adjusting adjusting POM: $pomFile"
$doc = new-object System.Xml.XmlDocument
$ns = new-object System.Xml.XmlNamespaceManager($doc.NameTable);
$ns.AddNamespace("msbld", "http://maven.apache.org/POM/4.0.0");
$doc.Load($pomFile)
$node = $doc.SelectNodes("/msbld:project/msbld:version", $ns)
$node[0].InnerText = $pomVersion
$doc.Save($pomFile)
