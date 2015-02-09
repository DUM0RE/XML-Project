<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output indent="yes" method="xml" version="1.0" encoding="UTF-8" omit-xml-declaration="yes"/>
	<xsl:template match="/database">
		<xsl:element name="sales">
			<xsl:for-each select="table">
			
				<xsl:element name="sale">
					<xsl:attribute name="date">
						<xsl:value-of select="column[@name='date']" />
					</xsl:attribute>
					
					<xsl:element name="amount">
						<xsl:value-of select="column[@name='amount']" />
					</xsl:element>
					
					<xsl:element name="paid">
						<xsl:value-of select="column[@name='paid']" />
					</xsl:element>
					
					<xsl:element name="description">
						<xsl:value-of select="column[@name='description']" />
					</xsl:element>
					
					<xsl:element name="salesperson">
						<xsl:value-of select="column[@name='salesperson']" />
					</xsl:element>
				</xsl:element>
				
			</xsl:for-each>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>