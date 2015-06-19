<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Content Details.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/12/2007 2:04:07 PM                                               
    Copyright notice at bottom of file
==============================================================-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:sc="http://www.sitecore.net/sc" 
  xmlns:dot="http://www.sitecore.net/dot"
  exclude-result-prefixes="dot sc">

<!-- import required renderings and library functions -->
<xsl:import href="Show Help Link.xslt"/>

<!-- import required renderings and library functions -->
<xsl:import href="Render Contact Location.xslt"/>
<xsl:import href="Render Executive Profile.xslt"/>
<xsl:import href="Render Job Description.xslt"/>
<xsl:import href="Render News Article.xslt"/>
<xsl:import href="Render Product.xslt"/>
<xsl:import href="Render Reference.xslt"/>

<!-- output directives -->
<xsl:output method="xml" indent="no" encoding="UTF-8" />

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
<xsl:variable name="readmore" select="$common/item[@key='read more']" /> 
<xsl:variable name="about" select="$common/item[@key='about link']" />

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
   <xsl:choose>
      <xsl:when test="./@template='contact location'">
        <xsl:call-template name="RenderContactLocation"/>
      </xsl:when>
      <xsl:when test="./@template='executive profile'">
        <xsl:call-template name="RenderExecutiveProfile"/>
      </xsl:when>
      <xsl:when test="./@template='product description'">
        <xsl:call-template name="RenderProduct"/>
      </xsl:when>
      <xsl:when test="./@template='job description'">
        <xsl:call-template name="RenderJobDescription"/>
      </xsl:when>
      <xsl:when test="./@template='news article'">
        <xsl:call-template name="RenderNewsArticle"/>
      </xsl:when>
      <xsl:when test="./@template='news article - one column'">
        <xsl:call-template name="RenderNewsArticle"/>
      </xsl:when>
      <xsl:when test="./@template='news article - two column'">
        <xsl:call-template name="RenderNewsArticle"/>
      </xsl:when>
      <xsl:when test="./@template='news article - three column'">
        <xsl:call-template name="RenderNewsArticle"/>
      </xsl:when>
      <xsl:when test="./@template='reference'">
        <xsl:call-template name="RenderReference"/>
      </xsl:when>
     <xsl:otherwise>
       <div style="clear:both;">
         <br />
         <br />
       </div>
     </xsl:otherwise> 
    </xsl:choose>

</xsl:template>

</xsl:stylesheet>