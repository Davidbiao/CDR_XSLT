<?xml version="1.0" encoding="UTF-8"?>
<!-- Created with Liquid Studio 2017 - Developer Bundle Edition (Trial) 15.1.4.7515 (https://www.liquid-technologies.com) -->
<xsl:stylesheet version="1.0" xmlns="urn:hl7-org:v3" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:isc="http://extension-functions.intersystems.com" xmlns:exsl="http://exslt.org/common" xmlns:set="http://exslt.org/sets" exclude-result-prefixes="isc xsi sdtc exsl set">
        <xsl:include href="CDA-Support-Files/System/Templates/TemplateIdentifiers-HL7.xsl"/>
        <xsl:include href="CDA-Support-Files/System/OIDs/OIDs-InterSystems.xsl"/>
        <xsl:include href="CDA-Support-Files/System/OIDs/OIDs-Other.xsl"/>
        <xsl:include href="CDA-Support-Files/System/Common/Functions.xsl"/>
        <xsl:include href="CDA-Support-Files/Export/Common/Variables.xsl"/>
        <xsl:include href="CDA-Support-Files/Site/Variables.xsl"/>
        <xsl:include href="CDA-Support-Files/cnoid.xsl"/>
        <xsl:include href="CDA-Support-Files/Export/Entry-Modules/InformationSource.xsl"/>
        <xsl:include href="CDA-Support-Files/TemplateIdentifiers-CDA.xsl"/>

        <xsl:template match="/Patient">
                <ClinicalDocument xmlns="urn:hl7-org:v3" xmlns:mif="urn:hl7-org:v3/mif" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                        <!-- 地域代码， "CN" 代表中国 -->
                        <realmCode code="CN"/>
                        <!-- 下面两行为固定值 -->
                        <typeId root="2.16.840.1.113883.1.3" extension="POCD_HD000040"/>
                        <templateId root="{$T16}"/>
                        <!--文档流水号，由机器自动生成-->
                        <!--id root="{isc:evaluate('createUUID')}"-->
                        <id root="2.16.156.10011.1.1" extension="RN001"/>
                        <!-- 每个文档有各自的Code -->
                        <code code="C0016" codeSystem="2.16.156.10011.2.4" codeSystemName="卫生信息共享文档规范编码体系"/>
                        <title>剖宫产记录</title>
                        <!--文档机器生成时间-->
                        <!--effectiveTime value="{$currentDateTime}"/-->
                        <effectiveTime value="20121024154823"/>
                        <!-- 文档密级 -->
                        <!--xsl:apply-templates mode="document-confidentialityCode" select="."-->
                        <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" displayName="正常访问保密级别"/>
                        <languageCode code="zh-CN"/>
                        <!--可选项-->
                        <setId/>
                        <versionNumber/>

                        <!--PersonalInformation-->
                        <!-- the first two line give the same code in 53 documents -->
                        <recordTarget contextControlCode="OP" typeCode="RCT">
                                <patientRole classCode="PAT">
                                        <xsl:comment>住院号</xsl:comment>
                                        <id root="2.16.156.10011.1.2">
                                                <xsl:attribute name="extension">
                                                        <xsl:value-of select="/Patient/MPIID"/>
                                                </xsl:attribute>
                                        </id>
                                        <xsl:comment>患者基本信息</xsl:comment>
                                        <patient classCode="PSN" determinerCode="INSTANCE">
                                                <xsl:comment>身份证号</xsl:comment>
                                                <id root="2.16.156.10011.1.2">
                                                        <xsl:attribute name="extension">
                                                                <xsl:value-of select="/Patient/MPIID"/>
                                                        </xsl:attribute>
                                                </id>
                                                <!--姓名，必选-->
                                                <Name>
                                                        <xsl:variable name="contactFirstName" select="FirstName/text()"/>
                                                        <xsl:variable name="contactMiddleName" select="MiddleName/text()"/>
                                                        <xsl:variable name="contactLastName" select="LastName/text()"/>
                                                        <xsl:value-of select="concat($contactLastName,$contactFirstName)"/>
                                                </Name>
                                                <!--年龄，必选 -->
                                        </patient>
                                </patientRole>
                        </recordTarget>

                        <xsl:comment>手术者</xsl:comment>
                        <xsl:comment>麻醉医师</xsl:comment>
                        <xsl:comment>器械护士</xsl:comment>
                        <xsl:comment>护婴者</xsl:comment>
                        <xsl:comment>手术者</xsl:comment>
                        <xsl:comment>记录人</xsl:comment>

                        <xsl:comment>其他参与者</xsl:comment>
                        <xsl:apply-templates select="Patient" mode="nextOfKin"/>

                </ClinicalDocument>
        </xsl:template>



        <!-- confidentialityCode may be overriden by stylesheets that import this one -->
        <xsl:template mode="document-confidentialityCode" match="Container">
                <confidentialityCode nullFlavor="{$confidentialityNullFlavor}"/>
        </xsl:template>
        <xsl:template match="employerOrganization" mode="EmployerOrganization">
                <Name>
                        <xsl:value-of select="eName"/>
                </Name>
                <PhoneNumber>
                        <xsl:value-of select="ePhoneNumber"/>
                </PhoneNumber>
        </xsl:template>
        <xsl:template match="*" mode="id-Patient">
                <xsl:variable name="assigningAuthority">
                        <xsl:choose>
                                <xsl:when test="MPIID">
                                        <xsl:value-of select="$健康档案编号标识"/>
                                </xsl:when>
                                <xsl:when test="HealthCardNumber">
                                        <xsl:value-of select="$健康卡号标识"/>
                                </xsl:when>
                        </xsl:choose>
                </xsl:variable>
                <xsl:variable name="patientIdentifier">
                        <xsl:choose>
                                <xsl:when test="MPIID">
                                        <xsl:value-of select="MPIID/text()"/>
                                </xsl:when>
                                <xsl:otherwise>
                                        <xsl:value-of select="PatientNumbers/PatientNumber[NumberType/text() = 'MRN'][1]/Number/text()"/>
                                </xsl:otherwise>
                        </xsl:choose>
                </xsl:variable>
                <!-- The presence of a comma (,) indicates that multiple MPIIDs are being reported for the patient.  In this case, we "mask" the IDs since we can't report a single one. -->
                <xsl:choose>
                        <xsl:when test="contains($patientIdentifier, ',')">
                                <id nullFlavor="MSK"/>
                        </xsl:when>
                        <xsl:when test="not(string-length($assigningAuthority) and string-length($patientIdentifier))">
                                <id nullFlavor="UNK"/>
                        </xsl:when>
                        <xsl:when test="string-length($assigningAuthority) and string-length($patientIdentifier)">
                                <id root="{$assigningAuthority}" extension="{$patientIdentifier}">
                                </id>
                        </xsl:when>
                        <xsl:otherwise>
                                <id nullFlavor="NI"/>
                        </xsl:otherwise>
                </xsl:choose>
        </xsl:template>
        <xsl:template match="BirthTime" mode="birthTime">
                <birthTime>
                        <xsl:attribute name="value">
                                <xsl:apply-templates select="." mode="xmlToHL7TimeStamp"/>
                        </xsl:attribute>
                </birthTime>
        </xsl:template>
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
        <xsl:template match="Addresses" mode="person-addresses">
                <xsl:for-each select="/Patient/Addresses">
                        <xsl:apply-templates select="Address" mode="address-Individual"/>
                </xsl:for-each>
        </xsl:template>
        <xsl:template match="*" mode="address-Individual">
                <Province>
                        <xsl:value-of select="/Patient/Addresses/Address/Province"/>
                </Province>
                <city>
                        <xsl:value-of select="/Patient/Addresses/Address/City"/>
                </city>
        </xsl:template>
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
        <xsl:template match="*" mode="code-administrativeGender">
                <xsl:variable name="genderCode">
                        <xsl:choose>
                                <xsl:when test="starts-with(Gender/Code/text(),'0')">0</xsl:when>
                                <xsl:when test="starts-with(Gender/Code/text(),'1')">1</xsl:when>
                                <xsl:when test="starts-with(Gender/Code/text(),'2')">2</xsl:when>
                                <xsl:otherwise>9</xsl:otherwise>
                        </xsl:choose>
                </xsl:variable>
                <xsl:variable name="genderDescription">
                        <xsl:choose>
                                <xsl:when test="starts-with(Gender/Code/text(),'0')">未知</xsl:when>
                                <xsl:when test="starts-with(Gender/Code/text(),'1')">男</xsl:when>
                                <xsl:when test="starts-with(Gender/Code/text(),'1')">女</xsl:when>
                                <xsl:otherwise>未说明</xsl:otherwise>
                        </xsl:choose>
                </xsl:variable>
                <!-- administrativeGenderCode does not allow for <translation>. -->
                <administrativeGenderCode code="{$genderCode}" codeSystemName="{$生理性别代码表}" displayName="$genderDescription"/>
        </xsl:template>
        <xsl:template match="MaritalStatus" mode="code-maritalStatus">
                <xsl:variable name="MaritalCode">
                        <xsl:value-of select="Code"/>
                </xsl:variable>
                <xsl:variable name="Maritaldisplay">
                        <xsl:value-of select="Description"/>
                </xsl:variable>
                <maritalStatusCode code="{$MaritalCode}" codeSystem="{$婚姻状况代码表}" displayName="婚姻状况代码表(GB/T 2261.2)"/>
        </xsl:template>
        <xsl:variable name="健康档案编号标识">2.16.156.10011.1.2</xsl:variable>
        <xsl:variable name="健康卡号标识">2.16.156.10011.1.19</xsl:variable>
        <xsl:variable name="处方编号标识">2.16.156.10011.1.20</xsl:variable>
        <xsl:variable name="addrNullFlavor" select="'UNK'"/>
        <xsl:variable name="confidentialityNullFlavor" select="'NI'"/>
</xsl:stylesheet>