<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Subitem Job Description.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/17/2007 3:33:58 PM                                               
    Copyright notice at bottom of file
==============================================================-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:sc="http://www.sitecore.net/sc" 
  xmlns:dot="http://www.sitecore.net/dot"
  exclude-result-prefixes="dot sc">

<!-- import required renderings and library functions -->
<xsl:import href="Subitem Common Fields.xslt"/>

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
  <xsl:call-template name="RenderJobDescription"/>
</xsl:template>

<xsl:template name="RenderJobDescription">
  <xsl:call-template name="showTitleAsH2Link"/>
  <xsl:call-template name="showOverviewAbstract"/>
  <xsl:call-template name="showReadMoreLink"/>
</xsl:template>

</xsl:stylesheet>

