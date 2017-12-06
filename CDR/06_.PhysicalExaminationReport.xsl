<?xml version="1.0" encoding="UTF-8"?>
<!-- 		source: HIP CDR 从encounter生成的xml
		traget: 互连互通文档06-检查报告
 -->
<xsl:stylesheet version="1.0" xmlns="urn:hl7-org:v3" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:isc="http://extension-functions.intersystems.com" xmlns:exsl="http://exslt.org/common" xmlns:set="http://exslt.org/sets" exclude-result-prefixes="isc sdtc exsl set">
	<xsl:include href="Hainan_Templates/Diagnosis.xsl"/>
	<xsl:include href="Hainan_Templates/PhysicalExamination.xsl"/>
	
	
	
	<ClinicalDocument xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="urn:hl7-org:v3">
		<realmCode code="CN"/>
		<typeId root="2.16.840.1.113883.1.3" extension="POCD_MT000040"/>
		<templateId root="2.16.156.10011.2.1.1.26"/>
		<!-- 文档流水号 -->
		<id root="2.16.156.10011.1.1" extension="RN001"/>
		<code code="C0006" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
		<title>检查报告</title>
		<!-- 文档机器生成时间 -->
		<effectiveTime value="20160927171049"/>
		<confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
		<languageCode code="zh-CN"/>
		<setId/>
		<versionNumber/>
		<!--文档记录对象（患者）-->
		<recordTarget typeCode="RCT" contextControlCode="OP">
			<patientRole classCode="PAT">
				<!--门（急）诊号标识 -->
				<id root="2.16.156.10011.1.11" extension="000480000000"/>
				<!--住院号标识-->
				<id root="2.16.156.10011.1.12" extension="-"/>
				<!--检查报告单号标识-->
				<id root="2.16.156.10011.1.32" extension="-"/>
				<!--电子申请单编号-->
				<id root="2.16.156.10011.1.24" extension="105046001"/>
				<!-- 标本编号标识 -->
				<id root="2.16.156.10011.1.14" extension="-"/>
				<!-- 患者类别代码 -->
				<patientType>
					<patienttypeCode code="01" codeSystem="2.16.156.10011.2.3.1.271" codeSystemName="患者 类型代码表" displayName="门诊"/>
				</patientType>
				<telecom value="62373772"/>
				<patient classCode="PSN" determinerCode="INSTANCE">
					<!--患者身份证号标识-->
					<id root="2.16.156.10011.1.3" extension="110108195803072222"/>
					<name>杨磊</name>
					<administrativeGenderCode code="2" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)" displayName="女性"/>
					<!-- 年龄 -->
					<age unit="岁" value="58"/>
				</patient>
			</patientRole>
		</recordTarget>
		<!-- 检查报告医师（文档创作者） -->
		<author typeCode="AUT" contextControlCode="OP">
			<!-- 检查报告日期 -->
			<time value="20160913"/>
			<assignedAuthor classCode="ASSIGNED">
				<id root="2.16.156.10011.1.7" extension="-"/>
				<!-- 医师姓名 -->
				<assignedPerson>
					<name>无</name>
				</assignedPerson>
			</assignedAuthor>
		</author>
		<!-- 保管机构 -->
		<custodian typeCode="CST">
			<assignedCustodian classCode="ASSIGNED">
				<representedCustodianOrganization classCode="ORG" determinerCode="INSTANCE">
					<id root="2.16.156.10011.1.5" extension="0000000000"/>
					<name>北京大学第三医院</name>
				</representedCustodianOrganization>
			</assignedCustodian>
		</custodian>
		<!-- 审核医师签名 -->
		<legalAuthenticator>
			<time/>
			<signatureCode/>
			<assignedEntity>
				<id root="2.16.156.10011.1.4" extension="-"/>
				<code displayName="审核医师"/>
				<assignedPerson classCode="PSN" determinerCode="INSTANCE">
					<name>无</name>
				</assignedPerson>
			</assignedEntity>
		</legalAuthenticator>
		<!-- 检查技师签名 -->
		<authenticator>
			<time/>
			<signatureCode/>
			<assignedEntity>
				<id root="2.16.156.10011.1.4" extension="-"/>
				<code displayName="检查技师"/>
				<assignedPerson classCode="PSN" determinerCode="INSTANCE">
					<name>无</name>
				</assignedPerson>
			</assignedEntity>
		</authenticator>
		<!-- 检查医师签名 -->
		<authenticator>
			<time/>
			<signatureCode/>
			<assignedEntity>
				<id root="2.16.156.10011.1.4" extension="-"/>
				<code displayName="检查医师"/>
				<assignedPerson classCode="PSN" determinerCode="INSTANCE">
					<name>无</name>
				</assignedPerson>
			</assignedEntity>
		</authenticator>
		<!-- 检查申请机构及科室 -->
		<participant typeCode="PRF">
			<time/>
			<associatedEntity classCode="ASSIGNED">
				<scopingOrganization>
					<id root="2.16.156.10011.1.26" extension="-"/>
					<name>美容成形</name>
					<asOrganizationPartOf>
						<wholeOrganization>
							<id root="2.16.156.10011.1.5" extension="0000000000"/>
							<name>北京大学第三医院</name>
						</wholeOrganization>
					</asOrganizationPartOf>
				</scopingOrganization>
			</associatedEntity>
		</participant>
		<relatedDocument typeCode="RPLC">
			<parentDocument>
				<id/>
				<setId/>
				<versionNumber/>
			</parentDocument>
		</relatedDocument>
		<!-- 病床号、病房、病区、科室和医院的关联 -->
		<componentOf>
			<encompassingEncounter>
				<effectiveTime/>
				<location>
					<healthCareFacility>
						<serviceProviderOrganization>
							<asOrganizationPartOf classCode="PART">
								<!-- DE01.00.026.00病床号 -->
								<wholeOrganization classCode="ORG" determinerCode="INSTANCE">
									<id root="2.16.156.10011.1.22" extension="-"/>
									<!-- DE01.00.019.00病房号 -->
									<asOrganizationPartOf classCode="PART">
										<wholeOrganization classCode="ORG" determinerCode="INSTANCE">
											<id root="2.16.156.10011.1.21" extension="-"/>
											<!-- DE08.10.026.00科室名称 -->
											<asOrganizationPartOf classCode="PART">
												<wholeOrganization classCode="ORG" determinerCode="INSTANCE">
													<id root="2.16.156.10011.1.26" extension="1290000"/>
													<name>美容中心</name>
													<!-- DE08.10.054.00病区名称 -->
													<asOrganizationPartOf classCode="PART">
														<wholeOrganization classCode="ORG" determinerCode="INSTANCE">
															<id root="2.16.156.10011.1.27" extension="1290500"/>
															<name>美容科病房</name>
															<!--XXX医院 -->
															<asOrganizationPartOf classCode="PART">
																<wholeOrganization classCode="ORG" determinerCode="INSTANCE">
																	<id root="2.16.156.10011.1.5" extension="1234567890"/>
																	<name>北京大学第三医院</name>
																</wholeOrganization>
															</asOrganizationPartOf>
														</wholeOrganization>
													</asOrganizationPartOf>
												</wholeOrganization>
											</asOrganizationPartOf>
										</wholeOrganization>
									</asOrganizationPartOf>
								</wholeOrganization>
							</asOrganizationPartOf>
						</serviceProviderOrganization>
					</healthCareFacility>
				</location>
			</encompassingEncounter>
		</componentOf>
<!--***************************************************
文档体Body
*******************************************************
-->
		<component>
			<structuredBody>
				<xsl:comment>诊断记录章节</xsl:comment>
				<xsl:apply-templates select="Diagnoses" mode="D1"/>
				<xsl:comment>主诉章节</xsl:comment>
				<xsl:apply-templates select="Diagnoses" mode="Complaint"/>
				<xsl:comment>症状章节</xsl:comment>
				<xsl:apply-templates select="Diagnoses" mode="Problem"/>
				<xsl:comment>手术操作</xsl:comment>
				<xsl:apply-templates select="Diagnoses" mode="PhyE1"/>
				<xsl:comment>体格检查章节</xsl:comment>
				<xsl:apply-templates select="Diagnoses" mode="PhysicalExamination.xsl"/>
				<xsl:comment>其他处置章节</xsl:comment>
				<xsl:apply-templates select="Diagnoses" mode="2"/>
				<xsl:comment>检查报告章节</xsl:comment>
			</structuredBody>
		</component>
	</ClinicalDocument>
</xsl:stylesheet>
