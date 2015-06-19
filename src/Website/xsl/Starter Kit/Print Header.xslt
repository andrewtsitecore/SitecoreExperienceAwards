<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Print Header.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 11/23/2007 3:44:39 PM                                               
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
  <!--
       TOP INFORMATION
  -->
  <div id="header">
    <div id="company-name-as-logo">
      <xsl:choose>
        <xsl:when test="sc:fld('logo',$home)!=''">
          <sc:image field="logo" select="$home"/>
        </xsl:when>
        <xsl:otherwise>
          <sc:text field="name" select="$home"/>
        </xsl:otherwise>
      </xsl:choose>
    </div>
  </div>
</xsl:template>

</xsl:stylesheet>

