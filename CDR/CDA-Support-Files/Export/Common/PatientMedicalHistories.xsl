<?xml version="1.0" encoding="UTF-8"?>
<!-- Created with Liquid Studio 2017 - Developer Bundle Edition (Trial) 15.1.4.7515 (https://www.liquid-technologies.com) -->
<xsl:stylesheet version="1.0" xmlns="urn:hl7-org:v3" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:isc="http://extension-functions.intersystems.com" xmlns:exsl="http://exslt.org/common" xmlns:set="http://exslt.org/sets" exclude-result-prefixes="isc xsi sdtc exsl set">
	<!--实验室检验章节-->
	<xsl:template match="*" mode="Blood">
		<component>
			<section>
				<code code="30954-2" displayName="STUDIES SUMMARY" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<!--血型条目1..1-->
				<entry typeCode="COMP">
					<organizer classCode="BATTERY" moodCode="EVN">
						<statusCode/>
						<!--ABO血型-->
						<component typeCode="COMP" contextConductionInd="true">
							<xsl:variable name="code" select="BloodABO"/>
							<xsl:variable name="display">
								<xsl:choose>
									<xsl:when test="$code = 1">A型</xsl:when>
									<xsl:when test="$code = 2">B型</xsl:when>
									<xsl:when test="$code = 2">O型</xsl:when>
									<xsl:when test="$code = 2">AB型</xsl:when>
									<xsl:otherwise>未知</xsl:otherwise>
								</xsl:choose>
							</xsl:variable>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE04.50.001.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="CD" code="{$code}" codeSystem="2.16.156.10011.2.3.1.85" codeSystemName="ABO血型代码表" displayName="{$display}"/>
							</observation>
						</component>
						<!--Rh血型-->
						<component typeCode="COMP" contextConductionInd="true">
							<xsl:variable name="code" select="BloodRH"/>
							<xsl:variable name="display">
								<xsl:choose>
									<xsl:when test="$code = 1">阴性</xsl:when>
									<xsl:when test="$code = 2">阳性</xsl:when>
									<xsl:otherwise>未知</xsl:otherwise>
								</xsl:choose>
							</xsl:variable>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE04.50.010.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="CD" code="{$code}" codeSystem="2.16.156.10011.2.3.1.250" codeSystemName="Rh(D)血型代码表" displayName="{$display}"/>
							</observation>
						</component>
					</organizer>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--既往史章节-->
	<!--下面的DE Code的赋值很傻，应该有更好的办法，通过得到的值，直接找variable, TBC -->
	<xsl:template match="*" mode="IllnessHistories">
		<component>
			<section>
				<code code="11348-0" displayName="HISTORY OF PAST ILLNESS" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<xsl:for-each select="IllnessHistory">
					<xsl:variable name="displayname" select="Type"/>
					<xsl:variable name="codename">
						<xsl:choose>
							<xsl:when test="$displayname = '疾病史'">DE02.10.026.00</xsl:when>
							<xsl:when test="$displayname = '手术史'">DE02.10.061.00</xsl:when>
							<xsl:when test="$displayname = '传染病史'">DE02.10.008.00</xsl:when>
							<xsl:when test="$displayname = '婚育史'">DE02.10.098.00</xsl:when>
							<xsl:otherwise>未知</xsl:otherwise>
						</xsl:choose>
					</xsl:variable>
					<xsl:apply-templates select="." mode="entries">
						<xsl:with-param name="tcodename" select="$displayname"/>
						<xsl:with-param name="tdisplayname" select="$codename"/>
						<xsl:with-param name="tvalue" select="NoteText"/>
					</xsl:apply-templates>
				</xsl:for-each>
			</section>
		</component>
	</xsl:template>
	<!--过敏史章节-->
	<xsl:template match="*" mode="Allergies">
		<component>
			<section>
				<code code="48765-2" displayName="Allergies, adverse reactions, alerts" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<xsl:apply-templates select="." mode="entries">
					<xsl:with-param name="tcodename" select="'DE02.10.022.00'"/>
					<xsl:with-param name="tdisplayname" select="'过敏史'"/>
					<xsl:with-param name="tvalue" select="Allergy/FreeTextAllergy"/>
				</xsl:apply-templates>
			</section>
		</component>
	</xsl:template>
	<!--预防接种史章节-->
	<xsl:template match="*" mode="Immunizations">
		<component>
			<section>
				<code code="11369-6" codeSystem="2.16.840.1.113883.6.1" displayName="HISTORYOF IMMUNIZATIONS" codeSystemName="LOINC"/>
				<text/>
				<xsl:apply-templates select="." mode="entries">
					<xsl:with-param name="tcodename" select="'DE02.10.101.00'"/>
					<xsl:with-param name="tdisplayname" select="'预防接种史'"/>
					<xsl:with-param name="tvalue" select="Immunization/VaccineType"/>
				</xsl:apply-templates>
			</section>
		</component>
	</xsl:template>
	<!--各种历史条目模板, 所有使用NoteText的地方-->
	<xsl:template match="*" mode="entries">
		<xsl:param name="tcodename"/>
		<xsl:param name="tdisplayname"/>
		<xsl:param name="tvalue"/>
		<entry>
			<observation classCode="OBS" moodCode="EVN">
				<code code="{$tcodename}" displayName="{$tdisplayname}" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
				<value xsi:type="ST">
					<xsl:value-of select="$tvalue"/>
				</value>
			</observation>
		</entry>
	</xsl:template>
	<!--输血章节-->
	<xsl:template match="*" mode="BloodTransfusionHistory">
		<component>
			<section>
				<code code="56836-0" displayName="History of blood transfusion" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<xsl:apply-templates select="." mode="entries">
					<xsl:with-param name="tcodename" select="'DE02.10.100.00'"/>
					<xsl:with-param name="tdisplayname" select="'输血史'"/>
					<xsl:with-param name="tvalue" select="BloodTransfusionHistory"/>
				</xsl:apply-templates>
			</section>
		</component>
	</xsl:template>
	<!--个人史章节-->
	<xsl:template match="*" mode="SocialHistories">
		<component>
			<section>
				<code code="29762-2" displayName="Social history" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<xsl:apply-templates select="." mode="entries">
					<xsl:with-param name="tcodename" select="'DE02.10.097.00'"/>
					<xsl:with-param name="tdisplayname" select="'个人史'"/>
					<xsl:with-param name="tvalue" select="SocialHistory/SocialHabitComments"/>
				</xsl:apply-templates>
			</section>
		</component>
	</xsl:template>
	<!--月经史章节-->
	<xsl:template match="*" mode="MenstrualHistory">
		<component>
			<section>
				<code code="49033-4" displayName="Menstrual History" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<xsl:apply-templates select="." mode="entries">
					<xsl:with-param name="tcodename" select="'DE02.10.102.00'"/>
					<xsl:with-param name="tdisplayname" select="'月经史'"/>
					<xsl:with-param name="tvalue" select="MenstrualHistory"/>
				</xsl:apply-templates>
			</section>
		</component>
	</xsl:template>
	<!--家族史-->
	<xsl:template match="*" mode="FamilyHistories">
		<component>
			<section>
				<code code="10157-6" displayName="HISTORY OF FAMILY MEMBER DISEASES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<xsl:apply-templates select="." mode="entries">
					<xsl:with-param name="tcodename" select="'DE02.10.103.00'"/>
					<xsl:with-param name="tdisplayname" select="'家族史'"/>
					<xsl:with-param name="tvalue" select="FamilyHistory/NoteText"/>
				</xsl:apply-templates>
			</section>
		</component>
	</xsl:template>
</xsl:stylesheet>
