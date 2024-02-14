<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
     <xsl:choose> 
      <xsl:when test="@id = 'fact-names'">
        <tr>
          <th>OS Name</th>
          <th>OS Specific Fact Name</th>
          <th>Definition of the Syntax of the Fact Value</th>
          <th>Specification of Semantics</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
       <xsl:when test="@id = 'filetypes'">
         <tr>
           <th>OS Name</th>
           <th>OS Specific File Type</th>
           <th>Definition of the Syntax of the Fact Value</th>
           <th>Specification of Semantics</th>
           <th>Reference</th>
         </tr>
       </xsl:when>
      <xsl:otherwise>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
    <xsl:when test="../@id = 'fact-names'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:definition"/></td>
          <td><xsl:apply-templates select="iana:spec"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
    </xsl:when>
      <xsl:when test="../@id = 'filetypes'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:definition"/></td>
          <td><xsl:apply-templates select="iana:spec"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
    <xsl:otherwise>
    </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

</xsl:stylesheet>
