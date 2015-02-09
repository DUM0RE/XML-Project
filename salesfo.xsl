<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
	<xsl:template match="/sales">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
		
			<fo:layout-master-set>
				<fo:simple-page-master master-name="salesbydate" page-width="8.5in" page-height="11in">
					<fo:region-body margin="1in" />
					<fo:region-before extent="20mm"/>
					<fo:region-after extent="20mm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
	
			<fo:page-sequence master-reference="salesbydate">
				<fo:flow flow-name="xsl-region-body">
					<fo:block text-align="center">
						<fo:table table-layout="fixed">
						
							<fo:table-column column-width="25mm"/>
							<fo:table-column column-width="25mm"/>
							<fo:table-column column-width="25mm"/>
							<fo:table-column column-width="50mm"/>
							<fo:table-column column-width="30mm"/>
				
							<fo:table-header>
								<fo:table-cell padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
									<fo:block font-weight="bold">Date</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
									<fo:block font-weight="bold">Amount</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
									<fo:block font-weight="bold">Paid</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
									<fo:block font-weight="bold">Description</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
									<fo:block font-weight="bold">Salesperson</fo:block>
								</fo:table-cell>
							</fo:table-header>
							
							

							<fo:table-body>
							
								<xsl:for-each select="sale">
									<xsl:sort select="@date" order="descending"/>
									
									<fo:table-row>
									
										<fo:table-cell padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
											<fo:block>
												<xsl:value-of select="@date" />
											</fo:block>
										</fo:table-cell>
										
										<fo:table-cell padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
											<fo:block>
												$<xsl:value-of select="amount" />
											</fo:block>
										</fo:table-cell>
										
										<fo:table-cell padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
											<fo:block>
												$<xsl:value-of select="paid" />
											</fo:block>
										</fo:table-cell>
										
										<fo:table-cell padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
											<fo:block>
												<xsl:value-of select="description" />
											</fo:block>
										</fo:table-cell>
										
										<fo:table-cell padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
											<fo:block>
												<xsl:value-of select="salesperson" />
											</fo:block>
										</fo:table-cell>
										
									</fo:table-row>
								</xsl:for-each>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="5" padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
										<fo:block font-weight="bold">Number of sales: <xsl:value-of select='count(//amount)' /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="5" padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
										<fo:block font-weight="bold">Total sales: $<xsl:value-of select='format-number(sum(//amount), "###,##0.00")' /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="5" padding-left="2mm" padding-right="2mm" padding-top="2mm" padding-bottom="2mm" border-style="solid">
										<fo:block font-weight="bold">Average sale: $<xsl:value-of select='format-number(sum(//amount) div count(//amount), "###,##0.00")' /></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>