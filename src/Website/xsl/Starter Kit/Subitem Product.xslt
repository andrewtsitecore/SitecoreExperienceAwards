<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Subitem Product.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/17/2007 3:04:07 PM                                               
    Copyright notice at bottom of file
==============================================================-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sc="http://www.sitecore.net/sc"
  xmlns:dot="http://www.sitecore.net/dot"
  exclude-result-prefixes="dot sc">

  <!-- import required renderings and library functions -->
  <xsl:import href="Subitem Common Fields.xslt"/>

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
  <xsl:variable name="readmore" select="$common/item[@key='read more']" />

  <!-- entry point -->
  <xsl:template match="*">
    <xsl:apply-templates select="$sc_item" mode="main"/>
  </xsl:template>

  <!--==============================================================-->
  <!-- main                                                         -->
  <!--==============================================================-->
  <xsl:template match="*" mode="main">
    <xsl:call-template name="RenderProduct"/>
  </xsl:template>

  <xsl:template name="RenderProduct">
    <div class="grid">
      <div class="col-25">
        <xsl:call-template name="showOverviewImage"/>
      </div>
      <div class="col-75">
        <xsl:call-template name="showTitleAsH2Link"/>
        <xsl:if test="(sc:fld('number',.)!='') or (sc:pageMode()/pageEditor/edit)">
          <hr />
          <span class="product-number">
            Product Code: <sc:text field="number" show-title-when-blank="true"/>
          </span>
          <hr />
        </xsl:if>
        <xsl:call-template name="showOverviewAbstract"/>
        <xsl:if test="(sc:fld('price',.)!='') or (sc:pageMode()/pageEditor/edit)">
          <div class="product-price">
            <sc:text field="price" show-title-when-blank="true"/>
          </div>
        </xsl:if>
        <xsl:call-template name="showReadMoreLink"/>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>