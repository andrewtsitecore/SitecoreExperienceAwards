<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: mobile-menu.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 28/03/2012 15:57:32                                               
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
<!-- To avoid unnecessary processing comment out this variable if you do not need to use it -->
<xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />  
<xsl:variable name="navigation" select="sc:item(sc:fld('mobile navigation',$home),.)"/>  

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  <xsl:choose>
    <xsl:when test="$navigation!=''">
	  <xsl:variable name="navoption" select="sc:fld('description',$navigation)"/>  
		<nav class="{$navoption} menu">
			<div style="width:99%;">
				<sc:image select="." field="banner image" class="mobile-banner"/>
			</div>
			<ul>
			<xsl:for-each select="sc:GetItemsOfType('site section',$home/item)">
				<xsl:if test="sc:fld('show',.)!=''">
					<li><sc:link select="."><sc:text field="menu title"/></sc:link></li>
				</xsl:if>
			</xsl:for-each>
			</ul>
		</nav>
    </xsl:when>
    <xsl:otherwise>
		<nav class="horizontal menu">
			<div style="width:99%;">
				<sc:image select="." field="banner image" w="320"/>
			</div>
			<ul>
			<xsl:for-each select="sc:GetItemsOfType('site section',$home/item)">
				<xsl:if test="sc:fld('show',.)!=''">
					<li><sc:link select="."><sc:text field="menu title"/></sc:link></li>
				</xsl:if>
			</xsl:for-each>
			</ul>
		</nav>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
</xsl:stylesheet>