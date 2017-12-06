<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<!--适用文档 阴道分娩 剖宫产-->
	<xsl:template match="DeliveryEvaluation" mode="Deli">
		<!-- 分娩评估章节 -->
		<component>
			<section>
				<code code="51848-0" displayName="Assessment note" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.215.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="Apgar评分间隔时间代码 "/>
						<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.2.48" codeSystemName="Apgar评分间隔时间代码表"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.001.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="Apgar评分值"/>
						<value xsi:type="INT" value="xxxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.026.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="分娩结局代码"/>
						<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.2.49" codeSystemName="分娩结局代码表"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.160.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="新生儿异常情况代码"/>
						<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.1.254" codeSystemName="新生儿异常情况代码表"/>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
</xsl:stylesheet>
