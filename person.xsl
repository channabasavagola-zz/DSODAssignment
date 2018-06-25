<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
		<head>
		<style>
			b {
				font-family: Monospace;
				font-size: 16px;
				line-height: 22px;
			}

			h1 {
				font-variant: normal;
				font-family: Monospace;
				line-height: 28px;
				font-size: 25px;
				font-weight: 375;
				font-style: normal;
			}
		</style>
		</head>  
			<body>
			<h1>Persons</h1>
			<table border="2" class="w3-table-all w3-hoverable">
				<tr> 
					<th>
						<b> First </b>
					</th> 
					<th>
						<b> Last </b>
					</th> 
					<th>
						<b> Work </b>
					</th> 
					<th>
						<b> Cell </b>
					</th> 
					<th>
						<b> Cell Phone Provider </b>
					</th>
					<th>
						<b> Identification </b>
					</th>
					<th>
						<b> Password </b>
					</th>
					<th>
						<b> Encryption </b>
					</th> 
					<th>
						<b> Category </b>
					</th>
				</tr>
				<xsl:for-each select="Persons/Person">
					<xsl:sort select="Name/Last" />
					<tr style="font-size: 10pt; font-family: Monospace">
						<td>
							<xsl:value-of select="Name/First"/>
						</td>
						<td>
							<xsl:value-of select="Name/Last"/>
						</td>
						<td>
							<xsl:value-of select="Phone/Work"/>
						</td>
						<td>
							<xsl:value-of select="Phone/Cell"/>
						</td>
						<td>
							<xsl:value-of select="Phone/Cell/@Provider"/>
						</td>
						<td>
							<xsl:value-of select="Credential/Id"/>
						</td>
						<td>
							<xsl:value-of select="Credential/Password"/>
						</td>
						<td>
							<xsl:value-of select="Credential/Password/@Encryption"/>
						</td>
						<td>
							<xsl:value-of select="Category"/>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</body> </html>
	</xsl:template>
</xsl:stylesheet>
