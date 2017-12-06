<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<!--适用文档：病历概要-->
	<xsl:template match="HealthEvents" mode="HEve">
		<!--卫生事件章节-->
		<component>
			<section>
				<code displayName="卫生事件"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE08.10.026.00" displayName="医疗机构科室名称" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE02.01.060.00" displayName="患者类型代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.1.271" codeSystemName="患者类型代码表"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE01.00.010.00" displayName="门（急）诊号" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE01.00.014.00" displayName="住院号" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<entry>
					<organizer classCode="BATTERY" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.092.00" displayName="入院日期" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="ST">xxxx</value>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.017.00" displayName="出院日期" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="ST">xxxx</value>
							</observation>
						</component>
					</organizer>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.01.018.00" displayName="发病日期时间" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="TS" value="xxxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.053.00" displayName="就诊原因" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<!--就诊日期时间 DE06.00.062.00-->
						<effectiveTime value="xxxx"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<!--条目诊断-->
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.01.024.00" displayName="西医诊断编码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录">
							<qualifier>
								<name displayName="西医诊断编码"/>
							</qualifier>
						</code>
						<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.10.113.00" displayName="病情转归代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="CD" code="xxxx" codeSystem="2.16.156.10011.2.3.1.148" codeSystemName="病情转归代码表" displayName="xxxx"/>
							</observation>
						</entryRelationship>
					</observation>
				</entry>
				<!--条目诊断-->
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.01.024.00" displayName="其他西医诊断编码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录">
							<qualifier>
								<name displayName="其他西医诊断编码"/>
							</qualifier>
						</code>
						<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.130.00" displayName="中医病名代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录">
							<qualifier>
								<name displayName="中医病名代码"/>
							</qualifier>
						</code>
						<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)"/>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.10.130.00" displayName="中医证候代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录">
									<qualifier>
										<name displayName="中医证候代码"/>
									</qualifier>
								</code>
								<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)"/>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.10.113.00" displayName="病情转归代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="CD" code="xxxx" codeSystem="2.16.156.10011.2.3.1.148" codeSystemName="病情转归代码表" displayName="xxxx"/>
							</observation>
						</entryRelationship>
					</observation>
				</entry>
				<entry>
					<procedure classCode="PROC" moodCode="EVN">
						<!-- DE06.00.093.00-->
						<code code="xxxx" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表（ICD-9-CM）"/>
					</procedure>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE08.50.022.00" displayName="关键药物名称" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="ST">xxxx</value>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.136.00" displayName="关键药物用法" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="ST">xxxx</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.129.00" displayName="药物不良反应情况" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="ST">xxxx</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.164.00" displayName="中药使用类别代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.1.157" codeSystemName="中药使用类别代码表"/>
							</observation>
						</entryRelationship>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.251.00" displayName="其他医学处置" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.01.021.00" displayName="根本死因代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE02.01.039.00" displayName="责任医师姓名" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="ST">xxxx</value>
					</observation>
				</entry>
				<!--费用条目-->
				<entry>
					<organizer classCode="CLUSTER" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE02.01.044.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医疗保险类别代码"/>
								<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.1.248" codeSystemName="医疗保险类别代码表"/>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE07.00.007.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医疗付费方式代码"/>
								<value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.1.269" codeSystemName="医疗付费方式代码表"/>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE07.00.004.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="门诊费用金额"/>
								<value xsi:type="MO" value="xxxx" currency="元"/>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE07.00.010.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="住院费用金额"/>
								<value xsi:type="MO" value="xxxx" currency="元"/>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE07.00.001.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="个人承担费用金额"/>
								<value xsi:type="MO" value="xxxx" currency="元"/>
							</observation>
						</component>
					</organizer>
				</entry>
			</section>
		</component>
	</xsl:template>
</xsl:stylesheet>
