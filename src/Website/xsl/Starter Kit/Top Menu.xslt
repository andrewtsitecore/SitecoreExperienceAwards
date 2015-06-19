<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Top Menu.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 11/22/2007 10:58:49 AM                                               
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
<xsl:variable name="sites" select="/content/item[@template='site root']" />

<xsl:variable name="this_section" select="$home/child::item[@template='site section']" />
<!--<xsl:variable name="this_section" select="sc:GetItemsOfType('site section',$sc_item/ancestor-or-self::item)" />-->

<xsl:variable name="top-menu" select="sc:item(sc:fld('top menu style',$home),.)"/>
<xsl:variable name="top-menu-type" select="$top-menu/@key"/>
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
  <xsl:call-template name="render-top-menu"/>
  <xsl:if test="$top-menu-type='two level'">
    <xsl:call-template name="render-second-level-menu" />
  </xsl:if>
</xsl:template>

  <!--==============================================================-->
  <!-- Render Banner Menu                                           -->
  <!--==============================================================-->
  <xsl:template name="render-top-menu">
    <div id="top-menu">
      <div id="top-main-menu">
        <ul>
          <li>
            <xsl:if test="./@id=$home/@id">
              <xsl:attribute name="id">
                <xsl:value-of select="'current'"/>
              </xsl:attribute>
            </xsl:if>
            <sc:link select="$home" title="{sc:fld('menu tooltip',$home)}">
              <sc:text field="menu title" select="$home"/>
            </sc:link>

          </li>

          <xsl:for-each select="sc:GetItemsOfType('site section',$home/item)">
            <xsl:choose>
              <xsl:when test="./@id=$this_section/@id">
                <li id="current">
                  <xsl:if test="position()=last()">
                    <xsl:attribute name="class">
                      <xsl:value-of select="'last'"/>
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="$top-menu-type='two level'">
                    <xsl:attribute name="id">
                      <xsl:value-of select="'twolevelcurrent'"/>
                    </xsl:attribute>
                  </xsl:if>
                  <sc:link class="Selected" title="{sc:fld('menu tooltip',.)}">
                    <span>
                      <sc:text field="menu title"/>
                    </span>
                  </sc:link>
                </li>
              </xsl:when>
              <xsl:otherwise>
                <li>
                  <xsl:if test="position()=last()">
                    <xsl:attribute name="class">
                      <xsl:value-of select="'last'"/>
                    </xsl:attribute>
                  </xsl:if>
                  <sc:link title="{sc:fld('menu tooltip',.)}">
                    <span>
                      <sc:text field="menu title"/>
                    </span>
                  </sc:link>
                </li>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </ul>
      </div>
      <xsl:call-template name="ShowHelpLink">
        <xsl:with-param name="control_item" select="sc:item('/sitecore/content/help/developers/controls/top-menu',.)"/>
      </xsl:call-template>

      <!--<xsl:if test="sc:fld('show split top menu',$home)='1'">
        <xsl:call-template name="show-help-menu"/>
      </xsl:if>-->
    </div>
  </xsl:template>

  <!--
  AH - MOVED TO Toolbox.xslt
  <xsl:template name="show-help-menu">
    <xsl:if test="count($sites)>1">
      <div id="top-help-menu">
        <ul>
          <xsl:for-each select="$sites">
            <li>
              <xsl:if test="./@id=$home/@id">
                <xsl:attribute name="id">
                  <xsl:value-of select="'current'"/>x
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="position()=1">
                <xsl:attribute name="class">
                  <xsl:value-of select="'first'"/>y
                </xsl:attribute>
              </xsl:if>
              <sc:link select="." title="{sc:fld('help menu tooltip',.)}">
                <sc:text field="help menu title"/>z
              </sc:link>
            </li>
          </xsl:for-each>
        </ul>
      </div>
    </xsl:if>
  </xsl:template>
  -->
  <!-- END MOVED -->
  
  <!--==============================================================-->
  <!-- Render Second Level Menu                                     -->
  <!--==============================================================-->
  <xsl:template name="render-second-level-menu">
    <!--<xsl:if test="$home/@id!=./@id">-->
      <xsl:variable name="children" select="$this_section/item"/>
      <xsl:if test="$children!=''">
	  XXX
        <div id="top-second-level-menu">
          <ul>
            <xsl:for-each select="$this_section/item">
              <li>
                <xsl:variable name="IsSelected" select="boolean(./descendant-or-self::item[@id=$sc_currentitem/@id])" />
                <xsl:if test="$IsSelected">
                  <xsl:attribute name="id" >
                    <xsl:value-of select="'active'"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="position()=last()">
                  <xsl:attribute name="class" >
                    <xsl:value-of select="'last'"/>
                  </xsl:attribute>
                </xsl:if>
                <sc:link>
                  <xsl:call-template name="show-title"/>
                </sc:link>
              </li>
            </xsl:for-each>
          </ul>
        </div>
      </xsl:if>
    <!--</xsl:if>-->
  </xsl:template>

  <!--==============================================================-->
  <!-- Show Title                                                   -->
  <!--==============================================================-->
  <xsl:template name="show-title">
    <xsl:choose>
      <xsl:when test="sc:fld('menu title',.)!=''">
        <sc:text field="menu title"/>
      </xsl:when>
      <xsl:when test="sc:fld('page title',.)!=''">
        <sc:text field="page title"/>
      </xsl:when>
      <xsl:when test="sc:fld('title',.)!=''">
        <sc:text field="title"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="./@name"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
