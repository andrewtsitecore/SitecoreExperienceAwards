<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Render Reference.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/6/2007 12:35:37 PM                                               
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

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  <xsl:call-template name="RenderReference"/>
</xsl:template>

<xsl:template name="RenderReference">
  <blockquote>
    <h1>
      <xsl:call-template name="showtitle">
        <xsl:with-param name="item" select="."/>
      </xsl:call-template>
    </h1>
    <xsl:if test="(sc:fld('date',.)!='') or (sc:pageMode()/pageEditor/edit)">
      <p class="news-date">
        <sc:date field="date" format="MMMM dd, yyyy"/>
      </p>
    </xsl:if>
    <xsl:if test="(sc:fld('text',.)!='') or (sc:pageMode()/pageEditor/edit)">
      <p>
        <sc:text field="text"/>
      </p>
    </xsl:if>
  </blockquote>
  <xsl:if test="(sc:fld('source',.)!='') or (sc:fld('organization',.)!='') or (sc:pageMode()/pageEditor/edit)">
    <p>
      <xsl:if test="(sc:fld('source',.)!='') or (sc:pageMode()/pageEditor/edit)">
        <span class="reference-source">
          <sc:text field="source" show-title-when-blank="true"/>
        </span>
      </xsl:if>
      <xsl:if test="((sc:fld('source',.)!='') and (sc:fld('organization',.)!='')) or (sc:pageMode()/pageEditor/edit)">
        <br/>
      </xsl:if>
      <xsl:if test="(sc:fld('organization',.)!='') or (sc:pageMode()/pageEditor/edit)">
        <span class="reference-organization">
          <sc:text field="organization" show-title-when-blank="true"/>
        </span>
      </xsl:if>
    </p>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
