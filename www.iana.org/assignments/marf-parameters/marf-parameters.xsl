<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'marf-parameters-1'">
        <tr><th>Field Name</th>
          <th>Description</th>
          <th>Multiple Appearances</th>
          <th>Related "Feedback-Type"</th>
          <th>Reference</th>
          <th>Status</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'marf-parameters-2'">
        <tr><th>Feedback Type Name</th>
          <th>Description</th>
          <th>Reference</th>
          <th>Status</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'marf-parameters-1'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:multiple"/></td>
          <td><xsl:apply-templates select="iana:related"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:status"/></td>
        </tr>
      </xsl:when>
      <xsl:when test="../@id = 'marf-parameters-2'">
        <tr>
          <td><xsl:apply-templates select="iana:name"/></td>
          <td><xsl:apply-templates select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:apply-templates select="iana:status"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
