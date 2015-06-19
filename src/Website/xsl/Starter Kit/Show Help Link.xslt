<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Show Help Link.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 2/1/2008 9:58:13 AM                                               
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
<xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />  
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
  <!-- used for testing... this rendering should not be called directly... -->
  <xsl:call-template name="ShowHelpLink">
    <xsl:with-param name="control_item" select="sc:item('/sitecore/content/help/developers/controls/sidebar',.)"/>
  </xsl:call-template>
</xsl:template>

<xsl:template name="ShowHelpLink">
  <xsl:param name="control_item"/>

  <xsl:if test="(sc:fld('show help links',$home)='1') and (sc:pageMode()/pageEditor/navigate)">
    <div class="about-link">
      <a class="help-button"  href="#">
        <sc:text field="text" select="$about"/>
        <span>
          <table>
            <xsl:for-each select="sc:Split('help links',$control_item)">
              <xsl:call-template name="CreateLink">
                <xsl:with-param name="link_item" select="."/>
              </xsl:call-template>
            </xsl:for-each>
            <xsl:call-template name="CreateReferenceLink">
              <xsl:with-param name="link_item" select="$control_item/@id"/>
            </xsl:call-template>
          </table>
        </span>
      </a>
    </div>
  </xsl:if>
</xsl:template>

<xsl:template name="CreateLink">
  <xsl:param name="link_item"/>
  <xsl:variable name="help_item" select="sc:item($link_item,.)"/>
  <xsl:variable name="full_path" select="sc:path($help_item)"/>
  <xsl:variable name="help_path" select="substring($full_path, 18, string-length($full_path))"/>

  <tr>
    <td class="help-link" valign="top">
      <a href="/help/{$help_path}?asPopup=1" onclick="return openTutorial(this)"  style="color:gray">
        <img border="0" src="/images/point.gif"/>
      </a>
    </td>
    <td class="help-link" valign="top">
      <a href="{$help_path}?asPopup=1" onclick="return openTutorial(this)"  style="color:gray">
        <sc:text field="help link text" select="$help_item"/>
      </a>
    </td>
  </tr>
  <tr>
    <td colspan="2"><hr/></td>
  </tr>
</xsl:template>

<xsl:template name="CreateReferenceLink">
  <xsl:param name="link_item"/>
  <xsl:variable name="help_item" select="sc:item($link_item,.)"/>
  <xsl:variable name="full_path" select="sc:path($help_item)"/>
  <xsl:variable name="help_path" select="substring($full_path, 18, string-length($full_path))"/>

  <tr>
    <td valign="top">
      <a href="/help/{$help_path}"  style="color:gray">
        <img border="0" src="/images/point.gif"/>
      </a>
    </td>
    <td valign="top">
      <a href="{$help_path}"  style="color:gray">
         <xsl:value-of select="sc:fld('menu title',$help_item)"/> Reference...
      </a>
    </td>
  </tr>
</xsl:template>

</xsl:stylesheet>
