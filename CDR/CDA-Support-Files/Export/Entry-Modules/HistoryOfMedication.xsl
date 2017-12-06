<?xml version="1.0" encoding="UTF-8"?>
<!-- History of Medical Use 模板， 用于共享文档
	西药处方，
	中药处方，
	一般手术记录，
	出入量

用药途径代码,名称: /Medication/Route/Code, Description
单次用药剂量: /Medication/DoseUToM/Code, Descritption, default is mg
用药频率/Medication/Frequency, QID or BID, means 4x a day or 2x a day
药物剂型: /Medication/DosageForm
药物剂型代码: /Medication/OrderItem/Code, Description
药品代码及名称(通用名): /Medication/DrugProduct/Code, Description
药物规格代码及描述: 
药物使用总剂量:/Medication/DoseQuantity
处方有效天数: /Medication/Duration/Code
处方药品组号 /Medication/PrescriptionNumber 
处方备注信息: /Medication/TextInstruction
-->
<xsl:stylesheet version="2.0" xmlns="urn:hl7-org:v3" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:isc="http://extension-functions.intersystems.com" xmlns:exsl="http://exslt.org/common" xmlns:set="http://exslt.org/sets" exclude-result-prefixes="isc sdtc exsl set">
	<xsl:include href="CDA-Support-Files/Functions.xsl"/>
	<xsl:include href="CDA-Support-Files/Variables.xsl"/>
	<xsl:include href="CDA-Support-Files/TemplateIdentifiers-CDA.xsl"/>
	<xsl:include href="CDA-Support-Files/cnoid.xsl"/>
	<xsl:include href="CDA-Support-Files/CDAHeader.xsl"/>
	<xsl:include href="CDA-Support-Files/PatientInformation.xsl"/>
	<xsl:include href="CDA-Support-Files/PatientMedicalHistories.xsl"/>
	<xsl:include href="CDA-Support-Files/Encounter.xsl"/>
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
</xsl:stylesheet>
