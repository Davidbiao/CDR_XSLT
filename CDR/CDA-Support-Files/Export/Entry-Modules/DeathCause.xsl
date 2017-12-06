<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		<!--适用文档：死亡记录-->
		<xsl:template match="DeathCause" mode="DCau1">
			<!--死亡原因章节-->
			<component>
				<section>
					<code displayName="死亡原因章节"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE02.01.036.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡日期时间"/>
							<value xsi:type="TS" value="xxxx"/>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="直接死亡原因名称"/>
							<value xsi:type="ST">xxxx</value>
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="直接死亡原因编码"/>
									<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
								</observation>
							</entryRelationship>
						</observation>
					</entry>
				</section>
			</component>
		</xsl:template>
		<!--适用文档：死亡记录-->
		<xsl:template match="DeathCause" mode="DCau2">
			<!--死亡原因章节 -->
			<component>
				<section>
					<code displayName="死亡原因"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="直接死亡原因名称"/>
							<value xsi:type="ST">xxxx</value>
							<entryRelationship typeCode="CAUS">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE05.01.021.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="直接死亡原因编码"/>
									<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
								</observation>
							</entryRelationship>
						</observation>
					</entry>
				</section>
			</component>
		</xsl:template>
	</xsl:stylesheet>