<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns="urn:hl7-org:v3" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:isc="http://extension-functions.intersystems.com" xmlns:exsl="http://exslt.org/common" xmlns:set="http://exslt.org/sets" exclude-result-prefixes="isc sdtc exsl set">
	<!--ID-->
	<!--why the following test doesn't work??
	<xsl:template  match="MPIID" mode="PatientID">
		<test></test>
		<xsl:choose>
			<xsl:when test="Patient/MPIID">
				<id root="{$健康档案编号标识}">
					<xsl:attribute name="extension"><xsl:value-of select="MPIID"/></xsl:attribute>
				</id>
			</xsl:when>
			<xsl:when test="HealthCardNumber">
				<id root="{$健康卡号标识}">
					<xsl:attribute name="extension"><xsl:value-of select="text()"/></xsl:attribute>
				</id>
			</xsl:when>
		</xsl:choose>
	</xsl:template-->
	<!--姓名-->
	
	<xsl:template match="Patient" mode="CDRName">
		<xsl:comment>患者姓名</xsl:comment>
		<Name>
			<xsl:variable name="FirstName" select="FirstName"/>
			<xsl:variable name="LastName" select="LastName"/>
			<xsl:value-of select="concat($LastName,' ' ,$FirstName)"/>
		</Name>
	</xsl:template>
	<!--性别-->
	<xsl:template match="*" mode="CDRGender">
		<xsl:comment>患者性别</xsl:comment>
		<xsl:variable name="genderCode" select="Code"/>
		<xsl:variable name="genderDescription" select="Name"/>
		<administrativeGenderCode code="{$genderCode}" codeSystemName="生理性别代码表(GB/T 2261.1)" codeSystem="{$生理性别代码表}" displayName="{$genderDescription}"/>
	</xsl:template>
	<!--生日 BirthTime-->
	<xsl:template match="BirthTime" mode="BirthTime">
		<xsl:comment>患者出生时间</xsl:comment>
		<birthTime>
			<xsl:attribute name="value"><xsl:apply-templates select="." mode="xmlToHL7TimeStamp"/></xsl:attribute>
		</birthTime>
	</xsl:template>
	<!--地址 Address-->
	<xsl:template match="*" mode="CDRAddress">
		<addr use="H">
			<houseNumber>
				<xsl:value-of select="HouseNumber"/>
			</houseNumber>
			<streetName>
				<xsl:value-of select="Street"/>
			</streetName>
			<township>
				<xsl:value-of select="Township"/>
			</township>
			<county>
				<xsl:value-of select="County"/>
			</county>
			<city>
				<xsl:value-of select="City"/>
			</city>
			<state>
				<xsl:value-of select="Province"/>
			</state>
			<postalCode>
				<xsl:value-of select="Postcode"/>
			</postalCode>
		</addr>
	</xsl:template>
	<!--PhoneNumber-->
	<xsl:template match="PhoneNumber">
		<xsl:choose>
			<xsl:when test="'true'">
				<xsl:variable name="telecomHomePhone">
					<xsl:value-of select="."/>
				</xsl:variable>
				<telecom use="HP" value="{concat('tel:', $telecomHomePhone)}"/>
			</xsl:when>
			<xsl:otherwise>
				<telecom nullFlavor="UNK"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="MPIID" mode="PatientMPIID">
		<id root="{$健康档案编号标识}">
			<xsl:attribute name="extension"><xsl:value-of select="."/></xsl:attribute>
		</id>
	</xsl:template>
	<xsl:template match="HealthCardNumber" mode="PatientHealthCardNumber">
		<id root="{$健康卡号标识}">
			<xsl:attribute name="extension"><xsl:value-of select="."/></xsl:attribute>
		</id>
	</xsl:template>
	<xsl:template match="OutpatientID" mode="OutpatientID">
		<id root="{$门急诊号标识}">
			<xsl:attribute name="extension"><xsl:value-of select="."/></xsl:attribute>
		</id>
	</xsl:template>
	<xsl:template match="InpatientID" mode="InpatientID">
		<id root="{$住院号标识}">
			<xsl:attribute name="extension"><xsl:value-of select="."/></xsl:attribute>
		</id>
	</xsl:template>
	<xsl:template match="IDNo" mode="IDNo">
		<xsl:comment>患者身份证号标识</xsl:comment>
		<id root="{$患者身份证号标识}">
			<xsl:attribute name="extension"><xsl:value-of select="."/></xsl:attribute>
		</id>
	</xsl:template>
	<!--Age-->
	<xsl:template match="Age" mode="Age">
		<age unit="岁">
			<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
		</age>
	</xsl:template>
	<!--employerOrganization-->
	<!--Question: if using xsl:copy to copy EmployerOrganization, always put namespace in attribute, why?-->
	<xsl:template match="*" mode="EmployerOrganization">
		<EmployerOrganization>
			<xsl:copy-of select="name"/>
			<telecom>
				<xsl:attribute name="value"><xsl:value-of select="PhoneNumber"/></xsl:attribute>
			</telecom>
		</EmployerOrganization>
	</xsl:template>
	<!--ethnicGroup-->
	<xsl:template match="*" mode="code-ethnicGroup-patient">
		<xsl:variable name="ethnicCode">
			<xsl:value-of select="EthnicGroup/Code"/>
		</xsl:variable>
		<xsl:variable name="ethnicDesc">
			<xsl:value-of select="EthnicGroup/Name">
                        </xsl:value-of>
		</xsl:variable>
		<ethnicGroupCode code="{$ethnicCode}" displayName="{$ethnicDesc}" codeSystem="2.16.156.10011.2.3.3.3" codeSystemName="民族类别代码表(GB 3304)"/>
	</xsl:template>
	<!--MaritalStatus-->
	<xsl:template match="MaritalStatus" mode="code-maritalStatus">
		<xsl:variable name="MaritalCode">
			<xsl:value-of select="Code"/>
		</xsl:variable>
		<xsl:variable name="Maritaldisplay">
			<xsl:value-of select="Name"/>
		</xsl:variable>
		<maritalStatusCode code="{$MaritalCode}" displayNme="{Maritaldisplay}" codeSystem="{$婚姻状况代码表}" displayName="婚姻状况代码表(GB/T 2261.2)"/>
	</xsl:template>
	<!--Occupation-->
	<xsl:template match="Occupation" mode="Occupation">
		<xsl:variable name="Code" select="Code"/>
		<xsl:variable name="Name" select="Name"/>
		<maritalStatusCode code="{$Code}" displayNme="{Name}" codeSystem="2.16.156.10011.2.3.3.13" codeSystemName="从业状况(个人身体)代码表(GB/T 2261.4)"/>
	</xsl:template>
	<!--联系人1..*, @typeCode: NOT(ugent notification contact)，固定值，表示不同的参与者-->
	<xsl:template match="SupportContact" mode="CDRSupportContacts">
		<participant typeCode="NOT">
			<!--联系人@classCode：CON，固定值，表示角色是联系人-->
			<associatedEntity classCode="ECON">
				<!--联系人类别，表示与患者之间的关系, 没有定义格式-->
				<code/>
				<!--联系人地址-->
				<addr>
					<xsl:apply-templates select="Address" mode="CDRAddress"/>
				</addr>
				<!--电话号码-->
				<xsl:apply-templates select="PhoneNumber"/>
				<!--联系人-->
				<associatedPerson classCode="PSN" determinerCode="INSTANCE">
					<!--姓名-->
					<name>
						<xsl:value-of select="Name"/>
					</name>
				</associatedPerson>
			</associatedEntity>
		</participant>
	</xsl:template>
</xsl:stylesheet>
