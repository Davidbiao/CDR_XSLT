<?xml version="1.0" encoding="UTF-8"?>
<!-- Created with Liquid Studio 2017 - Developer Bundle Edition (Trial) 15.1.4.7515 (https://www.liquid-technologies.com) -->
<xsl:stylesheet version="2.0" xmlns="urn:hl7-org:v3" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:isc="http://extension-functions.intersystems.com" xmlns:exsl="http://exslt.org/common" xmlns:set="http://exslt.org/sets" exclude-result-prefixes="isc sdtc exsl set">
	<xsl:include href="CDA-Support-Files/Functions.xsl"/>
	<xsl:include href="CDA-Support-Files/Variables.xsl"/>
	<xsl:include href="CDA-Support-Files/TemplateIdentifiers-CDA.xsl"/>
	<xsl:include href="CDA-Support-Files/cnoid.xsl"/>
	<xsl:include href="CDA-Support-Files/CDAHeader.xsl"/>
	<xsl:include href="CDA-Support-Files/PatientInformation.xsl"/>
	<xsl:include href="CDA-Support-Files/PatientMedicalHistories.xsl"/>
	<xsl:include href="CDA-Support-Files/Encounter.xsl"/>
	<xsl:template match="/Medication">
		<ClinicalDocument xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif">
			<xsl:call-template name="CDAHeader">
				<xsl:with-param name="documentTypeNumber" select="'C0004'"/>
				<xsl:with-param name="documentName" select="'西药处方'"/>
			</xsl:call-template>
			<!--Patient Information 1..* 什么时候用多个？-->
			<!-- the first two line give the same code in 53 documents -->
			<recordTarget contextControlCode="OP" typeCode="RCT">
				<patientRole classCode="PAT">
					<!--门（急）诊号标识 1..1 -->
					<xsl:apply-templates select="/Encounter/Patient/OutpatientID" mode="OutpatientID"/>
					<!--处方编号 1..1-->
					<xsl:apply-templates select="Patient/HealthCardNumber" mode="PatientHealthCardNumber"/>
					<!--患者基本信息-->
					<patient classCode="PSN" determinerCode="INSTANCE">
						<!--患者身份证号码 1..*-->
						<xsl:apply-templates select="Encounter/Patient/IDNo" mode="IDNo"/>
						<!--患者姓名，1..*-->
						<Name>
							<xsl:variable name="contactFirstName" select="Encounter/Patient/FirstName/text()"/>
							<xsl:variable name="contactLastName" select="Encounter/Patient/LastName/text()"/>
							<xsl:value-of select="concat($contactLastName,$contactFirstName)"/>
						</Name>
						<xsl:apply-templates select="Encounter/Patient" mode="code-administrativeGender"/>
						<!-- 患者年龄 0..1 -->
						<!--xsl:apply-templates select="Patient" mode="code-administrativeGender"/-->
						<!--开立科室 0..1-->
						<providerOrganization>
							<id root="2.16.156.10011.1.26"/>
							<name>
								<xsl:value-of select="ConsultationDepartment"/>
							</name>
							<asOrganizationPartOf>
								<wholeOrganization>
									<id/>
									<name/>
								</wholeOrganization>
							</asOrganizationPartOf>
						</providerOrganization>
					</patient>
				</patientRole>
			</recordTarget>
			<xsl:comment>处方开立医生 1..1</xsl:comment>
			<author contextControlCode="OP" typeCode="AUT">
				<time>
					<xsl:attribute name="value"><xsl:value-of select="CreationTime"/></xsl:attribute>
				</time>
				<assignedAuthor classCode="ASSIGNED">
					<id root="2.16.156.10011.1.7"/>
					<xsl:attribute name="extension"><xsl:value-of select="OrderedBy"/></xsl:attribute>
					<assignedPerson>
						<name>
							<xsl:value-of select="OrderedBy"/>
						</name>
					</assignedPerson>
				</assignedAuthor>
			</author>
			<xsl:comment>保管机构 1..1</xsl:comment>
			<xsl:call-template name="Custodian"/>
			<xsl:comment>处方审核药剂师签名 1..*</xsl:comment>
			<legalAuthenticator>
				<xsl:apply-templates select="Administrations/Administration/Auditor" mode="pharmacist">
					<xsl:with-param name="displayname" select="'处方审核药剂师'"/>
				</xsl:apply-templates>
			</legalAuthenticator>
			<xsl:comment>处方调配药剂师签名1..*</xsl:comment>
			<Authenticator>
				<xsl:apply-templates select="Dispenses/Dispense/Dispenser" mode="pharmacist">
					<xsl:with-param name="displayname" select="'处方调配药剂师'"/>
				</xsl:apply-templates>
			</Authenticator>
			<xsl:comment>处方核对药剂师签名 1..*</xsl:comment>
			<Authenticator>
				<xsl:apply-templates select="Administrations/Administration/Reviewer" mode="pharmacist">
					<xsl:with-param name="displayname" select="'处方核对药剂师'"/>
				</xsl:apply-templates>
			</Authenticator>
			<xsl:comment>处方发药药剂师签名 1..*</xsl:comment>
			<Authenticator>
				<xsl:apply-templates select="Administrations/Administration/Practitioner" mode="pharmacist">
					<xsl:with-param name="displayname" select="'处方发药药剂师'"/>
				</xsl:apply-templates>
			</Authenticator>
			<!--关联活动 0..1-->
			<relatedDocument typeCode="RPLC">
				<parentDocument>
					<id/>
					<setId/>
					<versionNumber/>
				</parentDocument>
			</relatedDocument>
			<component>
				<structuredBody>
					<xsl:comment>诊断记录章节 1..1</xsl:comment>
					<component>
						<xsl:apply-templates select="Encounter/Diagnoses/Diagnosis" mode="Diagnosis2"/>
					</component>
					<xsl:comment>用药章节_1..1</xsl:comment>
					<component>
						<xsl:apply-templates select="." mode="medication"/>
					</component>
					<xsl:comment>费用章节</xsl:comment>
					<component>
						<xsl:apply-templates select="." mode="payment"/>
					</component>
				</structuredBody>
			</component>
		</ClinicalDocument>
	</xsl:template>
	<xsl:template match="Auditor|Practitioner|Reviewer|Dispenser" mode="pharmacist">
		<xsl:param name="displayname"/>
		<time/>
		<signatureCode/>
		<assignedEntity>
			<id root="2.16.156.10011.1.4" extension="医务人员编号"/>
			<code displayName="{$displayname}"/>
			<assignedPerson classCode="PSN" determinerCode="INSTANCE">
				<name><xsl:value-of select="Name"/></name>
			</assignedPerson>
		</assignedEntity>
	</xsl:template>
	<xsl:template match="*" mode="medication">
		<xsl:param name="DosageForm">
			<xsl:value-of select="DosageForm"/>
			<xsl:text>3</xsl:text>
		</xsl:param>
		<section>
			<code code="10160-0" codeSystemName="LOINC" codeSystem="2.16.840.1.113883.6.1" displayName="HISTORY OF MEDICATION USE"/>
			<text/>
			<entry>
				<substanceAdministration classCode="SBADM" moodCode="EVN">
					<!-- 药物使用途径 1..1 ； displayName is not required-->
					<routeCode code="{Route/Code}" displayName="{Route/Name}" codeSystem="2.16.156.10011.2.3.1.158" codeSystemName="用药途径代码表"/>
					<!--单次用药剂量 1..1R-->
					<doseQuantity value="{DoseQuantity}" unit="mg"/>
					<!--用药频率 1..1R; 固定为"次/日", CDR的数据没法简单算出来，除非RateTimeUnit固定有valuelist-->
					<rateQuantity value="{RateAmount}" unit="次/日"/>
					<!--药物剂型 1..1R-->
					<!--CDR缺少DosageForm, 暂时设置个缺省值-->
					<administrationUnitCode code="$DosageForm" codeSystem="2.16.156.10011.2.3.1.211" codeSystemName="药物剂型代码表"/>
					<consumable>
						<manufacturedProduct>
							<manufacturedLabeledDrug>
								<!--code没有要求-->
								<code/>
								<!--药品代码及名称(通用名) 1..1R -->
								<name>
									<xsl:value-of select="DrugProduct"/>
								</name>
							</manufacturedLabeledDrug>
						</manufacturedProduct>
					</consumable>
					<!--药物规格代码及描述 1..1R ； CDR暂时没找到描述-->
					<entryRelationship typeCode="COMP">
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE08.50.043.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="药物规格"/>
							<value xsi:type="ST">规格描述</value>
						</observation>
					</entryRelationship>
					<!--药物使用总剂量 1..1R -->
					<entryRelationship typeCode="COMP">
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.135.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="药物使用总剂量"/>
							<value xsi:type="PQ" value="{MaxDoseQuantity}{RateUnits}"/>
						</observation>
					</entryRelationship>
				</substanceAdministration>
			</entry>
			<!--处方有效天数 1..1R-->
			<entry>
				<observation classCode="OBS" moodCode="EVN">
					<code code="DE06.00.294.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="处方有效天数"/>
					<value xsi:type="PQ" value="{PrescriptionValidDays}" unit="天"/>
				</observation>
			</entry>
			<!--处方药品组号1..1R -->
			<entry>
				<observation classCode="OBS" moodCode="EVN">
					<code code="DE08.50.056.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="处方药品组号"/>
					<value xsi:type="INT">
						<xsl:value-of select="DrugGroupNumber"/>
					</value>
				</observation>
			</entry>
			<!--处方备注信息1..1R CDR-->
			<entry>
				<observation classCode="OBS" moodCode="EVN">
					<code code="DE06.00.179.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="处方备注信息"/>
					<value xsi:type="ST">
						<xsl:value-of select="Indication"/>
					</value>
				</observation>
			</entry>
		</section>
	</xsl:template>
	<xsl:template match="*" mode="payment">
		<section>
			<code code="48768-6" displayName="PAYMENT SOURCES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
			<text/>
			<entry>
				<observation classCode="OBS" moodCode="EVN">
					<code code="DE07.00.004.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="处方药品金额"/>
					<value xsi:type="MO" value="{Payment/Bill}" currency="元"/>
				</observation>
			</entry>
		</section>
	</xsl:template>
</xsl:stylesheet>
