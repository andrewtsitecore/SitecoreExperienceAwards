<?xml version="1.0" encoding="UTF-8"?>

<!--=============================================================
    File: Render Job Description.xslt                                                   
    Created by: sitecore\admin                                       
    Created: 12/6/2007 12:23:43 PM                                               
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
<xsl:variable name="common" select="/*/item[@key='content']/item[@key='settings']/item[@key='common text']" /> 
 -->
  <xsl:variable name="common" select="sc:item('3F807CFE-121D-481C-95E3-03DBDC0CCD4A',.)" />


  <xsl:variable name="jobcontact" select="sc:item('978970ED-7BC4-4734-B217-1B88A9CECF2D',.)" />
  <xsl:variable name="jobdeadline" select="sc:item('10585136-E591-422E-9E09-7F3058937666',.)" />

  <!-- entry point -->
  <xsl:template match="*">
    <xsl:apply-templates select="$sc_item" mode="main"/>
  </xsl:template>

  <!--==============================================================-->
  <!-- main                                                         -->
  <!--==============================================================-->
  <xsl:template match="*" mode="main">
    <xsl:call-template name="RenderJobDescription"/>
  </xsl:template>

  <xsl:template name="RenderJobDescription">
    <div class="row">
      <div class="col-md-12">
        <xsl:if test="(sc:fld('contact',.)!='') or (sc:pageMode()/pageEditor/edit)">
          <p>
            <strong>
              <sc:text field="text" select="$jobcontact"/>&#160;
            </strong>
            <a href="mailto:{sc:fld('contact',.)}">
              <sc:text field="contact"/>
            </a>
          </p>
        </xsl:if>
        <xsl:if test="(sc:fld('deadline',.)!='') or (sc:pageMode()/pageEditor/edit)">
          <p>
            <strong>
              <sc:text field="text" select="$jobdeadline"/>&#160;
            </strong>
            <sc:date field="deadline" format="MMM dd, yyyy"/>
          </p>
        </xsl:if>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
