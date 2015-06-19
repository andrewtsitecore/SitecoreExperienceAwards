function ModifyTdsConfig($file, $xpath, $newValue, $sitename) {
    Write-Host "Updating: $file"
    Write-Host "Xpath: $xpath"
    Write-Host "NewValue: $newValue"
    Write-Host $file
    [xml]$doc = Get-Content $file     
    $ns = new-object Xml.XmlNamespaceManager $doc.NameTable
    $ns.AddNamespace('dns', 'http://schemas.microsoft.com/developer/msbuild/2003')
    $nodes = $doc.SelectNodes($xpath, $ns) 
    #TODO: use xpath to get this (for some reason I couldnt, this will allow this to be a generic method for all csproj files)
    $nodes[0].ChildNodes[3].InnerXml = $newValue
    $nodes[0].ChildNodes[4].InnerXml = $sitename
    $doc.Save($file);  
}