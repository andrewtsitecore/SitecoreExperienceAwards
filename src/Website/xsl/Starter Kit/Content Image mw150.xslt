﻿<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Content Image mw150.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/12/2007 2:09:05 PM                                               
    Copyright notice at bottom of file
==============================================================-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:sc="http://www.sitecore.net/sc" 
  xmlns:dot="http://www.sitecore.net/dot"
  exclude-result-prefixes="dot sc">

<!-- import required renderings and library functions -->
<xsl:import href="Content Image.xslt"/>

<!-- output directives -->
<xsl:output method="html" indent="no" encoding="UTF-8" />

<!-- parameters -->
<xsl:param name="lang" select="'en'"/>
<xsl:param name="id" select="''"/>
<xsl:param name="sc_item"/>
<xsl:param name="sc_currentitem"/>

<!-- variables -->
<!-- This example variable is commented out, to avoid unnecessary processing...
<xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />  
 -->

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  <xsl:call-template name="RenderImage">
    <xsl:with-param name="maxWidth" select="150"/>
  </xsl:call-template>
</xsl:template>

</xsl:stylesheet>
