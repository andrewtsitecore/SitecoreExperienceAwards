<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Html head title.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/12/2007 12:56:05 PM                                               
    Copyright notice at bottom of file
==============================================================-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:sc="http://www.sitecore.net/sc" 
  xmlns:dot="http://www.sitecore.net/dot"
  exclude-result-prefixes="dot sc">

<!-- output directives -->
<xsl:output method="html" indent="no" encoding="UTF-8" />

<!-- parameters -->
<xsl:param name="lang" select="'en'"/>
<xsl:param name="id" select="''"/>
<xsl:param name="sc_item"/>
<xsl:param name="sc_currentitem"/>

<!-- variables -->
<xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />  

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  <sc:text field="name" select="$home" disable-web-editing="true"/> - 
  <xsl:choose>
    <xsl:when test="sc:fld('title',.)!=''">
      <sc:text field="title" disable-web-editing="true"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="./@name"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

</xsl:stylesheet>