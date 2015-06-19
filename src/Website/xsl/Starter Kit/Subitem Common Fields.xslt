<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Subitem Common Fields.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 2/14/2008 10:25:54 PM                                               
    Copyright notice at bottom of file
==============================================================-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sc="http://www.sitecore.net/sc"
  xmlns:dot="http://www.sitecore.net/dot"
  exclude-result-prefixes="dot sc">

  <!-- import required renderings and library functions -->
  <xsl:import href="Show Title.xslt"/>

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
  <xsl:variable name="readmorezz" select="sc:item('B3A81310-7654-4C37-82D1-08C900CF4213',.)" />

  <!-- entry point -->
  <xsl:template match="*">
    <xsl:apply-templates select="$sc_item" mode="main"/>
  </xsl:template>

  <!--==============================================================-->
  <!-- main                                                         -->
  <!--==============================================================-->
  <xsl:template match="*" mode="main">

  </xsl:template>

  <xsl:template name="showOverviewImage">
    <xsl:if test="(sc:fld('image',.)!='') or (sc:pageMode()/pageEditor/edit)">

      <sc:image field="image" class="photo-border" mw="100" mh="100" as="1" />

    </xsl:if>
  </xsl:template>

  <xsl:template name="showTitleAsH2Link">
    <h3>
      <xsl:call-template name="showtitle">
        <xsl:with-param name="item" select="."/>
      </xsl:call-template>
    </h3>
  </xsl:template>

  <xsl:template name="showOverviewAbstract">
    <xsl:if test="(sc:fld('overview abstract',.)!='') or (sc:pageMode()/pageEditor/edit)">
      <p>
        <sc:text field="overview abstract" show-title-when-blank="true"/>
      </p>
    </xsl:if>
  </xsl:template>

  <xsl:template name="showReadMoreLink">
    <xsl:if test="sc:fld('overview abstract',.)!=''">
      <p class="read-more">
        <sc:link>
          <sc:text field="text" select="$readmorezz" />
        </sc:link>
      </p>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>


