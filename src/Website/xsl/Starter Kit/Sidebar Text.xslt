<?xml version="1.0" encoding="UTF-8"?>
<!--=============================================================
    File: Sidebar.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 11/22/2007 1:52:09 PM                                               
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
<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>
<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  <div class="sidebar-section">
    <xsl:call-template name="ShowHelpLink">
      <xsl:with-param name="control_item" select="sc:item('/sitecore/content/help/developers/controls/sidebar-text',.)"/>
    </xsl:call-template>
    <sc:sec require="item:write">   
    </sc:sec>
    <xsl:call-template name="render-sidebar-title">
      <xsl:with-param name="item" select="."/>
    </xsl:call-template>
    <xsl:call-template name="render-sidebar-text">
      <xsl:with-param name="item" select="."/>
    </xsl:call-template>
  </div>
</xsl:template>
<!--
 Render Sidebar Title

 Display the current item's sidebar title, unless it is
 blank, in which case, display it's parent's title.  If
 none of its ancestors (up to the site section) have a 
 sidebar title, then do nothing.
-->
<xsl:template name="render-sidebar-title">
  <xsl:param name="item"/>
  <xsl:choose>
    <xsl:when test="sc:fld('sidebar title',$item)=''">
      <xsl:if test="$item/@template!='site section'">
        <xsl:call-template name="render-sidebar-title">
          <xsl:with-param name="item" select="$item/.."/>
        </xsl:call-template>
      </xsl:if>
    </xsl:when>
    <xsl:otherwise>
      <h4><sc:text field="sidebar title" select="$item"/></h4>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
<!--
 Render Sidebar Text

 Display the current item's sidebar text, unless it is
 blank, in which case, display it's parent's text.  If
 none of its ancesters (up to the site section) have a 
 sidebar text, then do nothing.
-->
<xsl:template name="render-sidebar-text">
  <xsl:param name="item"/>
  <xsl:choose>
    <xsl:when test="sc:fld('sidebar text',$item)=''">
      <xsl:if test="$item/@template!='site section'">
        <xsl:call-template name="render-sidebar-text">
          <xsl:with-param name="item" select="$item/.."/>
        </xsl:call-template>
      </xsl:if>
    </xsl:when>
    <xsl:otherwise>
      <xsl:if test="sc:fld('sidebar text',$item)!='' or (sc:pageMode()/pageEditor/edit)">
        <xsl:choose>
          <!-- only write out P-tag if the text doesn't start with a P-tag -->
          <xsl:when test="sc:ToLower(substring(normalize-space(sc:fld('sidebar text',$item)),1,3))='&lt;p&gt;'">
            <sc:text field="sidebar text" select="$item"/>
          </xsl:when>
          <xsl:otherwise>
            <p>
              <sc:text field="sidebar text" select="$item"/>
            </p>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:if>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
</xsl:stylesheet>