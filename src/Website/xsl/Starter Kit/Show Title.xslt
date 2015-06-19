<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Show Title.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/6/2007 11:21:44 AM                                               
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
<xsl:variable name="home" select="/*/item[@key='content']/item[@key='home']" />  

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  <xsl:call-template name="showtitle">
    <xsl:with-param name="item" select="."/>
  </xsl:call-template>
</xsl:template>

<xsl:template name="showtitle">
  <xsl:param name="item"/>

  <xsl:choose>
    <xsl:when test="sc:fld('title',$item)!=''">
      <sc:text field="title" select="$item"/>
    </xsl:when>
    <xsl:when test="sc:fld('menu title',$item)!=''">
      <sc:text field="menu title" select="$item"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$item/@name"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

</xsl:stylesheet>

