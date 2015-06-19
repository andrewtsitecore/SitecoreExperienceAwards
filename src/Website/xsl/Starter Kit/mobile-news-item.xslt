<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: mobile-news-item.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 04/07/2012 15:07:03                                               
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

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  
<div style="font-size: 0.9em;">
	<div>
		<span class="mobilenewstitle"><sc:text field="title"/></span><br/>
		<span style="font-size: 0.7em;"><sc:date field="date" format="MMMM dd, yyyy"/></span>
	</div>
	<div style="margin-top: 15px;">
		<span style="font-size: 0.8em;"><sc:text field="text"/></span>
	</div>
</div>
  
  
</xsl:template>
</xsl:stylesheet>