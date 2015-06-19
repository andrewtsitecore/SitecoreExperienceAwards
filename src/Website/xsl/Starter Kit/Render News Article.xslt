<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Render News Article.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/6/2007 12:29:27 PM                                               
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
  <xsl:call-template name="RenderNewsArticle"/>
</xsl:template>

<xsl:template name="RenderNewsArticle">
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
  <xsl:if test="sc:pageMode()/pageEditor/edit">
    <div class="clear"></div>
  <div style="background-color: #fff; border: 1px dashed #f00; padding: 8px;">
    <h3 style="margin-top: 0px; margin-bottom: 10px;">Additional content fields</h3>
       <p class="news-date" style="margin-bottom: 0px;">Overview Abstract</p>
	  <xsl:if test="sc:pageMode()/pageEditor/edit">
		<xsl:choose>
		  <!-- only write out P-tag if the text doesn't start with a P-tag -->
		  <xsl:when test="sc:ToLower(substring(normalize-space(sc:fld('overview abstract',.)),1,3))='&lt;p&gt;'">
			<sc:text field="overview abstract"/>
		  </xsl:when>
		  <xsl:otherwise>
			<p style="margin-top: 0px;">
			  <sc:text field="overview abstract"/>
			</p>
		  </xsl:otherwise>
		</xsl:choose>
	  </xsl:if>
	  <xsl:if test="sc:pageMode()/pageEditor/edit">
            <p class="news-date" style="margin-bottom: 0px;">Breadcrumb title</p>
             <p style="margin-top: 0px;">
	        <sc:text field="breadcrumb title"/>
             </p>
	  </xsl:if>
  </div>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
