<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Render Executive Profile.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/6/2007 12:01:07 PM                                               
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
  <xsl:call-template name="RenderExecutiveProfile"/>
</xsl:template>

<xsl:template name="RenderExecutiveProfile">
  <xsl:choose>
    <xsl:when test="sc:fld('name',.)!=''">
      <h1>
        <sc:text field="name"/>
      </h1>
    </xsl:when>
    <xsl:otherwise>
      <h1>
        <xsl:call-template name="showtitle">
          <xsl:with-param name="item" select="."/>
        </xsl:call-template>
      </h1>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:if test="(sc:fld('job title',.)!='') or (sc:pageMode()/pageEditor/edit)">
    <h3>
      <i>
        <sc:text field="job title" show-title-when-blank="true"/>
      </i>
    </h3>
  </xsl:if>
  <xsl:if test="sc:fld('text',.)!=''">
    <p>
      <sc:text field="text"/>
    </p>
  </xsl:if>
  <br/>
  <div class="people">
  <ul>
    <xsl:if test="(sc:fld('phone',.)!='') or (sc:pageMode()/pageEditor/edit)">
      <li>Phone: <sc:text field="phone"  show-title-when-blank="true"/></li>
    </xsl:if>
    <xsl:if test="(sc:fld('fax',.)!='') or (sc:pageMode()/pageEditor/edit)">
      <li>Fax: <sc:text field="fax"  show-title-when-blank="true"/></li>
    </xsl:if>
    <xsl:if test="(sc:fld('email',.)!='') or (sc:pageMode()/pageEditor/edit)">
      <li>Email: <sc:text field="email"  show-title-when-blank="true"/></li>
    </xsl:if>
  </ul>
  </div>
</xsl:template>

</xsl:stylesheet>
