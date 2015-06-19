<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Render Product.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/5/2007 1:50:09 PM                                               
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
    <xsl:call-template name="RenderProduct"/>
  </xsl:template>

  <xsl:template name="RenderProduct">
    
        <xsl:if test="(sc:fld('description',.)!='') or (sc:pageMode()/pageEditor/edit)">
          <xsl:choose>
            <!-- only write out P-tag if the text doesn't start with a P-tag -->
            <xsl:when test="sc:ToLower(substring(normalize-space(sc:fld('description',.)),1,3))='&lt;p&gt;'">
              <sc:text field="description" show-title-when-blank="true"/>
            </xsl:when>
            <xsl:otherwise>
              <p>
                <sc:text field="description" show-title-when-blank="true"/>
              </p>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
        <xsl:if test="sc:fld('price',.)">
          <p class="product-price">
            <sc:text field="price" show-title-when-blank="true"/>
          </p>
        </xsl:if>
        <xsl:if test="sc:fld('price',.)">
          <sc:image field="rating" />
        </xsl:if>

      


      

  </xsl:template>
</xsl:stylesheet>

<!--<xsl:if test="(sc:fld('name',.)!='') or (sc:pageMode()/pageEditor/edit)">
      <h3>
        <sc:text field="name" show-title-when-blank="true"/>
      </h3>
    </xsl:if>
    <xsl:if test="(sc:fld('number',.)!='') or (sc:pageMode()/pageEditor/edit)">
      <p class="product-number">
        <sc:text field="number" show-title-when-blank="true"/>
      </p>
    </xsl:if>-->