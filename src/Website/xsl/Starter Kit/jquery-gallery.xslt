<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: jquery-gallery.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 04/04/2012 09:34:17                                               
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
  <xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />
  <xsl:variable name="gallery-width" select="sc:fld('MaxWidth',$sc_item)" />
  <xsl:variable name="gallery-height" select="sc:fld('MaxHeight',$sc_item)" />
  <xsl:variable name="theme" select="sc:item(sc:fld('theme',$sc_item),.)"/>
  <xsl:variable name="gallery-theme" select="sc:fld('css file',$theme)"/>

  <!-- entry point -->
  <xsl:template match="*">
    <xsl:apply-templates select="$sc_item" mode="main"/>
  </xsl:template>

  <!--==============================================================-->
  <!-- main                                                         -->
  <!--==============================================================-->
  <xsl:template match="*" mode="main">
    <div class="slider-wrapper theme-{$gallery-theme}" >
        <div class="ribbon"></div>
        <div id="slider" class="nivoSlider" style="box-shadow: 0px 1px 5px 0px #4a4a4a;">
          <xsl:if test="sc:fld('source',.)">
            <xsl:for-each select="sc:Split('source',.)">
              <xsl:for-each select="sc:item(text(),.)">
                <xsl:variable name="alt">
                  <xsl:choose>
                    <xsl:when test="sc:fld('alt',.)">
                      <xsl:value-of select="sc:fld('alt',.)" />
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="@name" />
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:variable>
                <img src="{concat('', sc:GetMediaUrl(.))}?w={$gallery-width}&amp;h={$gallery-height}&amp;bc=white&amp;as=true" border="0" alt="{$alt}" />
              </xsl:for-each>
            </xsl:for-each>
          </xsl:if>
        </div>
        <div id="htmlcaption" class="nivo-html-caption">
          <strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>.
        </div>
      </div>

    <xsl:choose>
      <xsl:when test="sc:pageMode()/pageEditor/edit">
        <div style="text-align:center;">
          <img src="/assets/images/jquery-gallery.jpg" border="0"/>
        </div>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>