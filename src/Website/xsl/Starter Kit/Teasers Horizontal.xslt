<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Teasers Horizontal.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/14/2007 10:50:23 AM                                               
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
<xsl:variable name="common" select="/*/item[@key='content']/item[@key='settings']/item[@key='common text']" /> 
<xsl:variable name="readmore" select="$common/item[@key='read more']" />
<xsl:variable name="about" select="$common/item[@key='about link']" />

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  <xsl:for-each select="sc:Split('teasers',.)">
    <table><tr><td>
      <xsl:call-template name="showteaser">
        <xsl:with-param name="teaser_item" select="."/>
      </xsl:call-template>
    </td></tr></table>
  </xsl:for-each>
</xsl:template>

<xsl:template name="showteaser">
  <xsl:param name="teaser_item"/>
  <xsl:variable name="teaser" select="sc:item($teaser_item,.)"/>
  <xsl:variable name="teaser_link" select="sc:item(sc:fld('teaser link',.),.)"/>

  <xsl:if test="sc:fld('show help links',$home)='1'">
    <div class="about-link">
      <a href="/about_teaser.aspx" title="Learn about the teasers...">
        <sc:text field="text" select="$about"/>
      </a>
    </div>
  </xsl:if>

  <div>
    <h2>
      <sc:link field="teaser link" select="$teaser">
        <sc:text field="teaser title" select="$teaser"/>
      </sc:link>
    </h2>
  <sc:link field="teaser link" select="$teaser">
    <sc:image field="teaser image" select="$teaser" class="photo-border photo-float-right" w="150" h="75" as="1" bc="white"/>
  </sc:link>
    <p>
      <sc:memo field="teaser abstract" select="$teaser"/>
    </p>
  </div>
</xsl:template>


</xsl:stylesheet>
