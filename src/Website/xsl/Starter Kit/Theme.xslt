<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Theme.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 11/22/2007 12:31:22 PM                                               
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
<xsl:variable name="theme" select="sc:item(sc:fld('theme',$home),.)"/>  

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  <xsl:variable name="qstheme" select="sc:qs('t')"/>
  <xsl:choose>
    <xsl:when test="$qstheme!=''">
      <link href="/css/{$qstheme}.css" rel="stylesheet"/>
    </xsl:when>
    <xsl:otherwise>
      <link href="/css/{sc:fld('css file',$theme)}" rel="stylesheet"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

</xsl:stylesheet>
