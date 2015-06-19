<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Site Logo.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 11/22/2007 9:39:51 AM                                               
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
<!--<xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />-->
<xsl:variable name="home" select="/*/item[@key='content']/item[@key='home']" />
<xsl:variable name="common" select="/*/item[@key='content']/item[@key='settings']/item[@key='common text']" />
<xsl:variable name="about" select="$common/item[@key='about link']" />

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  <xsl:call-template name="ShowHelpLink">
    <xsl:with-param name="control_item" select="sc:item('/sitecore/content/help/developers/controls/site-logo',.)"/>
  </xsl:call-template>
  <xsl:if test="(sc:fld('logo',$home)!='') or (sc:pageMode()/pageEditor/edit)">
    <div id="company-logo">
      <sc:link select="$home" title="">
        <sc:image field="logo" select="$home" Height="68" />
      </sc:link>
    </div>
  </xsl:if>
  <xsl:if test="(sc:fld('logo',$home)='') and (sc:pageMode()/pageEditor/edit)">
    <div id="company-name-as-logo">
      <sc:link select="$home" title="">
        <sc:text field="name" select="$home"/>
      </sc:link>
    </div>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
