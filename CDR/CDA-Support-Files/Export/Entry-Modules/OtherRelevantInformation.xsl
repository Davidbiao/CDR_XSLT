<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<!--适用文档：急诊留观病历-->
	<xsl:template match="OtherRelevantInformation" mode="ORIn">
		<!-- 其他相关信息章节 -->
		<component>
			<section>
				<code displayName="其他相关信息"/>
				<text/>
				<!-- 注意事项 -->
				<entry typeCode="COMP">
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE09.00.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="注意事项"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<!-- 患者去向代码 -->
				<entry typeCode="COMP">
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.185.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="患者去向代码"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
</xsl:stylesheet>
