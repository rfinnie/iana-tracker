<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'claims-registry'">
        <tr>
          <th>Claim Name</th>
          <th>Claim Description</th>
          <th>JWT Claim Name</th>
          <th>Claim Key</th>
          <th>Claim Value Type</th>
          <th>Change Controller</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:when test="@id = 'confirmation-methods'">
		<tr>
          <th>Confirmation Method Name</th>
          <th>Confirmation Method Description</th>
		  <th>JWT Confirmation Method Name</th>
		  <th>Confirmation Key</th>
		  <th>Confirmation Value Type</th>
          <th>Change Controller</th>
          <th>Reference</th>
	    </tr>
      </xsl:when>	  
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'claims-registry'">
        <tr>
          <td><xsl:value-of select="iana:claim"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:value-of select="iana:jwt"/></td>
          <td><xsl:apply-templates select="iana:key"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:change"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'confirmation-methods'">
        <tr>
          <td><xsl:value-of select="iana:confirmation"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:value-of select="iana:jwt"/></td>
          <td><xsl:apply-templates select="iana:key"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:change"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td align="center"><xsl:value-of select="iana:claim"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:value-of select="iana:jwt"/></td>
          <td><xsl:apply-templates select="iana:key"/></td>
          <td><xsl:apply-templates select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:change"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
