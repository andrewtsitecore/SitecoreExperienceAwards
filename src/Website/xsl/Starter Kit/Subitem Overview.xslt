<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Subitem Overview.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/3/2007 3:52:58 PM                                               
    Copyright notice at bottom of file
==============================================================-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sc="http://www.sitecore.net/sc"
  xmlns:dot="http://www.sitecore.net/dot"
  exclude-result-prefixes="dot sc">

  <!-- import required renderings and library functions -->
  <xsl:import href="Subitem Contact Location.xslt"/>
  <xsl:import href="Subitem Content Item.xslt"/>
  <xsl:import href="Subitem Executive Profile.xslt"/>
  <xsl:import href="Subitem Job Description.xslt"/>
  <xsl:import href="Subitem Product.xslt"/>
  <xsl:import href="Subitem Reference.xslt"/>
  <xsl:import href="Subitem Service.xslt"/>
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
  <xsl:variable name="newsarticles" select="sc:GetItemsOfType('news article',$sc_currentitem/descendant-or-self::item)" />
  <xsl:variable name="common" select="/*/item[@key='content']/item[@key='settings']/item[@key='common text']" />
  <xsl:variable name="readmore" select="$common/item[@key='read more']" />
  <xsl:variable name="jobcontact" select="$common/item[@key='job contact']" />
  <xsl:variable name="jobdeadline" select="$common/item[@key='job deadline']" />
  <xsl:variable name="about" select="$common/item[@key='about link']" />
  <xsl:variable name="news" select="sc:GetItemsOfType('news article', $home//child::item)" />

  <!-- entry point -->
  <xsl:template match="*">
    <xsl:apply-templates select="$sc_item" mode="main"/>
  </xsl:template>

  <!--==============================================================-->
  <!-- main                                                         -->
  <!--==============================================================-->
  <xsl:template match="*" mode="main">
    <xsl:choose>
      <!-- Sort by the date field of sub-items for the News section -->
      <xsl:when test="@template='day' or @template='month' or @template='year'">
        <xsl:for-each select="$newsarticles">
          <xsl:sort select="sc:fld('date',.)" data-type="text" order="descending"/>
          <xsl:call-template name="choose-type"/>
        </xsl:for-each>
      </xsl:when>
      <xsl:when test="$sc_currentitem/@name = 'News'">
        <xsl:call-template name="choose-type"/>
      </xsl:when>
      <xsl:when test="./item!=''">
        <xsl:for-each select="./item">
          <xsl:call-template name="choose-type"/>
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
        <div class="clearfix"></div>
      </xsl:otherwise>
    </xsl:choose>
    <div class="clearfix"></div>

  </xsl:template>

  <xsl:template name="choose-type">
    <xsl:choose>
      <xsl:when test="./@template='contact location'">
        <xsl:call-template name="RenderContactLocation"/>
      </xsl:when>
      <xsl:when test="./@template='executive profile'">
        <xsl:call-template name="RenderExecutiveProfile"/>
      </xsl:when>
      <xsl:when test="./@template='job description'">
        <xsl:call-template name="RenderJobDescription"/>
      </xsl:when>
      <xsl:when test="./@template='product description'">
        <xsl:call-template name="RenderProduct"/>
      </xsl:when>
      <xsl:when test="./@template='reference'">
        <xsl:call-template name="RenderReference"/>
      </xsl:when>
      <xsl:when test="./@template='service'">
        <xsl:call-template name="RenderService"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="RenderContentItem"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>