<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Content Image.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/12/2007 5:21:40 PM                                               
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
  <!-- This example variable is commented out, to avoid unnecessary processing...
<xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />  
 -->
  <xsl:variable name="common" select="/*/item[@key='content']/item[@key='settings']/item[@key='common text']" />
  <xsl:variable name="fullsize" select="$common/item[@key='full size link']" />

  <!-- entry point -->
  <xsl:template match="*">
    <xsl:apply-templates select="$sc_item" mode="main"/>
  </xsl:template>

  <!--==============================================================-->
  <!-- main                                                         -->
  <!--==============================================================-->
  <xsl:template match="*" mode="main">
    <xsl:call-template name="RenderImage">
      <xsl:with-param name="maxWidth" select="2000"/>
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="RenderImage">
    <xsl:param name="maxWidth"/>

    <xsl:if test="(sc:fld('image',.)!='') or (sc:pageMode()/pageEditor/edit)">
      <xsl:variable name="image_id">
        <xsl:value-of select="sc:fld('image',.,'mediaid')"/>x
      </xsl:variable>


      <xsl:variable name="image_item" select="sc:item($image_id,.)"/>

      <xsl:choose>
        <xsl:when test="sc:fld('width',$image_item) &gt; $maxWidth">
          <xsl:choose>
            <xsl:when test="sc:pageMode()/pageEditor/edit">
              <a href="/~/media{sc:fld('image',.,'mediapath')}.ashx" >
                <sc:image field="image" class="photo-border img-responsive" mw="{$maxWidth}"/>x
              </a>
              <xsl:if test="sc:pageMode()!=/pageEditor/Edit">
                <span class="caption">
                  <sc:text field="text" select="$fullsize"/>
                </span>
              </xsl:if>
            </xsl:when>
            <xsl:otherwise>
              <xsl:choose>
                <xsl:when test="./@template='product description'">
                  <ul id="etalage">
                    <li>
                      <sc:image field="image" class="etalage_source_image" style="padding-bottom:10px;"/>
                      <sc:image field="image" id="productImage" class="etalage_thumb_image"  mw="{$maxWidth}" />
                    </li>
                  </ul>
                </xsl:when>
                <xsl:otherwise>
                  <a class="thumbnail" href="/~/media{sc:fld('image',.,'mediapath')}.ashx" >
                    <span class="image-hover">
                      <sc:image field="image" mw="250"/>
                    </span>
                    <sc:image field="image" class="photo-border  img-responsive" mw="{$maxWidth}"/>
                  </a>
                  <!--<span class="caption">
								<sc:text field="text" select="$fullsize"/>
							</span>-->
                </xsl:otherwise>
              </xsl:choose>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
          <sc:image field="image" mw="{$maxWidth}" class="img-responsive"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>