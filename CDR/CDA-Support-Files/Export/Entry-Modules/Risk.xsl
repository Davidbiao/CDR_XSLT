<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<!--适用文档：手术知情同意书-->
	<xsl:template match="Risk" mode="Risk1">
		<!--风险章节-->
		<component>
			<section>
				<code displayName="操作风险"/>
				<text>xxxx</text>
				<!--手术中可能出现的意外-->
				<entry>
					<observation classCode="OBS" moodCode="DEF">
						<code code="DE05.10.162.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术中可能出现的意外及风险"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<!--手术后可能出现的意外-->
				<entry>
					<observation classCode="OBS" moodCode="DEF">
						<code code="DE05.01.075.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术后可能出现的意外以及风险"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--适用文档：麻醉知情同意书-->
	<xsl:template match="Risk" mode="Risk2">
		<!--风险章节-->
		<component>
			<section>
				<code displayName="操作风险"/>
				<text/>
				<!--麻醉中可能出现的意外-->
				<entry>
					<observation classCode="OBS" moodCode="DEF">
						<code code="DE05.01.075.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉中，麻醉后可能产发生的意外及并发症"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--适用文档：输血知情同意书-->
	<xsl:template match="Risk" mode="Risk3">
		<!--风险章节-->
		<component>
			<section>
				<code displayName="操作风险"/>
				<text/>
				<!--输血风险及可能发生的不良后果-->
				<entry>
					<observation classCode="OBS" moodCode="DEF">
						<code code="DE06.00.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血风险及可能发生的不良后果"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--适用文档：特殊检查及特殊治疗知情同意书-->
	<xsl:template match="Risk" mode="Risk4">
		<!--风险章节-->
		<component>
			<section>
				<code displayName="操作风险"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="DEF">
						<code code="DE05.01.075.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="特殊检查及特殊治疗可能引起的并发症及风险"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
</xsl:stylesheet>
