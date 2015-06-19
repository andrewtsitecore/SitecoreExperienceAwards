<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Recent News.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/14/2007 2:40:19 PM                                               
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
  <xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />

  <xsl:variable name="readmore" select="sc:item('/sitecore/content/settings/common text/read more',.)" />
  <xsl:variable name="about" select="sc:item('/sitecore/content/settings/common text/about link',.)" />

  <xsl:param name="news" select="$home/item[@key='news']"/>

  <!-- entry point -->
  <xsl:template match="*">
    <xsl:apply-templates select="$news" mode="main"/>
  </xsl:template>

  <!--==============================================================-->
  <!-- main                                                         -->
  <!--==============================================================-->
  <xsl:template match="*" mode="main">

    <div class="news-teaser">
      <div class="news-teaser-header">
        <p style="width:25px;">
          <sc:text field="title"/>
        </p>
      </div>
      <div class="news-teaser-content">
        <ul class="news-links">
          <xsl:variable name="articles" select=".//item[@template='news article' or @template='news article - one column' or @template='news article - two column' or @template='news article - three column']"/>
          <xsl:apply-templates mode="displayNewsItem" select="$articles">
            <xsl:sort select="sc:fld('date',.)" data-type="text" order="descending"/>
          </xsl:apply-templates>
        </ul>
        <div class="read-more-link">
          <sc:link>
            <sc:text field="text" select="$readmore"/>
          </sc:link>
        </div>
      </div>
    </div>

  </xsl:template>

  <xsl:template match="*" mode="displayNewsItem">
    <xsl:if test="position() &lt; 7">
      <li>
        <!--<div style="float:left;padding-right:10px;">
          <sc:image field="Image" w="40" h="40" as="0" bc="ffffff"/>
        </div>-->
        <div>
          <xsl:if test="sc:fld('date',.)!=''">
            <span class="news-date">
              <sc:date field="date" format="MMMM dd, yyyy"/>
            </span>
          </xsl:if>
        </div>
        <div>
          <sc:link>
            <sc:text field="title"/>
          </sc:link>
        </div>
        
      </li>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
