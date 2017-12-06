<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	
<!--适用文档  ：术前小结-->
	<xsl:template match="Precautions" mode="Precautions1">
		<component>
			<section>
				<code code="DE09.00.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName=" 卫生信息数据元目录" displayName="注意事项"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE09.00.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName=" "/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.254.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术要点"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.271.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术前准备"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	
<!--适用文档  ：术后首次病程记录-->
	<xsl:template match="Precautions" mode="Precautions2">
		<component>
			<section>
				<code code="DE09.00.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName=" 卫生信息数据元目录" displayName="注意事项章节"/>
				<text/>
			</section>
		</component>
	</xsl:template>
	
</xsl:stylesheet>
