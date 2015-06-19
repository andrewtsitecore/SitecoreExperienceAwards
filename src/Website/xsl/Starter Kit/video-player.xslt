<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: video-player.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 04/07/2012 16:09:38                                               
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


  <!-- entry point -->
  <xsl:template match="*">
    <xsl:apply-templates select="$sc_item" mode="main"/>
  </xsl:template>

  <!--==============================================================-->
  <!-- main                                                         -->
  <!--==============================================================-->
  <xsl:template match="*" mode="main">

    <xsl:variable name="skin" select="sc:item(sc:fld('skin',.),.)"/>
    <xsl:variable name="skinsrc" select="sc:fld('source',$skin)"/>

    <xsl:variable name="videoitem" select="sc:fld('video source',.,'mediaid')" />
    <xsl:variable name="video" select="sc:item($videoitem,.)" />
    <xsl:variable name="videosrc" select="sc:GetMediaUrl($video)" />

    <xsl:variable name="thumbitem" select="sc:fld('thumbnail',.,'mediaid')" />
    <xsl:variable name="thumb" select="sc:item($thumbitem,.)" />
    <xsl:variable name="thumbsrc" select="sc:GetMediaUrl($thumb)" />

    <xsl:variable name="vidwidth" select="sc:fld('width',.)" />
    <xsl:variable name="vidheight" select="sc:fld('height',.)" />

    <link rel="stylesheet" href="/assets/projekktor/themes/maccaco/projekktor.style.css" type="text/css" media="screen" />
    <script type="text/javascript" src="/assets/projekktor/projekktor-1.3.09.min.js"></script>

    <div id="player_a" class="projekktor"></div>

    <script type="text/javascript">
      jQuery2(document).ready(function() {
      projekktor('#player_a', {
      poster: '<xsl:value-of select="$thumbsrc" />?mw=<xsl:value-of select="$vidwidth" />',
      title: 'this is projekktor',
      playerFlashMP4: 'swf/StrobeMediaPlayback/StrobeMediaPlayback.swf',
      playerFlashMP3: 'swf/StrobeMediaPlayback/StrobeMediaPlayback.swf',
      width: <xsl:value-of select="sc:fld('width',.)"/>,
      height: <xsl:value-of select="sc:fld('height',.)"/>,
      playlist: [
      {
      0: {src: "<xsl:value-of select="$videosrc" />", type: "video/mp4"},
      }
      ]
      }, function(player) {} // on ready
      );
      });
    </script>

    <div style="padding-bottom:18px"></div>

  </xsl:template>
</xsl:stylesheet>