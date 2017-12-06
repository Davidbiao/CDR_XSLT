<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<!--适用文档：急诊留观病历-->
	<xsl:template match="SaveRecord" mode="SRec">
		<!-- 抢救记录章节 -->
		<component>
			<section>
				<code displayName="抢救记录章节"/>
				<text/>
				<!-- 急诊抢救记录 抢救开始日期时间 抢救结束日期时间 急诊抢救记录 -->
				<entry typeCode="COMP">
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.181.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="急诊抢救记录"/>
						<effectiveTime>
							<low value="xxxx"/>
							<high value="xxxx"/>
						</effectiveTime>
						<value xsi:type="ST">xxxx</value>
						<entryRelationship typeCode="COMP">
							<organizer classCode="CLUSTER" moodCode="EVN">
								<statusCode/>
								<!-- 参加抢救人员名单 -->
								<component>
									<observation classCode="OBS" moodCode="EVN">
										<code code="DE08.30.032.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="参加抢救人员名
单"/>
										<value xsi:type="ST">xxxx</value>
									</observation>
								</component>
								<!-- 专业技术职务类别代码 -->
								<component>
									<observation classCode="OBS" moodCode="EVN">
										<code code="DE08.30.031.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="专业技术职务类
别代码"/>
										<value xsi:type="CD" code="xxxx" codeSystem="2.16.156.10011.2.3.1.209" codeSystemName="专业技术职务类别代码表"/>
									</observation>
								</component>
							</organizer>
						</entryRelationship>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
</xsl:stylesheet>
