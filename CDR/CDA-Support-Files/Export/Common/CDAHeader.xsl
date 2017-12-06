<xsl:stylesheet version="1.0" xmlns="urn:hl7-org:v3" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:isc="http://extension-functions.intersystems.com" xmlns:exsl="http://exslt.org/common" xmlns:set="http://exslt.org/sets" exclude-result-prefixes="isc sdtc exsl set">
	<xsl:template match="Patient" name="CDAHeader">
		<xsl:param name="documentTypeNumber"/>
		<xsl:param name="documentName"/>
		<!-- 头两行固定值， "CN" 代表中国 -->
		<realmCode code="CN"/>
		<typeId root="2.16.840.1.113883.1.3" extension="POCD_HD000040"/>
		<!--从21开始排序，每个文档不同-->
		<templateId root="2.16.156.10011.2.1.1.21"/>
		<!--文档流水号，root值固定，extension由机器自动生成-->
		<!--id root="2.16.156.10011.1.1" extension="{isc:evaluate('createGUID')}"/-->
		<!-- Code从C0001开始 -->
		<code code="{$documentTypeNumber}" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
		<title>
			<xsl:value-of select="$documentName"/>
		</title>
		<!--文档机器生成时间-->
		<effectiveTime>
			<!--xsl:attribute name="value"><xsl:value-of select="format-dateTime(current-dateTime(), '[Y0001][M01][D01][H01][m01][s01]')"/></xsl:attribute-->
		</effectiveTime>
		<!-- 文档密级 TBD,应该在CDR.Base里面加入-->
		<!--xsl:apply-templates mode="document-confidentialityCode" select="."-->
		<confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
		<languageCode code="zh-CN"/>
		<!--可选项-->
		<setId/>
		<versionNumber/>
	</xsl:template>
	<!-- confidentialityCode may be overriden by stylesheets that import this one -->
	<xsl:template mode="document-confidentialityCode" match="Container">
		<confidentialityCode nullFlavor="{$confidentialityNullFlavor}"/>
	</xsl:template>
	<xsl:variable name="confidentialityNullFlavor" select="'NI'"/>
	<xsl:template match="Creator" mode="Creator">
		<!--创建者-->
		<author typeCode="AUT" contextControlCode="OP">
			<!--建档日期时间1..1， 格式20120909112212-->
			<time value="20120909112212"/>
			<assignedAuthor classCode="ASSIGNED">
				<id root="2.16.156.10011.1.7">
					<xsl:attribute name="id"><xsl:value-of select="id"/></xsl:attribute>
				</id>
				<!--建档者姓名-->
				<assignedPerson>
					<name>
						<xsl:value-of select="Name"/>
					</name>
				</assignedPerson>
				<!--建档机构-->
				<representedOrganization>
					<id root="2.16.156.10011.1.5" extension="1234567890"/>
					<name>xx医院</name>
				</representedOrganization>
			</assignedAuthor>
		</author>
	</xsl:template>
	<xsl:template name="Custodian">
		<custodian typeCode="CST">
			<assignedCustodian classCode="ASSIGNED">
				<representedCustodianOrganization classCode="ORG" determinerCode="INSTANCE">
					<id root="2.16.156.10011.1.5" extension="1234567890"/>
					<name>xx医院</name>
				</representedCustodianOrganization>
			</assignedCustodian>
		</custodian>
	</xsl:template>
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="..\..\..\..\..\DataIn\CDR_EncounterSample_v1.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="no" profilemode="0" profiledepth=""
		          profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal"
		          customvalidator="">
			<advancedProp name="bSchemaAware" value="false"/>
			<advancedProp name="xsltVersion" value="2.0"/>
			<advancedProp name="schemaCache" value="||"/>
			<advancedProp name="iWhitespace" value="0"/>
			<advancedProp name="bWarnings" value="true"/>
			<advancedProp name="bXml11" value="false"/>
			<advancedProp name="bUseDTD" value="false"/>
			<advancedProp name="bXsltOneIsOkay" value="true"/>
			<advancedProp name="bTinyTree" value="true"/>
			<advancedProp name="bGenerateByteCode" value="true"/>
			<advancedProp name="bExtensions" value="true"/>
			<advancedProp name="iValidation" value="0"/>
			<advancedProp name="iErrorHandling" value="fatal"/>
			<advancedProp name="sInitialTemplate" value=""/>
			<advancedProp name="sInitialMode" value=""/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
		<MapperBlockPosition></MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->