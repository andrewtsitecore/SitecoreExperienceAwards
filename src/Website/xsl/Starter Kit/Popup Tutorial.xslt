<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Popup Tutorial.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 1/24/2008 9:33:14 AM                                               
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

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  <div class="page-title-and-text">
    <xsl:if test="sc:fld('title',.)!=''">
      <h1>
        <sc:text field="title" disable-web-editing="true"/>
      </h1>
    </xsl:if>
    <xsl:if test="sc:fld('text',.)!=''">
      <xsl:choose>
        <!-- only write out P-tag if the text doesn't start with a P-tag -->
        <xsl:when test="sc:ToLower(substring(normalize-space(sc:fld('text',.)),1,3))='&lt;p&gt;'">
          <sc:text field="text" disable-web-editing="true"/>
        </xsl:when>
        <xsl:otherwise>
          <p>
            <sc:text field="text" disable-web-editing="true"/>
          </p>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </div>
</xsl:template>

</xsl:stylesheet>

