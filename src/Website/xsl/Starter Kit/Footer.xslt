<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Footer.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 11/22/2007 11:11:00 AM                                               
    Copyright notice at bottom of file
==============================================================-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:sc="http://www.sitecore.net/sc" 
  xmlns:dot="http://www.sitecore.net/dot"
  xmlns:dateutil="http://www.sitecore.net/dateutil"
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
<xsl:variable name="standard" select="$home/item[@key='standard-items']" />
<xsl:variable name="copyright" select="$standard/item[@key='copyright']" />
<xsl:variable name="common" select="/*/item[@key='content']/item[@key='settings']/item[@key='common text']" />
<xsl:variable name="about" select="$common/item[@key='about link']" />
<xsl:variable name="now" select="dateutil:get_IsoNow()" />
<xsl:variable name="current_year" select="sc:formatdate( $now, 'yyyy' )" />

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
    <div id="footer">
      <sc:text select="$copyright" field="copyright text"/>&#160;
      <xsl:choose>
        <xsl:when test="sc:fld('start year',$copyright)=$current_year">
          <sc:text select="$copyright" field="start year"/>&#160;
        </xsl:when>
        <xsl:otherwise>
          <sc:text select="$copyright" field="start year"/>-<xsl:value-of select="$current_year"/>&#160;
      </xsl:otherwise>
      </xsl:choose>
      <sc:text select="$copyright" field="copyright holder"/>&#160;
      <sc:link select="$copyright"><sc:text field="link text" select="$copyright"/></sc:link>
      <xsl:call-template name="ShowHelpLink">
        <xsl:with-param name="control_item" select="sc:item('/sitecore/content/help/developers/controls/footer',.)"/>
      </xsl:call-template>
    </div>
</xsl:template>

</xsl:stylesheet>