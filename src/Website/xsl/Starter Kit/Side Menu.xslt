<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Side Menu.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 11/30/2007 8:25:51 AM                                               
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
<xsl:output method="xml" indent="no" encoding="UTF-8" />

<!-- parameters -->
<xsl:param name="lang" select="'en'"/>
<xsl:param name="id" select="''"/>
<xsl:param name="sc_item"/>
<xsl:param name="sc_currentitem"/>
<xsl:param name="leftpad" select="24"/>
<xsl:param name="moreitems" select="'/assets/images/plus.gif'"/>
<xsl:param name="selecteditem" select="'/assets/images/minus.gif'"/>

<!-- variables -->
<xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />
<xsl:variable name="section" select="sc:GetItemsOfType('site section',$sc_item/ancestor-or-self::item)" />
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
  <xsl:variable name="side-menu" select="sc:item(sc:fld('side menu style',$home),.)"/>
  <xsl:variable name="side-menu-type" select="$side-menu/@key"/>
  <xsl:call-template name="ShowHelpLink">
    <xsl:with-param name="control_item" select="sc:item('/sitecore/content/help/developers/controls/side-menu',.)"/>
  </xsl:call-template>

  <xsl:choose>
    <xsl:when test="$side-menu-type='tree'">
      <xsl:call-template name="render-tree-menu"/>
    </xsl:when>
    <xsl:when test="$side-menu-type='slide out'">
      <xsl:call-template name="render-slide-out-menu"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="render-tree-menu"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

  <!--==============================================================-->
  <!-- Render Tree Menu                                             -->
  <!--==============================================================-->
  <xsl:template name="render-tree-menu">
    
    <div class="tree-menu">
     <!--<h2>
        <xsl:choose>
          <xsl:when test="$section/@id=$sc_currentitem/@id">
            <xsl:attribute name="class">
              <xsl:value-of select="'active'"/>
            </xsl:attribute>
            <xsl:call-template name="show-title">
              <xsl:with-param name="root" select="$section"/>
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
             <xsl:call-template name="show-title">
           <xsl:with-param name="root" select="$section"/>
            </xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>
      </h2>-->

      <!-- Tree view menu -->
      <xsl:call-template name="show-tree-menu">
        <xsl:with-param name="root" select="sc:item($section/@id,.)"/>
      </xsl:call-template>
    </div>
  </xsl:template>

  <!--==============================================================-->
  <!-- Show Tree Menu                                               -->
  <!--==============================================================-->
  <xsl:template name="show-tree-menu" >
    <xsl:param name="root" select="''"/>

    <ul>
      <xsl:call-template name="show-tree-sub-menu">
        <xsl:with-param name="root" select="$root"/>
        <xsl:with-param name="level" select="0"/>
      </xsl:call-template>
    </ul>

  </xsl:template>

  <!--==============================================================-->
  <!-- Show Tree Sub Menu                                           -->
  <!--==============================================================-->
  <xsl:template name="show-tree-sub-menu" >
    <xsl:param name="root" select="''"/>
    <xsl:param name="level" select="0" />

    <xsl:choose>
      <!-- Sort by the date field of sub-items for the News section -->
      <xsl:when test="$root/@name = 'News'">
        x<xsl:for-each select="$root/item">
          y
            <sc:text field="title" select="$root"/>
          
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="$root/item">
          <xsl:call-template name="show-tree-node">
            <xsl:with-param name="root" select="$root"/>
            <xsl:with-param name="level" select="$level"/>
          </xsl:call-template>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <xsl:template name="show-tree-node" >
    <xsl:param name="root" select="''"/>
    <xsl:param name="level" select="0" />

    <xsl:variable name="IsHaveChild" select="boolean(./item)" />
    <xsl:variable name="IsCurrent" select="boolean(@id=$sc_currentitem/@id)" />
    <xsl:variable name="IsSelected" select="boolean(./descendant-or-self::item[@id=$sc_currentitem/@id])" />
    <xsl:variable name="leftpadding" select="$level * $leftpad"/>

    <li>
      <xsl:choose>
        <!-- Selected items -->
        <xsl:when test="$IsSelected and $IsHaveChild">
          <!--<sc:link>-->
          <img src="{$selecteditem}" alt="Expand {sc:fld('title',.)}" style="border-width:0;">
            <xsl:attribute name="style">
              <xsl:value-of select="concat('padding-left: ',$leftpadding,'px;')"/>
            </xsl:attribute>
          </img> 
          <!--</sc:link>-->
        </xsl:when>
        <!-- Has children -->
        <xsl:when test="$IsHaveChild and not($IsSelected)">
          <sc:link>
            <img src="{$moreitems}" alt="Expand {sc:fld('title',.)}" style="border-width:0;">
              <xsl:attribute name="style">
                <xsl:value-of select="concat('padding-left: ',$leftpadding,'px;')"/>
              </xsl:attribute>
            </img>
          </sc:link>
        </xsl:when>
        <!-- Does not have children -->
        <xsl:otherwise>
          <xsl:attribute name="style">
            <xsl:value-of select="concat('padding-left: ',$leftpadding,'px;')"/>
          </xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
      
        <xsl:choose>
          <xsl:when test="./@id=$sc_currentitem/@id">
            <xsl:call-template name="show-title">
              <xsl:with-param name="root" select="."/>
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
            <sc:link>
              <xsl:call-template name="show-title">
                <xsl:with-param name="root" select="."/>
              </xsl:call-template>
            </sc:link>
          </xsl:otherwise>
        </xsl:choose>
      
      <!-- Recursive menu -->
      <xsl:if test="$IsHaveChild and ./descendant-or-self::item[@id=$sc_currentitem/@id]" >
        <ul>
          <xsl:call-template name="show-tree-sub-menu">
            <xsl:with-param name="root" select="."/>
            <xsl:with-param name="level" select="$level + 1"/>
          </xsl:call-template>
        </ul>
      </xsl:if>    
    </li>
  </xsl:template>
    

  <!--==============================================================-->
  <!-- Render Slide Out Menu                                        -->
  <!--==============================================================-->
  <xsl:template name="render-slide-out-menu">
    <div id="slide-out-menu">
      <xsl:if test="sc:fld('show help links',$home)='1'">
        <div class="about-link">
          <a href="/about_side_menu.aspx"  title="Learn about the side menu...">
            <sc:text field="text" select="$about"/>
          </a>
        </div>
      </xsl:if>
      <h2>
        <xsl:choose>
          <xsl:when test="$section/@id=$sc_currentitem/@id">
            <xsl:attribute name="class">
              <xsl:value-of select="'active'"/>
            </xsl:attribute>
            <xsl:call-template name="show-title">
              <xsl:with-param name="root" select="$section"/>
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
            <sc:link select="$section"/>
          </xsl:otherwise>
        </xsl:choose>
      </h2>

      <!-- PopUp menu -->
      <xsl:call-template name="show-slide-out-popup-menu">
        <xsl:with-param name="root" select="$section"/>
      </xsl:call-template>
    </div>

  </xsl:template>

  <!--==============================================================-->
  <!-- Show Slide-out Popup Menu                                    -->
  <!--==============================================================-->
  <xsl:template name="show-slide-out-popup-menu" >
    <xsl:param name="root" select="''"/>

    <script language="JavaScript" src="/layouts/starter kit/Side_Menu_Popup_Style.js" type="text/javascript">&#160;</script>

    <div class="slide-out-submenu">
      <ul id="menu1">

        <xsl:call-template name="show-slide-out-sub-menu">
          <xsl:with-param name="root" select="$root"/>
        </xsl:call-template>

      </ul>
    </div>


  </xsl:template>

  <!--==============================================================-->
  <!-- Show Slide-out Sub Menu                                      -->
  <!--==============================================================-->
  <xsl:template name="show-slide-out-sub-menu" >
    <xsl:param name="root" select="''"/>

    <xsl:choose>
      <!-- Sort by the date field of sub-items for the News section -->
      <xsl:when test="$root/@template='news section'">
        <xsl:for-each select="$root/item">
          <xsl:sort select="sc:fld('date',.)" data-type="text" order="descending"/>

          <xsl:call-template name="show-slide-out-node">
            <xsl:with-param name="root" select="$root"/>
          </xsl:call-template>
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="$root/item">
          <xsl:call-template name="show-slide-out-node">
            <xsl:with-param name="root" select="$root"/>
          </xsl:call-template>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <xsl:template name="show-slide-out-node" >
    <xsl:param name="root" select="''"/>

    <xsl:variable name="hasChildren" select="boolean(./item)" />

    <li>

      <div>
        <sc:link>
          <xsl:call-template name="show-title">
            <xsl:with-param name="root" select="."/>
          </xsl:call-template>
        </sc:link>
      </div>

      <!-- Recursive menu -->
      <xsl:if test="$hasChildren">
        <ul>
          <xsl:call-template name="show-slide-out-sub-menu">
            <xsl:with-param name="root" select="."/>
          </xsl:call-template>
        </ul>
      </xsl:if>

    </li>

  </xsl:template>

  <!--==============================================================-->
  <!-- Show title                                                   -->
  <!--==============================================================-->
  <xsl:template name="show-title">
    <xsl:param name="root"/>

    <xsl:choose>
      <xsl:when test="sc:fld('menu title',$root)!=''">
        <sc:text field="menu title" select="$root"/>
      </xsl:when>
      <xsl:when test="sc:fld('page title',$root)!=''">
        <sc:text field="page title" select="$root"/>
      </xsl:when>
      <xsl:when test="sc:fld('title',$root)!=''">
        <sc:text field="title" select="$root"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$root/@name"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
