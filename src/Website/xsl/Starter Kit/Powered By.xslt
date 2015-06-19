<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Powered By.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 11/22/2007 11:33:57 AM                                               
    Copyright notice at bottom of file
==============================================================-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:sc="http://www.sitecore.net/sc" 
  xmlns:dot="http://www.sitecore.net/dot"
  exclude-result-prefixes="dot sc">

<!-- import required renderings and library functions -->
<xsl:import href="Show Help Link.xslt"/>

<!-- output directives -->
<xsl:output method="html" indent="no" encoding="UTF-8" />

<!-- parameters -->
<xsl:param name="lang" select="'en'"/>
<xsl:param name="id" select="''"/>
<xsl:param name="sc_item"/>
<xsl:param name="sc_currentitem"/>

<!-- variables -->
<xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />
<xsl:variable name="revision" select="/*/item[@key='content']/item[@key='meta-data']/item[@key='starter kit revision']" /> 

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  <div id="powered-by-link">
    <xsl:call-template name="ShowHelpLink">
      <xsl:with-param name="control_item" select="sc:item('/sitecore/content/help/developers/controls/powered-by',.)"/>
    </xsl:call-template>
    <sc:link field="powered by link" select="$home">
      <sc:image field="powered by image" select="$home"/>
    </sc:link>
    <xsl:if test="$home/@key!='home'">
      <br/>Rev. <sc:text field="text" select="$revision"/>
    </xsl:if>
  </div>
</xsl:template>

</xsl:stylesheet>
