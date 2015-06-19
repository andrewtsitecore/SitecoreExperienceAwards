<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Teasers.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 11/22/2007 1:27:13 PM                                               
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
<!-- This example variable is commented out, to avoid unnecessary processing...
<xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />  
 -->
<xsl:variable name="common" select="/*/item[@key='content']/item[@key='settings']/item[@key='common text']" /> 
<xsl:variable name="readmore" select="sc:item('B3A81310-7654-4C37-82D1-08C900CF4213',.)" />
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
      <div class="teaser">
        <xsl:call-template name="showteaser">
          <xsl:with-param name="teaser_item" select="."/>
        </xsl:call-template>
      </div>
    </xsl:for-each>
</xsl:template>

<xsl:template name="showteaser">
  <xsl:param name="teaser_item"/>
  <xsl:variable name="teaser" select="sc:item($teaser_item,.)"/>
  <xsl:variable name="teaser_link" select="sc:item(sc:fld('teaser link',.),.)"/>

  <div class="teaser-header">
    <p>
      <!--<sc:link field="teaser link" select="$teaser">-->
        <sc:text field="teaser title" select="$teaser"/>
      <!--</sc:link>-->
    </p>  
  </div>
  <div class="teaser-image">
    <sc:link field="teaser link" select="$teaser">
      <sc:image field="teaser image" select="$teaser" w="208" h="250" as="1" bc="white" />
    </sc:link>
    <span class="teaser-sunken">
      <p>
        <sc:memo field="teaser abstract" select="$teaser"/>
      </p>
    </span>  
  </div>
  
  
</xsl:template>

</xsl:stylesheet>