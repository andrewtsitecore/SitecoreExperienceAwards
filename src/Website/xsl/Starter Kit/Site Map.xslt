<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Site Map.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 11/29/2007 11:04:52 AM                                               
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

<xsl:param name="SMTitleField" select="'Title'" />
<xsl:param name="SMField" select="'Title'" />
<xsl:param name="DividerClass" select="''" />
<xsl:param name="DividerStyle" select="''" />
<xsl:param name="HorizontalDividerImage" select="'/assets/images/smHoriz.gif'" />
<xsl:param name="HorizontalDividerText" select="''" />
<xsl:param name="VerticalDividerImage" select="'/assets/images/smVertical.gif'" />
<xsl:param name="VerticalDividerText" select="''" />
<xsl:param name="TopDividerImage" select="'/assets/images/smtop.gif'" />
<xsl:param name="TopDividerText" select="''" />
<xsl:param name="BottomDividerImage" select="'/assets/images/smBottom.gif'" />
<xsl:param name="BottomDividerText" select="''" />
<xsl:param name="ItemDividerImage" select="'/assets/images/smItem.gif'" />
<xsl:param name="ItemDividerText" select="''" />

<!-- variables -->
<xsl:variable name="home" select="$sc_item/ancestor-or-self::item[@template='site root']" />  
<xsl:variable name="QUOTE">'</xsl:variable>
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
  <xsl:variable name="sitemap-style" select="sc:item(sc:fld('sitemap style',$home),.)"/>
  <xsl:variable name="sitemap-style-name" select="$sitemap-style/@key"/>
  <div id="sitemap">
    <xsl:call-template name="ShowHelpLink">
      <xsl:with-param name="control_item" select="sc:item('/sitecore/content/help/developers/controls/site-map',.)"/>
    </xsl:call-template>
    <xsl:choose>
      <xsl:when test="$sitemap-style-name='tree'">
        <xsl:call-template name="sitemap-tree"/>
      </xsl:when>
      <xsl:when test="$sitemap-style-name='outline'">
        <xsl:call-template name="sitemap-outline"/>
      </xsl:when>
      <xsl:otherwise>
        <p>Sitemap style is unknown.  Please contact an administrator.</p>
      </xsl:otherwise>
    </xsl:choose>
  </div>
</xsl:template>

<!--***************************************-->
<!--              Sitemap as Outline       -->
<!--***************************************-->
<xsl:template name="sitemap-outline">
  <div class="sitemap-outline">
    <xsl:choose>
      <xsl:when test="$home/item[@template!='folder']">
        <xsl:for-each select="$home/item">
          <xsl:if test="./@template!='folder'">
            <div>
              <h2>
                <sc:link>
                  <xsl:call-template name="ShowTitle"/>
                </sc:link>
              </h2>
              <ul>
                <xsl:for-each select="./item">
                  <xsl:call-template name="ShowChild"/>
                </xsl:for-each>
              </ul>
            </div>
          </xsl:if>
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
        <p>This site does not contain any content yet.</p>
      </xsl:otherwise>
    </xsl:choose>
  </div>
</xsl:template>

<!--***************************************-->
<!--              ShowChild                -->
<!--***************************************-->
<xsl:template name="ShowChild">
  <li>
    <sc:link select="."><xsl:call-template name="ShowTitle"/></sc:link>
  </li>
  <xsl:if test="./item!=''">
    <ul>
      <xsl:for-each select="./item">
        <xsl:call-template name="ShowChild"/>
      </xsl:for-each>
    </ul>
  </xsl:if>
</xsl:template>

<!--***************************************-->
<!--              Sitemap as Tree          -->
<!--***************************************-->
<xsl:template name="sitemap-tree">
   <div class="sitemap-tree">
     <xsl:choose>
       <xsl:when test="$home/item[@template!='folder' or @template!='manager root']">
         <table cellpadding="0" cellspacing="0" border="0">
           <xsl:comment >BeginNoIndex</xsl:comment>
           <xsl:for-each select="$home/item">
             <xsl:call-template name="sitemap">
               <xsl:with-param name="level" select="'0'" />
             </xsl:call-template>
             <tr>
               <td height="10"></td>
             </tr>
           </xsl:for-each>
           <xsl:comment >EndNoIndex</xsl:comment>
         </table>
       </xsl:when>
       <xsl:otherwise>
         <p>This site does not contain any content yet.</p>
       </xsl:otherwise>
     </xsl:choose>
   </div>
</xsl:template>


<!--***************************************-->
<!--              Sitemap                  -->
<!--***************************************-->
<xsl:template name="sitemap">
   <xsl:param name="totItems" />
   <xsl:param name="level" />
   <xsl:variable name="itemsCount" select="count(item)" />
   <tr>
    <xsl:if test="./@template!='folder' and @template!='manager root'">
      <xsl:if test="$level!=0">
         <xsl:call-template name="DividerTemplate" >
            <xsl:with-param name="position" select="position()" />
            <xsl:with-param name="totItems" select="$totItems" />
         </xsl:call-template>
      </xsl:if>
      
      <td valign="top">
        <xsl:if test="$itemsCount>0">
          <xsl:attribute name="class">
            <xsl:value-of select="'sitemap-parent'"/>
          </xsl:attribute>
        </xsl:if>
         <sc:sec require="item:read">
           <a href="{sc:path(.)}">
             <xsl:call-template name="ShowTitle"/>
           </a>
         </sc:sec>
       </td>
       <xsl:if test="$itemsCount>0">
         <td valign="top">
           <table cellpadding="0" cellspacing="0" border="0">
             <xsl:for-each select="item">
               <xsl:call-template name="sitemap">
                 <xsl:with-param name="totItems" select="$itemsCount" />
               </xsl:call-template>
             </xsl:for-each>
           </table>
         </td>
       </xsl:if>
     </xsl:if>
   </tr>
 </xsl:template>

 <!--***************************************-->
 <!--              Divider template         -->
 <!--***************************************-->
 <xsl:template name="DividerTemplate">
   <xsl:param name="position"/>
   <xsl:param name="totItems" />

   <td valign="top">
     <xsl:choose>
       <xsl:when test="$position=$totItems"></xsl:when>
       <xsl:otherwise>
         <xsl:choose>
           <xsl:when test="not($VerticalDividerText)">
             <xsl:attribute name="style">
               <xsl:value-of select="concat('background-image:url(', @QUOTE, $VerticalDividerImage, @QUOTE, ')')" />
             </xsl:attribute>
           </xsl:when>
           <xsl:otherwise>
             <xsl:call-template name="Divider">
               <xsl:with-param name="DividerImage" select="''"/>
               <xsl:with-param name="DividerText" select="$VerticalDividerText" />
             </xsl:call-template>
           </xsl:otherwise>
         </xsl:choose>
       </xsl:otherwise>
     </xsl:choose>

     <xsl:choose>
       <xsl:when test="$position=1 and $position=$totItems">
         <xsl:call-template name="Divider">
           <xsl:with-param name="DividerImage" select="$HorizontalDividerImage"/>
           <xsl:with-param name="DividerText" select="$HorizontalDividerText" />
         </xsl:call-template>
       </xsl:when>
       <xsl:when test="$position=1">
         <xsl:call-template name="Divider">
           <xsl:with-param name="DividerImage" select="$TopDividerImage"/>
           <xsl:with-param name="DividerText" select="$TopDividerText" />
         </xsl:call-template>
       </xsl:when>
       <xsl:when test="$position=$totItems">
         <xsl:call-template name="Divider">
           <xsl:with-param name="DividerImage" select="$BottomDividerImage"/>
           <xsl:with-param name="DividerText" select="$BottomDividerText" />
         </xsl:call-template>
       </xsl:when>
       <xsl:otherwise>
         <xsl:call-template name="Divider">
           <xsl:with-param name="DividerImage" select="$ItemDividerImage"/>
           <xsl:with-param name="DividerText" select="$ItemDividerText" />
         </xsl:call-template>
       </xsl:otherwise>
     </xsl:choose>
   </td>
 </xsl:template>
  
 <!--***************************************-->
 <!--              Divider                  -->
 <!--***************************************-->
 <xsl:template name="Divider">
   <xsl:param name="DividerImage" select="''"/>
   <xsl:param name="DividerText" select="''" />

   <xsl:choose>
     <xsl:when test="$DividerText">
       <xsl:value-of select="$DividerText" />
     </xsl:when>
     <xsl:when test="$DividerImage" >
       <img class="{$DividerClass}" alt="" src="{$DividerImage}"/>
     </xsl:when>
   </xsl:choose>
 </xsl:template>

 <!--***************************************-->
 <!--              ShowTitle                -->
 <!--***************************************-->
 <xsl:template name="ShowTitle">
   <xsl:choose>
     <xsl:when test="sc:fld('Title',.)">
       <sc:text field="Title"/>
     </xsl:when>
     <xsl:when test="sc:fld($SMField,.)">
       <xsl:value-of select="sc:fld($SMField,.)" />
       <sc:text field="Menu"/>
     </xsl:when>
     <xsl:otherwise>
       <xsl:value-of select="./@name"/>
     </xsl:otherwise>
   </xsl:choose>
 </xsl:template>
  
</xsl:stylesheet>
