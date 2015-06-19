<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Banner.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 11/22/2007 11:03:14 AM                                               
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
    <xsl:if test="(sc:fld('banner image',.)!='') or (sc:pageMode()/pageEditor/edit)">
      <div id="banner">
        <xsl:variable name="image_item" select="sc:item(sc:fld('banner image',.,'mediaid'),.)"/>
        <div>
			<xsl:choose>
				<xsl:when test="sc:fld('banner link',.)!=''">
					<sc:link field="banner link">
						<sc:image field="banner image" select="." id="banner-image" w="960" h="270" iar="1" bc="blue" />
					</sc:link>
				</xsl:when>
				<xsl:otherwise>
					<sc:image field="banner image" select="." id="banner-image" w="960" h="270" iar="1" bc="blue" />
				</xsl:otherwise>
			</xsl:choose>
        </div>
		  <xsl:if test="sc:fld('banner header',.)!=''">
			  <div id="banner-header">
				  <sc:text field="banner header"/>
			  </div>
		  </xsl:if>
		  <xsl:if test="sc:fld('banner slogan',.)!=''">
			  <div id="banner-text">
				  <xsl:call-template name="ShowHelpLink">
					  <xsl:with-param name="control_item" select="sc:item('/sitecore/content/help/developers/controls/banner',.)"/>
				  </xsl:call-template>
				  <sc:text field="banner slogan"/>
			  </div>
		  </xsl:if>
      </div>
    </xsl:if>
  <div style="clear:both;"></div>
</xsl:template>

</xsl:stylesheet>