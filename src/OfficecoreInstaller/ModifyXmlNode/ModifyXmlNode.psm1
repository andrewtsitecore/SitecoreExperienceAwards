function ModifyXmlNode($file, $xpath, $newValue) {
    Write-Host "Updating $file using XPATH:[$xpath] and new value: $newValue"
    $doc = new-object System.Xml.XmlDocument
    $doc.Load($file)
    $node = $doc.SelectNodes($xpath)
    $node[0].value = $newValue
    $doc.Save($file)
    Write-Host "Finished Updating $file"
}