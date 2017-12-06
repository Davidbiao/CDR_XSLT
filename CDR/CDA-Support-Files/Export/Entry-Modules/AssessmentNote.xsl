<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	
	
	<!--一般护理记录、危重（病危）护理记录-->
	<xsl:template match="AssessmentNote" mode="Assessment1">
		    <component>
				<section>
					<code code="51848-0" displayName="Assessment note" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE03.00.080.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="饮食情况代码"/>
							<value xsi:type="CD" code="1" displayName="良好" codeSystem="2.16.156.10011.2.3.2.34" codeSystemName="饮食情况代码表"/>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
	<!--出院评估与指导-->
	<xsl:template match="AssessmentNote" mode="Assessment2">
		    <component>
				<section>
					<code code="51848-0" displayName="Assessment note" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.122.00" displayName="自理能力代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<!--HDSD00.09.086 DE05.10.122.00 自理能力代码 -->
							<value xsi:type="CD" code="1" displayName="完全自理" codeSystem="2.16.156.10011.2.3.2.55" codeSystemName="自理能力代码表"/>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE03.00.080.00" displayName="饮食情况代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<!--HDSD00.09.077 DE03.00.080.00 饮食情况代码 -->
							<value xsi:type="CD" code="1" displayName="良好" codeSystem="2.16.156.10011.2.3.2.34" codeSystemName="饮食情况代码表"/>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
	<!--入院评估-->
	<xsl:template match="AssessmentNote" mode="Assessment3">
		<component>
				<section>
					<code code="51848-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Assessment note"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.001.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="Apgar评分值"/>
							<!--HDSD00.09.001 DE05.10.001.00 Apgar评分值-->
							<value xsi:type="INT" value="68"/>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="发育程度代码"/>
							<!--HDSD00.09.011 DE05.10.022.00 发育程度代码 -->
							<value xsi:type="CD" code="1" displayName="正力型" codeSystem="2.16.156.10011.2.3.2.53" codeSystemName="发育程度代码表"/>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.142.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="精神状态正常标志"/>
							<!--HDSD00.09.035 DE05.10.142.00 精神状态正常标志 -->
							<value xsi:type="BL" value="true"/>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.065.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="睡眠状况"/>
							<!--HDSD00.09.060 DE05.10.065.00 睡眠状况 -->
							<value xsi:type="ST">11</value>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.158.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="特殊情况"/>
							<!--HDSD00.09.061 DE05.10.158.00 特殊情况 -->
							<value xsi:type="ST">11</value>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.084.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="心理状态代码"/>
							<!--HDSD00.09.070 DE05.10.084.00 心理状态代码 -->
							<value xsi:type="CD" code="2" displayName="抑郁" codeSystem="2.16.156.10011.2.3.1.140" codeSystemName="心理状态代码表"/>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.097.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="营养状态代码"/>
							<!--HDSD00.09.079 DE05.10.097.00 营养状态代码 -->
							<value xsi:type="CD" code="1" displayName="良好" codeSystem="2.16.156.10011.2.3.2.54" codeSystemName="营养状态代码表"/>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.122.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="自理能力代码"/>
							<!--HDSD00.09.086 DE05.10.122.00 自理能力代码 -->
							<value xsi:type="CD" code="1" displayName="完全自理" codeSystem="2.16.156.10011.2.3.2.55" codeSystemName="自理能力代码表"/>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
    <!--上级医师查房记录-->
	<xsl:template match="AssessmentNote" mode="Assessment4">
		<component> 
        <section> 
          <code code="51848-0" displayName="Assessment note" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <!--条目：查房记录-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.181.00" displayName="查房记录" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>  
              <value xsi:type="ST">对患者查房结果和诊疗相关意见的详细描述</value> 
            </observation> 
          </entry> 
        </section> 
      </component>
	</xsl:template>
	
	<!--疑难病例讨论记录-->
	<xsl:template match="AssessmentNote" mode="Assessment5">
		<component>
				<section>
					<code code="51848-0" displayName="Assessment note" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="EVN ">
							<code code="DE06.00.018.00" displayName="讨论意见" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">2013-02-27 12:27　　　　　</value>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN ">
							<code code="DE06.00.018.00" displayName="主持人总结意见" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">主持人就疑难病症讨论过程总结意见的详细描述
</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
	<!--会诊记录-->
	<xsl:template match="AssessmentNote" mode="Assessment6">
		<component>
				<section>
					<code code="51848-0" displayName="Assessment note" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<entry>
						<!-- 病历摘要-->
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.182.00" displayName="病历摘要" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">对患者病情摘要的描述</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
</xsl:stylesheet>
