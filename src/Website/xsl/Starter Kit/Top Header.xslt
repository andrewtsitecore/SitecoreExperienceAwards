﻿<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Top Header.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 27/11/2012 17:00:29                                               
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
<xsl:variable name="content" select="sc:item('/sitecore/content',.)" />
<xsl:variable name="sites" select="$content/item[@template='site root']" />
<xsl:variable name="toolbox" select="$home/item[@key='toolbox']" />

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
<div id="seo-fullwidth">
	<div id="seo-header">
		<div id="seo-header-left">Call our team now on 0800 123456</div>
		<div id="seo-header-right">
			<div id="header-toolbox">
				<div class="toolbox-entry">
					<xsl:choose>
						<xsl:when test="sc:pageMode()/pageEditor">
							<a class="fancybox-effects-d" href="/layouts/profiles-disabled.htm"><img src="/assets/images/magic-wand.png" />See Profile</a>
						</xsl:when>
						<xsl:otherwise>
							<a class="fancybox-effects-d" href="/layouts/profiles.aspx"><img src="/assets/images/magic-wand.png" />See Profile</a>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<xsl:for-each select="$toolbox/item">
				  <div class="toolbox-entry">
					<xsl:choose>
					  <xsl:when test="sc:fld('alternative link',.)!=''">
						<xsl:choose>
						  <xsl:when test="sc:fld('open new window',.)='1'">
							<a href="{sc:fld('alternative link',.)}"  title="{sc:fld('toolbox tooltip',.)}">
							  <sc:image field="toolbox image"/><sc:text field="toolbox title"/>
							</a>
						  </xsl:when>
						  <xsl:otherwise>
							<a href="{sc:fld('alternative link',.)}" title="{sc:fld('menu tooltip',.)}">
							  <sc:image field="toolbox image"/><sc:text field="toolbox title"/>
							</a>
						  </xsl:otherwise>
						</xsl:choose>
					  </xsl:when>
					  <xsl:otherwise>
						<sc:link><sc:image field="toolbox image"/><sc:text field="toolbox title" /></sc:link>
					  </xsl:otherwise>
					</xsl:choose>
					<xsl:if test="position()!=last()"></xsl:if>
				  </div>
				</xsl:for-each>
			</div>
			<xsl:if test="count($sites)>1">
				<span style="padding-left:20px"></span>
				<select onchange="gotourl(this.value)">
					<xsl:for-each select="$sites">
						<xsl:choose>
							<xsl:when test="./@id=$home/@id">
								<option value="{sc:path(.)}" selected=""><sc:text field="name"/></option>
							</xsl:when>
							<xsl:otherwise>
								<option value="{sc:path(.)}"><sc:text field="name"/></option>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each>
				</select>
				<script language="JavaScript" type="text/javascript">  
				function gotourl(url){  
				 window.location= url;  
				}  
				</script>  
			</xsl:if>
		</div>
	</div>
</div>
</xsl:template>
</xsl:stylesheet>