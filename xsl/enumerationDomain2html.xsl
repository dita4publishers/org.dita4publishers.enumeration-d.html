<?xml version="1.0" encoding="UTF-8" ?>
<!-- ===========================================================
     HTML generation templates for the enumerationDomain DITA domain.
     
     Copyright (c) 2010 W. DITA 4 Publishers
     
     =========================================================== -->
<xsl:stylesheet version="3.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:d4p="http://www.dita4publishers.org"
  exclude-result-prefixes="xs d4p"
  >
  
  <xsl:param name="d4p.enumerator.showEnumerators" as="xs:string" select="'no'"/>
  <xsl:variable name="d4p:isShowEnumerators" as="xs:boolean"
    select="matches($d4p.enumerator.showEnumerators, 'yes|on|true|1', 'i')"
  />

  <xsl:template match="
    *[$d4p:isShowEnumerators][contains(@class, ' d4p_enum-d/d4pEnumerator ')]
    " priority="10">
     <span class="d4pEnumerator"><xsl:apply-templates/></span>
  </xsl:template>

  <xsl:template match="
    *[$d4p:isShowEnumerators][contains(@class, ' d4p_simplenum-d/d4pSimpleEnumerator ')]
    " priority="10">
    <span class="d4pSimpleEnumerator"><xsl:apply-templates/></span>
  </xsl:template>
  
  
</xsl:stylesheet>
