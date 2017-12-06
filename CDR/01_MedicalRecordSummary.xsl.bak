<?xml version="1.0" encoding="UTF-8"?>
<!-- 		source: HIP CDR 从encounter生成的xml
		traget: 互连互通文档01-病例概要
		如需数据结构有变动，或者用其他数据比如SDA3, 只需要很少修改，比如一些XPath
 -->
<xsl:stylesheet version="1.0" xmlns="urn:hl7-org:v3" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:isc="http://extension-functions.intersystems.com" xmlns:exsl="http://exslt.org/common" xmlns:set="http://exslt.org/sets" exclude-result-prefixes="isc sdtc exsl set">
	<xsl:include href="CDA-Support-Files/Export/IOT/OIDs-IOT.xsl"/>
	<xsl:include href="CDA-Support-Files/Export/IOT/CDAHeader.xsl"/>
	<xsl:include href="CDA-Support-Files/Export/IOT/PatientInformation.xsl"/>
	<xsl:include href="CDA-Support-Files/Export/IOT/PatientMedicalHistories.xsl"/>
	<xsl:include href="CDA-Support-Files/Export/IOT/Encounter.xsl"/>
	<xsl:template match="/Encounter">
		<ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
			<xsl:call-template name="CDAHeader">
				<xsl:with-param name="documentTypeNumber" select="'1'"/>
				<xsl:with-param name="documentName" select="'病历概要'"/>
			</xsl:call-template>
			<!--PersonalInformation-->
			<!-- the first two line give the same code in 53 documents -->
			<recordTarget contextControlCode="OP" typeCode="RCT">
				<patientRole classCode="PAT">
					<xsl:comment>健康档案号</xsl:comment>
					<xsl:apply-templates select="Patient/MPIID" mode="PatientMPIID"/>
					<xsl:comment>健康卡号</xsl:comment>
					<xsl:apply-templates select="Patient/HealthCardNumber" mode="PatientHealthCardNumber"/>
					<xsl:comment>患者家庭住址，门牌-村街-乡-县-市-省必须，邮编可选</xsl:comment>
					<xsl:apply-templates select="Patient/Address" mode="CDRAddress"/>
					<xsl:comment>患者联系电话</xsl:comment>
					<xsl:apply-templates select="Patient/PhoneNumber"/>
					<xsl:comment>患者基本信息</xsl:comment>
					<patient classCode="PSN" determinerCode="INSTANCE">
						<id root="2.16.156.10011.1.3">
							<xsl:attribute name="extension"><xsl:value-of select="Patient/IDNo"/></xsl:attribute>
						</id>
						<!--患者姓名，必选-->
						<xsl:apply-templates select="Patient" mode="CDRName"/>
						<!-- 性别，必选 -->
						<xsl:apply-templates select="Patient/Gender" mode="CDRGender"/>
						<!-- 出生时间1..1,格式可能要转换，要求输出为yyyymmdd -->
						<xsl:apply-templates select="Patient/BirthTime" mode="BirthTime"/>
						<!-- 婚姻状况1..1 -->
						<xsl:apply-templates select="Patient/MaritalStatus" mode="code-maritalStatus"/>
						<!-- 民族1..1 -->
						<xsl:apply-templates select="Patient" mode="code-ethnicGroup-patient"/>
						<!--工作单位0..1, 要求名称电话-->
						<xsl:apply-templates select="Patient/employerOrganization" mode="EmployerOrganization"/>
						<!--职业0..1-->
						<xsl:apply-templates select="Patient/Occupation" mode="Occupation"/>
					</patient>
				</patientRole>
			</recordTarget>
			<xsl:comment>文档作者</xsl:comment>
			<xsl:apply-templates select="Creator" mode="Creator"/>
			<xsl:comment>保管机构</xsl:comment>
			<xsl:call-template name="Custodian"/>
			<xsl:comment>联系人1..*</xsl:comment>
			<xsl:apply-templates select="Patient/SupportContacts" mode="CDRSupportContacts"/>
			<component>
				<structuredBody>
					<xsl:comment>实验室检验章节0..1R2仅包括血型</xsl:comment>
					<xsl:apply-templates select="Patient" mode="Blood"/>
					<xsl:comment>既往史章节0..1R2</xsl:comment>
					<xsl:apply-templates select="Patient/IllnessHistories" mode="IllnessHistories"/>
					<xsl:comment>输血章节,单条目0..1R2</xsl:comment>
					<xsl:apply-templates select="Patient" mode="BloodTransfusionHistory"/>
					<xsl:comment>过敏史章节0..1R2</xsl:comment>
					<xsl:apply-templates select="Patient/Allergies" mode="Allergies"/>
					<xsl:comment>预防接种章节0..1R2</xsl:comment>
					<xsl:apply-templates select="Patient" mode="Immunizations"/>
					<xsl:comment>个人史章节0..1R2</xsl:comment>
					<xsl:apply-templates select="Patient/SocialHistories" mode="SocialHistories"/>
					<xsl:comment>月经史章节0..1R2</xsl:comment>
					<xsl:apply-templates select="Patient" mode="MenstrualHistory"/>
					<xsl:comment>家族史章节0..1R2</xsl:comment>
					<xsl:apply-templates select="Patient" mode="FamilyHistories"/>
					-<relatedDocument typeCode="RPLC">
						<parentDocument>
							<id/>
							<setId/>
							<versionNumber/>
						</parentDocument>
					</relatedDocument>
					<xsl:comment>卫生事件1..1R</xsl:comment>
					<xsl:apply-templates select="." mode="EncounterSummary"/>
				</structuredBody>
			</component>
		</ClinicalDocument>
	</xsl:template>
	<!--PatientInformation Part-->
</xsl:stylesheet>
