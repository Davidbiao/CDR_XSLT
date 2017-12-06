<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<!-- Mode1: 卫计委西医诊断名字+ICD10疾病编码+病情转归，用于:病例概要 -->
	<xsl:template match="*" mode="DiagnosisMode1">
		<text/>
		<entry>
			<observation classCode="OBS" moodCode="EVN">
				<code code="DE05.01.024.00" displayName="西医诊断编码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录">
					<qualifier>
						<name displayName="西医诊断编码"/>
					</qualifier>
				</code>
				<value type="CD" code="{DiagnosisCode/Code}" displayName="{DiagnosisCode/Name}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
				<!--病情转归-->
				<entryRelationship typeCode="COMP">
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.113.00" displayName="病情转归代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="CD" codeSystem="2.16.156.10011.2.3.1.148" codeSystemName="病情转归代码表">
							<xsl:attribute name="code">
								<xsl:value-of select="Outcome/Code"/>
							</xsl:attribute>
							<xsl:attribute name="displayName">
								<xsl:value-of select="Outcome/Name"/>
							</xsl:attribute>
						</value>
					</observation>
				</entryRelationship>
			</observation>
		</entry>
	</xsl:template>
	<!--Mode2: 诊断编码条目诊断条目 for Prescription-->
	<xsl:template match="*" mode="DiagnosisMode2">
		<entry>
			<observation classCode="OBS" moodCode="EVN">
				<!--术前诊断编码-->
				<code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊断编码"/>
				<value xsi:type="CD" code="{DiagnosisCode/Code}" displayName="{DiagnosisCode/Name}" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
			</observation>
		</entry>
	</xsl:template>
	<!--Mode3: -->
	<xsl:template match="*" mode="DiagnosisMode3">
		<section>
			<entry>
				<observation classCode="OBS" moodCode="EVN">
					<code code="DE05.01.024.00" displayName="诊断代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
					<!--诊断日期-->
					<effectiveTime value="00000000"/>
					<value xsi:type="CD" code="B95.100" displayName="B族链球菌感染" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
					<performer>
						<assignedEntity>
							<id/>
							<representedOrganization>
								<name>北京大学第三医院</name>
							</representedOrganization>
						</assignedEntity>
					</performer>
				</observation>
			</entry>
		</section>
	</xsl:template>

	<xsl:template match="*" mode="GeneralDiagnosisEntry">
		<section>
			<code code="29548-5" displayName="西医诊断编码" codeSystem="2.16.840.1.11883.6.1" codeSystemName="LOINC"/>
			<text/>
			<entry>
				<observation classCode="OBS" moodCode="EVN">
					<code code="DE05.01.024.00" displayName="诊断代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
					<value xsi:type="CD" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="病情转归代码表">
						<xsl:attribute name="code">
							<xsl:value-of select="DiagnosisStatusCode/Code"/>
						</xsl:attribute>
						<xsl:attribute name="displayName">
							<xsl:value-of select="DiagnosisStatusCode/Name"/>
						</xsl:attribute>
					</value>
				</observation>
			</entry>
		</section>
	</xsl:template>
	<!-- Mode2: -->
	<xsl:template match="*" mode="D1">
		<entry>
			<observation classCode="OBS" moodCode="EVN">
				<!--术前诊断编码-->
				<code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术前诊断编码"/>
				<value xsi:type="CD" code="hCode" displayName="/patient/sos/sdof" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
			</observation>
		</entry>
	</xsl:template>
	<!-- Mode3: 中医四诊-->
	<xsl:template name="Chinese4OBSEntry">
		<entry>
			<observation classCode="OBS" moodCode="EVN">
				<code code="DE02.10.028.00" displayName="中医“四诊”观察结果" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
				<value xsi:type="ST">观察结果描述</value>
			</observation>
		</entry>
	</xsl:template>
	<xsl:template name="ChineseMedicine"/>
	<!--适用文档  ：治疗记录
				：	一般手术记录
	-->
	<xsl:template match="Diagnosis" mode="Diag1">
		<component>
			<section>
				<code code="10219-4" displayName="Surgical operation note preoperative Dx" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<!--术前诊断-->
				<xsl:apply-templates select="'tbd'" mode="DiagnosisEntry"/>
			</section>
		</component>
	</xsl:template>
	<!--适用文档  :门急诊病历
				
	-->
	<xsl:template match="Diagnosis" mode="Diag2">
		<component>
			<section>
				<code code="29548-5" displayName="Diagnosis" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<!--初诊标志代码-->
				<xsl:apply-templates select="*" mode="DiagnosisEntry"/>
				<!--中医“四诊”观察结果-->
				<xsl:apply-templates select="' '" mode="Chinese4OBSEntry"/>
				<!--条目：诊断-->
				<entry>
					<organizer classCode="CLUSTER" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.01.025.00" displayName="诊断名称" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="ST">先天性心脏病</value>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.01.024.00" displayName="诊断代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="CD" code="B95.100" displayName="B族链球菌感染" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
							</observation>
						</component>
					</organizer>
				</entry>
				<xsl:call-template name="ChineseMedicine"/>
			</section>
		</component>
	</xsl:template>
	<!--中医住院病案首页-->
	<xsl:template match="Diagnosis" mode="Diag3">
		<component>
			<section>
				<code code="29548-5" displayName="Diagnosis" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<!--门（急）诊诊断-中医诊断条目-->
				<entry>
					<organizer classCode="CLUSTER" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断（中医诊断）名称">
									<qualifier>
										<name displayName="中医诊断名称"/>
									</qualifier>
								</code>
								<value xsi:type="ST">骨蚀病*</value>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断（中医诊断）病名编码 ">
									<qualifier>
										<name displayName="中医诊断代码"/>
									</qualifier>
								</code>
								<value xsi:type="CD" code="BEA" displayName="儿科癌病类" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)"/>
							</observation>
						</component>
					</organizer>
				</entry>
				<!--门（急）诊诊断-中医诊断症候条目-->
				<entry>
					<organizer classCode="CLUSTER" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断（中医证候）名称">
									<qualifier>
										<name displayName="中医证候名称"/>
									</qualifier>
								</code>
								<value xsi:type="ST">呕吐病</value>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断（中医证候）证候编码 ">
									<qualifier>
										<name displayName="中医证候代码"/>
									</qualifier>
								</code>
								<value xsi:type="CD" code="BNP050" displayName="呕吐病" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)"/>
							</observation>
						</component>
					</organizer>
				</entry>
				<!--门（急）诊诊断-西医诊断条目-->
				<entry>
					<organizer classCode="CLUSTER" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断（西医诊断）名称">
									<qualifier>
										<name displayName="西医诊断名称"/>
									</qualifier>
								</code>
								<value xsi:type="ST">急性阑尾炎伴腹膜炎</value>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门（急）诊诊断（西医诊断）疾病编码 ">
									<qualifier>
										<name displayName="西医诊断代码"/>
									</qualifier>
								</code>
								<value xsi:type="CD" code="B95.100" displayName="B族链球菌感染" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
							</observation>
						</component>
					</organizer>
				</entry>
				<!--病理诊断-疾病名称-->
				<entry>
					<organizer classCode="CLUSTER" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<!-- 病理号标识 -->
								<id root="2.16.156.10011.1.8" extension="PA345677"/>
								<code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病理诊断名称">
									<qualifier>
										<name displayName="病理诊断名称"/>
									</qualifier>
								</code>
								<value xsi:type="ST">沙门菌肠炎</value>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病理诊断编码">
									<qualifier>
										<name displayName="病理诊断代码"/>
									</qualifier>
								</code>
								<value xsi:type="CD" code="A02.000" displayName="沙门菌肠炎" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
							</observation>
						</component>
					</organizer>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--mode5: 中医病名症候群-->
	<xsl:template match="Diagnosis" mode="ChineseMedicine">
		<entry>
			<organizer classCode="CLUSTER" moodCode="EVN">
				<statusCode/>
				<component>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.172.00" displayName="中医病名名称" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录">
							<qualifier>
								<name displayName="中医病名名称"/>
							</qualifier>
						</code>
						<value xsi:type="ST">中医病名名称</value>
					</observation>
				</component>
				<component>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.130.00" displayName="中医病名代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录">
							<qualifier>
								<name displayName="中医病名代码"/>
							</qualifier>
						</code>
						<value xsi:type="CD" code="BEA" displayName="儿科癌病类" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表(GB/T 15657)"/>
					</observation>
				</component>
			</organizer>
		</entry>
		<entry>
			<organizer classCode="CLUSTER" moodCode="EVN">
				<statusCode/>
				<component>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.172.00" displayName="中医证候名称" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录">
							<qualifier>
								<name displayName="中医证候名称"/>
							</qualifier>
						</code>
						<value xsi:type="ST">中医证候名称</value>
					</observation>
				</component>
				<component>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.130.00" displayName="中医证候代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录">
							<qualifier>
								<name displayName="中医证候代码"/>
							</qualifier>
						</code>
						<value xsi:type="CD" code="BNP050" displayName="呕吐病" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)"/>
					</observation>
				</component>
			</organizer>
		</entry>
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

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