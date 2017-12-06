<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:isc="http://extension-functions.intersystems.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0">

	<xsl:variable name="interSystemsOID">2.16.840.1.113883.3.86</xsl:variable>
	<xsl:variable name="cacheOID">2.16.840.1.113883.3.86.1</xsl:variable>
	<xsl:variable name="ensembleOID">2.16.840.1.113883.3.86.2</xsl:variable>
	<xsl:variable name="healthShareOID">2.16.840.1.113883.3.86.3</xsl:variable>
	<xsl:variable name="trakCareOID">2.16.840.1.113883.3.86.4</xsl:variable>
	<xsl:variable name="deepSeeOID">2.16.840.1.113883.3.86.5</xsl:variable>
	<xsl:variable name="noCodeSystemOID">2.16.840.1.113883.3.86.3.1</xsl:variable>
	<xsl:variable name="noCodeSystemName" select="isc:evaluate('getCodeForOID', $noCodeSystemOID, 'CodeSystem', 'ISC-NoCodeSystem')"/>
</xsl:stylesheet>
