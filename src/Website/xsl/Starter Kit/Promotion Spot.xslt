<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Promotion Spot.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 08/12/2011 10:42:11                                               
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
  <!--<xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />-->

  <!-- entry point -->
  <xsl:template match="*">
    <xsl:apply-templates select="$sc_item" mode="main"/>
  </xsl:template>

  <!--==============================================================-->
  <!-- main                                                         -->
  <!--==============================================================-->
  <xsl:template match="*" mode="main">
    <div class="sidebar-section">
      <h2>Popular Products</h2>

      <div class="clear"></div>
      <sc:image field="image" w="200" border="0" />
      <div class="pop-products">
        <sc:link>
          <h3>
            <sc:text field="title"/>
          </h3>
        </sc:link>
        <sc:text field="description"/>
        <h4>
          <sc:text field="price"/>
        </h4>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>