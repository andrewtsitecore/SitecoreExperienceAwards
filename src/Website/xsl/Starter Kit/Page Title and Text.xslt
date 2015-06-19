<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Page Title and Text.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 11/22/2007 1:22:39 PM                                               
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
  <xsl:variable name="about" select="$common/item[@key='about link']" />

  <!-- entry point -->
  <xsl:template match="*">
    <xsl:apply-templates select="$sc_item" mode="main"/>
  </xsl:template>

  <!--==============================================================-->
  <!-- main                                                         -->
  <!--==============================================================-->
  <xsl:template match="*" mode="main">
    <div class="row">
      <div class="col-md-12">
        <xsl:call-template name="ShowHelpLink">
          <xsl:with-param name="control_item" select="sc:item('/sitecore/content/help/developers/controls/page-title-and-text',.)"/>
        </xsl:call-template>
        <xsl:if test="(sc:fld('title',.)!='') or (sc:pageMode()/pageEditor/edit)">
          <h1>
            <sc:text field="title" show-title-when-blank="true"/>
          </h1>
        </xsl:if>
        <xsl:if test="(sc:fld('text',.)!='') or (sc:pageMode()/pageEditor/edit)">
          <xsl:choose>
            <!-- only write out P-tag if the text doesn't start with a P-tag -->
            <xsl:when test="sc:ToLower(substring(normalize-space(sc:fld('text',.)),1,3))='&lt;p&gt;'">
              <sc:text field="text"/>
            </xsl:when>
            <xsl:otherwise>
              <p>
                <sc:text field="text"/>
              </p>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
      </div>
    </div><div class="clearfix"></div>
  </xsl:template>

</xsl:stylesheet>