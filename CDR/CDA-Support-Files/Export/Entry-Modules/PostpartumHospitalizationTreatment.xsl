<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<!--适用文档  ：阴道分娩-->
	<xsl:template match="PostpartumHospitalizationTreatment" mode="Post1">
		<!-- 产后处置章节 -->
		<component>
			<section>
				<code code="57076-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="postpartum hospitalization treatment"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.007.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后诊断"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.218.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后观察日期时间"/>
						<value xsi:type="TS" value="xxxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.246.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后检查时间（min）"/>
						<value xsi:type="PQ" value="xxxx" unit="min"/>
					</observation>
				</entry>
				<entry>
					<organizer classCode="BATTERY" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE04.10.174.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="收缩压"/>
								<value xsi:type="PQ" value="xxxx" unit="mmHg"/>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE04.10.176.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="舒张压"/>
								<value xsi:type="PQ" value="xxxx" unit="mmHg"/>
							</observation>
						</component>
					</organizer>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.118.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后脉搏（次/min ）"/>
						<value xsi:type="PQ" value="xxxx" unit="次/min"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.206.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后心率（次/min ）"/>
						<value xsi:type="PQ" value="xxxx" unit="/次min"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.012.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后出血量（mL）"/>
						<value xsi:type="PQ" value="xxxx" unit="ml"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.245.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后宫缩"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.067.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后宫底高度（cm）"/>
						<value xsi:type="PQ" value="xxxx" unit="cm"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.240.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="肛查"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--适用文档  ：剖宫产-->
	<xsl:template match="PostpartumDisposal" mode="Post2">
		<!-- 产后处置章节 -->
		<component>
			<section>
				<code code="57076-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="postpartum hospitalization treatment"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.007.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后诊断"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.218.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后观察日期时间"/>
						<value xsi:type="TS" value="xxxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.246.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后检查时间（min）"/>
						<value xsi:type="PQ" value="xxxx" unit="min"/>
					</observation>
				</entry>
				<entry>
					<organizer classCode="BATTERY" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE04.10.174.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="收缩压"/>
								<value xsi:type="PQ" value="xxxx" unit="mmHg"/>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE04.10.176.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="舒张压"/>
								<value xsi:type="PQ" value="xxxx" unit="mmHg"/>
							</observation>
						</component>
					</organizer>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.118.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后脉搏（次/min ）"/>
						<value xsi:type="PQ" value="xxxx" unit="次/min"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.206.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后心率（次/min ）"/>
						<value xsi:type="PQ" value="xxxx" unit="/次min"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.012.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后出血量（mL）"/>
						<value xsi:type="PQ" value="xxxx" unit="ml"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.245.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后宫缩"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.067.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后宫底高度（cm）"/>
						<value xsi:type="PQ" value="xxxx" unit="cm"/>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
</xsl:stylesheet>
