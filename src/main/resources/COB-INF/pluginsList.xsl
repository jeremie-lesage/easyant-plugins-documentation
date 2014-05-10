<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>List of EasyAnt Plugins</title>
      </head>
      <body>
		<h1>List of EasyAnt Plugins</h1>
		<xsl:for-each select=".//info">
			<h2><xsl:element name="a"><xsl:attribute name="href"><xsl:text>module/</xsl:text><xsl:value-of select="@module"/><xsl:text>.html</xsl:text></xsl:attribute><xsl:value-of select="@module"/>
			</xsl:element>
			</h2>
			<ul>
				<li>revision: <xsl:value-of select="@revision"/></li>
				<li>description: <xsl:apply-templates select="description" /></li>
            <li><xsl:element name="a">
				<xsl:attribute name="href"><xsl:text>module/</xsl:text><xsl:value-of select="@module"/><xsl:text>.ivy</xsl:text></xsl:attribute>module.ivy	</xsl:element></li>
		</ul>
			</xsl:for-each >
      </body>
    </html>
  </xsl:template>

	<xsl:template match="description">
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="br"><xsl:element name="br"/></xsl:template>
	<xsl:template match="p">
		<xsl:element name="p"><xsl:apply-templates /></xsl:element>
	</xsl:template>
	<xsl:template match="ol">
		<ol>
		<xsl:apply-templates />
		</ol>
	</xsl:template>
	<xsl:template match="ul">
		<ul>
		<xsl:apply-templates />
		</ul>
	</xsl:template>
	<xsl:template match="li"><li><xsl:apply-templates /></li></xsl:template>


	<xsl:template match="code">
		<xsl:element name="div">
			<xsl:attribute name="class"><xsl:value-of select="@type"/></xsl:attribute>
			<xsl:copy-of select="."/>
		</xsl:element>
	</xsl:template>


</xsl:stylesheet>
