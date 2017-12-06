<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="urn:hl7-org:v3" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:isc="http://extension-functions.intersystems.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0">

	<xsl:template match="*" name="copyNodeTree" mode="copy" priority="2">
		<xsl:element namespace="urn:hl7-org:v3" name="{local-name()}">
			<xsl:apply-templates select="@*|node()" mode="copy"/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="@*|node()" mode="copy">
		<xsl:copy><xsl:apply-templates select="@*|node()" mode="copy" /></xsl:copy>
	</xsl:template>
	
	<!--
		currentXPath returns a string that represents the full
		XPath (i.e., up to the root) for the specified node spec.
		
		Parameter $includePosition toggles whether XPath index
		positions are included in the returned string.  The
		default is 0.
		
		When calculating positions, currentXPath uses the relative
		position of nodes of the same name on a given level.  For
		example, if there are 7 nodes on a given level and 3 of
		them are element AAA and 4 are element BBB, and the node
		in question is the 2nd BBB, then the position included in
		the XPath string is [2], not [5].
	-->
	<xsl:template match="*" mode="currentXPath">
		<xsl:param name="includePosition" select="'0'"/>
		<xsl:variable name="currentName" select="local-name()"/>
		<xsl:variable name="currentPosition" select="count(self::*/preceding-sibling::*[name()=$currentName]) + 1"/>
		<xsl:if test="not(local-name()=name(parent::node())) and string-length(name(parent::node()))"><xsl:apply-templates select=".." mode="currentXPath"><xsl:with-param name="includePosition" select="$includePosition"/></xsl:apply-templates></xsl:if>/<xsl:value-of select="local-name()"/><xsl:if test="$includePosition='1'"><xsl:value-of select="concat('[',$currentPosition,']')"/></xsl:if>
	</xsl:template>
	
	<!--
		currentXPathWithPos provides a shorthand way of
		using currentXPath without having to include the
		with-param to explictly specify includePosition=1
		in the apply-templates call.
	-->
	<xsl:template match="*" mode="currentXPathWithPos">
		<xsl:apply-templates select="." mode="currentXPath">
			<xsl:with-param name="includePosition" select="'1'"/>
		</xsl:apply-templates>
	</xsl:template>
</xsl:stylesheet>
