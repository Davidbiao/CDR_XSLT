<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<!--适用文档：入院评估-->
	<xsl:template match="AdmissionInformation" mode="AInf">
		<!--入院信息章节-->
		<component>
			<section>
				<code displayName="入院信息"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<!--HDSD00.09.053 DE05.10.053.00 入院原因 -->
						<code code="DE05.10.053.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入院原因"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<!--HDSD00.09.052 DE06.00.339.00 入院途径代码 -->
						<code code="DE06.00.339.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入院途径代码"/>
						<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.1.270" codeSystemName="入院途径代码表"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.237.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入病房方式"/>
						<!--HDSD00.09.050 DE06.00.237.00 入病房方式 -->
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
</xsl:stylesheet>
