$prefix = [Environment]::GetEnvironmentVariable("bamboo_prefix")
$hostnamePrefix = [Environment]::GetEnvironmentVariable("ci_prefix") + $prefix

$webHostName = $hostnamePrefix + ".officecore.net"
$googleHostName = $hostnamePrefix + ".officecore.google"
$bingHostName = $hostnamePrefix + ".officecore.bing"
$webHostName2 = $webHostName + ".ci.sitecoresandbox.net"
$googleHostName2 = $googleHostName + ".ci.sitecoresandbox.net"
$bingHostName2 = $bingHostName + ".ci.sitecoresandbox.net"

$tdsFile = "\Officecore.Tds\Officecore.Tds.scproj"
$tdsCoreFile = "\officecore.core.tds\Officecore.Tds.Core.scproj"

$root = [Environment]::GetEnvironmentVariable("ci_sitesFolder") + "\" + $webHostName
Write-Host Working root is: $root -foregroundcolor "green"

Write-Host Setting Environment Variables
$currentPath = Split-Path -parent $PSCommandPath

$srcPath = (get-item $currentPath ).parent.FullName

$p = [Environment]::GetEnvironmentVariable("PSModulePath")
$p += ";$currentPath\"
[Environment]::SetEnvironmentVariable("PSModulePath", $p)

import-module ModifyTdsConfig

Write-Host "ModifyTDSConfig "
ModifyTdsConfig "$srcPath$tdsFile" "//dns:PropertyGroup[2]" "$root\Website" "http://$webHostName";

Write-Host "ModifyTDSCoreConfig "
ModifyTdsConfig "$srcPath$tdsCoreFile" "//dns:PropertyGroup[2]" "$root\Website" "http://$webHostName";

Write-Host "ModifyWebConfig"
$webFolderSrc = $srcPath + "\Website"
$webConfig = "$webFolderSrc\web.config"
ModifyXmlNode $webConfig "/configuration/sitecore[@database=`"SqlServer`"]//sc.variable[1]" "$root\Data"
ModifyXmlNode $webConfig "/configuration/sitecore[@database=`"SqlServer`"]//sc.variable[4]" "$webHostName|$webHostName2"
ModifyXmlNode $webConfig "/configuration/sitecore[@database=`"SqlServer`"]//sc.variable[5]" "$googleHostName|$googleHostName2"
ModifyXmlNode $webConfig "/configuration/sitecore[@database=`"SqlServer`"]//sc.variable[6]" "$bingHostName|$bingHostName2"