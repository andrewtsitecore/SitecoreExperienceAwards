<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Subitem Contact Location.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/17/2007 3:06:56 PM                                               
    Copyright notice at bottom of file
==============================================================-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:sc="http://www.sitecore.net/sc" 
  xmlns:dot="http://www.sitecore.net/dot"
  exclude-result-prefixes="dot sc">

<!-- import required renderings and library functions -->
<xsl:import href="Subitem Common Fields.xslt"/>
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
<xsl:variable name="common" select="/*/item[@key='content']/item[@key='settings']/item[@key='common text']" /> 
<xsl:variable name="readmore" select="$common/item[@key='read more']" /> 
<xsl:variable name="fax" select="$common/item[@key='fax']" />

<!-- entry point -->
<xsl:template match="*">
  <xsl:apply-templates select="$sc_item" mode="main"/>
</xsl:template>

<!--==============================================================-->
<!-- main                                                         -->
<!--==============================================================-->
<xsl:template match="*" mode="main">
  <xsl:call-template name="RenderContactLocation"/>
</xsl:template>

<xsl:template name="RenderContactLocation">
  <xsl:call-template name="showOverviewImage"/>

  <xsl:choose>
    <xsl:when test="sc:fld('name',.)!=''">
      <h2>
        <sc:link>
          <sc:text field="name"/>
        </sc:link>
      </h2>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="showTitleAsH2Link"/>
    </xsl:otherwise>
  </xsl:choose>

  <xsl:call-template name="showOverviewAbstract"/>

  <xsl:if test="(sc:fld('address line 1',.)!='') or (sc:pageMode()/pageEditor/edit)">
    <p>
      <sc:text field="address line 1" show-title-when-blank="true"/>
      <xsl:if test="(sc:fld('address line 2',.)!='') or (sc:pageMode()/pageEditor/edit)">
        <br/>
        <sc:text field="address line 2" show-title-when-blank="true"/>
      </xsl:if>
      <xsl:if test="(sc:fld('address line 3',.)!='') or (sc:pageMode()/pageEditor/edit)">
        <br/><sc:text field="address line 3" show-title-when-blank="true"/>
      </xsl:if>
    </p>
  </xsl:if>
  <xsl:if test="(sc:fld('phone',.)!='') or (sc:fld('fax',.)!='') or (sc:pageMode()/pageEditor/edit)">
    <p>
      <xsl:if test="(sc:fld('phone',.)!='') or (sc:pageMode()/pageEditor/edit)">
        <sc:text field="phone" show-title-when-blank="true"/>
      </xsl:if>
      <xsl:if test="(sc:fld('phone',.)!='') and (sc:fld('fax',.)!='') or (sc:pageMode()/pageEditor/edit)">
        <br/>
      </xsl:if>
      <xsl:if test="(sc:fld('fax',.)!='') or (sc:pageMode()/pageEditor/edit)">
        <sc:text field="fax" show-title-when-blank="true"/>&#160;<sc:text field="text" select="$fax"/>
      </xsl:if>
    </p>
  </xsl:if>
  <xsl:if test="(sc:fld('info email',.)!='') or (sc:pageMode()/pageEditor/edit)">
    <a href="mailto:{sc:fld('info email',.)}"><sc:text field="info email" show-title-when-blank="true"/></a>
  </xsl:if>
  <xsl:if test="(sc:fld('info email',.)!='') and (sc:fld('sales email',.)!='') or (sc:pageMode()/pageEditor/edit)">
    <br/>
  </xsl:if>
  <xsl:if test="(sc:fld('sales email',.)!='') or (sc:pageMode()/pageEditor/edit)">
    <a href="mailto:{sc:fld('sales email',.)}"><sc:text field="sales email" show-title-when-blank="true"/></a>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
