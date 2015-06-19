<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: mobile-news-list.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 04/07/2012 14:34:27                                               
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
  
<xsl:for-each select="./item">
<xsl:sort select="sc:fld('date',.)" data-type="text" order="descending"/>
<div class="mobilehr">
	<div style="float:left; width: 95px;">
		<sc:image field="image" mw="83" mh="60" style="margin: 0px;" />
	</div>
	<div style="font-size: 0.9em;">
		<div>
			<sc:link><sc:text field="title"/></sc:link><br/>
			<span style="font-size: 0.7em;"><sc:date field="date" format="MMMM dd, yyyy"/></span>
		</div>
		<div style="margin-top: 15px;">
			<span style="font-size: 0.8em;"><sc:text field="overview abstract"/></span>
		</div>
	</div>
</div>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>