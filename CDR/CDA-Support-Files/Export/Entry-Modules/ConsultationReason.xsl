<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<!--适用文档：住院病程，会诊记录-->
	<xsl:template match="ConsultationReason" mode="CRea">
		<!--会诊原因章节-->
		<component>
			<section>
				<code displayName="会诊原因"/>
				<text/>
				<!--会诊类型-->
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.319.00" displayName="会诊类型" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<!--会诊原因-->
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.039.00" displayName="会诊原因" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
</xsl:stylesheet>
