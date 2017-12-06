<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns="urn:hl7-org:v3" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:isc="http://extension-functions.intersystems.com" xmlns:exsl="http://exslt.org/common" xmlns:set="http://exslt.org/sets" exclude-result-prefixes="isc sdtc exsl set">
	<xsl:include href="../Common/oeid.xsl"/>
	<xsl:include href="Diagnosis.xsl"/>
	<!-- 如果上面定义了default namespace,一定会加上去， 为什么，有没有办法去掉？-->
	<xsl:template match="/Encounter" mode="EncounterSummary">
		<!--卫生事件章节-->
		<component>
			<section>
				<code displayName="卫生事件"/>
				<text/>
				<xsl:apply-templates select="AdmissionLocation">
					<xsl:with-param name="codename" select="$科室名称"/>
					<xsl:with-param name="displayname" select="'科室名称'"/>
				</xsl:apply-templates>
				<xsl:apply-templates select="Type" mode="PatientType">
					<xsl:with-param name="codename" select="$患者类型"/>
					<xsl:with-param name="displayname" select="'患者类型代码'"/>
				</xsl:apply-templates>
				<!--门急诊号1..1-->
				<xsl:apply-templates select="PatientNo">
					<xsl:with-param name="codename" select="$门诊号"/>
					<xsl:with-param name="displayname" select="'门急诊号'"/>
				</xsl:apply-templates>
				<!--住院号0..1R2-->
				<xsl:apply-templates select="PatientNo">
					<xsl:with-param name="codename" select="$住院号"/>
					<xsl:with-param name="displayname" select="'住院号'"/>
				</xsl:apply-templates>
				<!--出入院日期时间0..1R2-->
				<xsl:call-template name="ADTTime"/>
				<!--发病日期时间0..1R2-->
				<TBD/>
				<!--就诊原因0..1R2-->
				<xsl:apply-templates select="AdmitReason">
					<xsl:with-param name="codename" select="$入院原因"/>
					<xsl:with-param name="displayname" select="'就诊原因'"/>
				</xsl:apply-templates>
				<!--西医诊断编码1..*R, 而且一定要病情转归，如果需要只显示主要诊断，再加过滤条件-->
				<xsl:comment>西医诊断编码</xsl:comment>
				<xsl:apply-templates select="Diagnoses/Diagnosis[IsPrimary='true']" mode="DiagnosisMode1"/>
				<!--其他西医诊断编码0..1*R2，不知道什么是其他，先空着-->
				<xsl:comment>其他西医诊断编码</xsl:comment>
				<!--中医病名代码0..*O-->
				<中医条目名字/>
				<!--手术操作0..*R2-->
				<xsl:comment>手术操作</xsl:comment>
				<xsl:apply-templates select="Procedures" mode="Procedure"/>
				<!--关键药物0..*R2-->
				<xsl:comment>关键药物</xsl:comment>
				<!--其他处置1..1R-->
				<!--TBD什么是其他处置/-->
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.251.00" displayName="其他医学处置" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="ST">其他医学处置</value>
					</observation>
				</entry>
				<!--根本死因0..1R2-->
				<xsl:comment>根本死因</xsl:comment>
				<xsl:apply-templates select="DeathReason">
					<xsl:with-param name="codename" select="$根本死因代码"/>
					<xsl:with-param name="displayname" select="'根本死因代码'"/>
				</xsl:apply-templates>
				<!--病情转归0..1R2-->
				<xsl:comment>病情转归</xsl:comment>
				<TBD诊断里面有病情转归了为什么这里又有/>
				<!--责任医师1..1R-->
				<xsl:comment>责任医师</xsl:comment>
				<xsl:apply-templates select="AdmittingClinician">
					<xsl:with-param name="codename" select="$姓名"/>
					<xsl:with-param name="displayname" select="'责任医师姓名'"/>
				</xsl:apply-templates>
				<!--费用条目1..1R-->
				<xsl:comment>费用条目</xsl:comment>
				<entry>
					<organizer classCode="CLUSTER" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE02.01.044.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医疗保险类别代码"/>
								<value xsi:type="CD" code="{Bill/InsuranceType/Code}" displayName="{Bill/InsuranceType/Name}" codeSystem="2.16.156.10011.2.3.1.248" codeSystemName="医疗保险类别代码表"/>
							</observation>
						</component>PaymentType
							<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE07.00.007.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医疗付费方式代码"/>
								<value xsi:type="CD" code="{Bill/PaymentType/Code}" displayName="{Bill/PaymentType/Name}" codeSystem="2.16.156.10011.2.3.1.269" codeSystemName="医疗付费方式代码表"/>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE07.00.004.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门诊费用金额"/>
								<value xsi:type="MO" value="{Bill/TotalAmount}" currency="元"/>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE07.00.010.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="住院费用金额"/>
								<value xsi:type="MO" value="{Bill/TotalAmount}" currency="元"/>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE07.00.001.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="个人承担费用金额"/>
								<value xsi:type="MO" value="{Bill/PayByPatient}" currency="元"/>
							</observation>
						</component>
					</organizer>
				</entry>
			</section>
		</component>
	</xsl:template>
	<xsl:template match="AdmissionLocation|Type|PatientNo|InOuttime|AdmitReason|AdmittingClinician|DeathReason">
		<xsl:param name="codename"/>
		<xsl:param name="displayname"/>
		<entry>
			<observation classCode="OBS" moodCode="EVN">
				<code code="{$codename}" displayName="{$displayname}" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
				<value>
					<xsl:value-of select="."/>
				</value>
			</observation>
		</entry>
	</xsl:template>
	<!--患者类型代码-->
	<xsl:template match="AdmissionType">
		<xsl:param name="codename"/>
		<xsl:param name="displayname"/>
		<entry>
			<observation classCode="OBS" moodCode="EVN">
				<code code="{$codename}" displayName="{$displayname}" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
				<value xsi:type="CD" code="1" displayName="门诊" codeSystem="2.16.156.10011.2.3.1.271" codeSystemName="患者类型代码表">
					<xsl:attribute name="code"><xsl:value-of select="Code"/></xsl:attribute>
					<xsl:attribute name="displayName"><xsl:value-of select="Name"/></xsl:attribute>
				</value>
			</observation>
		</entry>
	</xsl:template>
	<xsl:template name="ADTTime">
		<!-- this part of code doesnt work, why?
		<xsl:variable name="in">
			<xsl:value-of select="Patient/Encounters/Encounter/AdmissionTime"/>
			</xsl:variable-->
		<xsl:comment>出入院日期</xsl:comment>
		<xsl:variable name="in" select="AdmissionTime"/>
		<xsl:variable name="out" select="DischargeTime"/>
		<entry>
			<organizer classCode="BATTERY" moodCode="EVN">
				<statusCode/>
				<component>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.092.00" displayName="入院日期" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<!--value>"{$in}"</value   does not work-->
						<value>
							<xsl:value-of select="$in"/>
						</value>
					</observation>
				</component>
				<component>
					<observation classCode="OBS" moodCode="EVN">
						<xsl:variable name="local2" select="DischargeTime"/>
						<code code="DE06.00.017.00" displayName="出院日期" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value>
							<xsl:value-of select="$out"/>
						</value>
					</observation>
				</component>
			</organizer>
		</entry>
	</xsl:template>
	<!--手术操作-->
	<xsl:template match="Procedure" mode="Procedure">
		<xsl:comment>手术操作</xsl:comment>
		<entry>
			<procedure classCode="PROC" moodCode="EVN">
				<xsl:variable name="local" select="ProcedureCode"/>
				<code code="{local}" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表（ICD-9-CM）"/>
			</procedure>
		</entry>
	</xsl:template>
	<!--诊断条目-->
	
</xsl:stylesheet>
