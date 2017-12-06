<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	
	<!--一般护理记录、护理计划-->
	<xsl:template match="Instructions" mode="Instr1">
		    <component>
				<section>
					<code code="69730-0" codeSystem="2.16.840.1.113883.6.1" displayName="Instructions" codeSystemName="LOINC"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.291.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="饮食指导代码"/>
							<value xsi:type="CD" code="01" displayName="普通饮食" codeSystem="2.16.156.10011.2.3.1.263" codeSystemName="饮食指导代码表"/>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
	<!--出院评估与指导-->
	<xsl:template match="Instructions" mode="Instr2">
		    <component>
				<section>
					<code code="69730-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Instructions"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.291.00" displayName="饮食指导代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<!--HDSD00.09.077 DE03.00.080.00 饮食情况代码 -->
							<value xsi:type="CD" code="01" displayName="普通饮食" codeSystem="2.16.156.10011.2.3.1.263" codeSystemName="饮食指导代码表"/>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.238.00" displayName="生活方式指导" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<!--HDSD00.09.055 DE06.00.238.00 生活方式指导 -->
							<value xsi:type="ST">生活方式指导</value>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.124.00" displayName="宣教内容" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<!--HDSD00.09.072 DE06.00.124.00 宣教内容 -->
							<value xsi:type="ST">宣教内容描述</value>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.299.00" displayName="复诊指导" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<!--HDSD00.09.012 DE06.00.299.00 复诊指导 -->
							<value xsi:type="ST">复诊指导描述</value>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.136.00" displayName="用药指导" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<!--HDSD00.09.080 DE06.00.136.00 用药指导 -->
							<value xsi:type="ST">用药指导描述</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
	
	
</xsl:stylesheet>
