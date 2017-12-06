<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	
<!--适用文档  ：一般手术记录-->
	<xsl:template match="SurgicalDrains" mode="SD1">
		<component>
			<section>
				<code code="11537-8" displayName="Surgical drains" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<!--引流标志-->
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<!--引流标志-->
						<code code="DE05.10.165.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="引流标志"/>
						<value xsi:type="BL" value="xxx"/>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE08.50.044.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="引流材料名称"/>
								<value xsi:type="ST">xxx</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE08.50.045.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="引流材料数目"/>
								<value xsi:type="ST">xxx</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.341.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="放置部位"/>
								<value xsi:type="ST">xxx</value>
							</observation>
						</entryRelationship>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	
</xsl:stylesheet>
