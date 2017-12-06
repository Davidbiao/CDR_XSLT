<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!--急诊留观病历，手术操作-->	
<xsl:template match="SurgicalOperation  " mode="SurOp1">
		<component>
			<section>
				<code code="47519-4" displayName="HISTORY OF PROCEDURES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<!-- 1..1 手术记录 -->
					<procedure classCode="PROC" moodCode="EVN">
						<code code="84.51004" displayName="金属脊椎融合物置入术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)"/>
						<statusCode/>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术（操作）名称"/>
								<value xsi:type="ST">名称描述</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.093.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术及操作目标部位名称"/>
								<value xsi:type="ST">手术及操作目标部位名称</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE08.50.037.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="介入物名称"/>
								<value xsi:type="ST">介入物名称</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.251.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作方法描述"/>
								<value xsi:type="ST">操作方法描述</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.250.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作次数"/>
								<value xsi:type="ST">1</value>
							</observation>
						</entryRelationship>
					</procedure>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--检查报告，手术操作-->	
	<xsl:template match="SurgicalOperation" mode="SurOp2">
		<component>
			<section>
				<code code="47519-4" displayName="HISTORY OF PROCEDURES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<!-- 1..1 手术记录 -->
					<procedure classCode="PROC" moodCode="EVN">
						<code code="54.74002" displayName="大网膜包肾术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)"/>
						<statusCode/>
						<!--操作日期/时间-->
						<effectiveTime value="00000000"/>
						<!-- 操作部位代码 -->
						<targetSiteCode code="99" codeSystem="2.16.156.10011.2.3.1.266" codeSystemName="操作部位代码表" displayName="其他"/>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术（操作）名称"/>
								<value xsi:type="ST">无</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE08.50.037.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="介入物名称"/>
								<value xsi:type="ST">无</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.251.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作方法描述"/>
								<value xsi:type="ST">无</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.250.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作次数"/>
								<value xsi:type="ST">1</value>
							</observation>
						</entryRelationship>
						<!-- 0..1 麻醉信息 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉方式代码"/>
								<value code="1" displayName="全身麻醉" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表" xsi:type="CD"/>
								<!-- 麻醉医师签名 -->
								<performer>
									<assignedEntity>
										<id/>
										<assignedPerson>
											<name>无</name>
										</assignedPerson>
									</assignedEntity>
								</performer>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE02.10.028.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉观察结果"/>
								<value xsi:type="ST">无</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.307.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉中西医标识代码"/>
								<value code="1" codeSystem="2.16.156.10011.2.3.2.41" displayName="西医麻醉" codeSystemName="麻醉中西医标识代码表" xsi:type="CD"/>
							</observation>
						</entryRelationship>
					</procedure>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--治疗记录，手术操作-->	
	<xsl:template match="SurgicalOperation" mode="SurOp3">
		<component>
			<section>
				<code code="47519-4" displayName="HISTORY OF PROCEDURES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<!--1..1 手术记录-->
					<procedure classCode="PROC" moodCode="EVN">
						<code code="84.51003" displayName="陶瓷脊椎融合物置入术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)"/>
						<!--操作日期/时间-->
						<effectiveTime>
							<!--操作结束日期时间-->
							<high value="20090401142335"/>
						</effectiveTime>
						<!--操作名称-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作名称"/>
								<value xsi:type="ST">按照ICD-9-CM-3的名称</value>
							</observation>
						</entryRelationship>
						<!--操作目标部位名称-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.187.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术目标部位名称"/>
								<value xsi:type="ST">实施操作的人体部位名称</value>
							</observation>
						</entryRelationship>
						<!--介入物名称-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE08.50.037.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="介入物名称"/>
								<value xsi:type="ST">实施手术操作时使用/放置的材料/药物的名称</value>
							</observation>
						</entryRelationship>
						<!--操作方法描述-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.251.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作方法描述"/>
								<value xsi:type="ST">操作方法的详细描述</value>
							</observation>
						</entryRelationship>
						<!--操作次数-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.250.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="操作次数"/>
								<value xsi:type="INT" value="1"/>
							</observation>
						</entryRelationship>
					</procedure>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--一般手术记录，手术过程描述-->	
	<xsl:template match="SurgicalOperationDescription" mode="SurgOD">
		<component>
			<section>
				<code code="8724-7" displayName="Surgical operation note description" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<!--手术过程描述-->
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.063.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术过程描述"/>
						<value xsi:type="ST">手术过程的详细描述</value>
						<!--手术目标部位名称 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.187.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术目标部位名称"/>
								<value xsi:type="ST">无</value>
							</observation>
						</entryRelationship>
						<!--介入物名称 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE08.50.037.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="介入物名称"/>
								<value xsi:type="ST">实施手术操作时使用/放置的材料/药物的名称</value>
							</observation>
						</entryRelationship>
						<!--手术体位代码 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.260.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术体位代码"/>
								<value xsi:type="CD" code="1" displayName="胸部" codeSystem="2.16.156.10011.2.3.1.262" codeSystemName="手术体位代码表"/>
							</observation>
						</entryRelationship>
						<!--皮肤消毒描述-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE08.50.057.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="皮肤消毒描述"/>
								<value xsi:type="ST">对手术中皮肤消毒情况的具体描述</value>
							</observation>
						</entryRelationship>
						<!--手术切口描述-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.321.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术切口描述"/>
								<value xsi:type="ST">中</value>
							</observation>
						</entryRelationship>
						<!--引流标志-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.10.165.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="引流标志"/>
								<value xsi:type="BL" value="true"/>
							</observation>
						</entryRelationship>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--麻醉记录，手术操作-->	
	<xsl:template match="SurgicalOperation" mode="SurOp6">
		<component>
			<section>
				<code code="47519-4" displayName="HISTORY OF PROCEDURES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<!-- 1..1 手术记录 -->
					<procedure classCode="PROC" moodCode="EVN">
						<code code="1" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="
手术(操作)代码表（ICD-9-CM）"/>
						<!--操作日期/时间-->
						<effectiveTime>
							<!--手术开始日期时间-->
							<low value="20090401142335-700"/>
							<!--手术结束日期时间-->
							<high value="20090401142335-700"/>
						</effectiveTime>
						<!--手术者姓名-->
						<performer>
							<assignedEntity>
								<id root="2.16.156.10011.1.4" extension="医务人员编号"/>
								<assignedPerson>
									<name>王林</name>
								</assignedPerson>
							</assignedEntity>
						</performer>
						<!--手术间编号-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.256.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="患者实施手术所在的手术室编号"/>
								<value xsi:type="ST">A123</value>
							</observation>
						</entryRelationship>
						<!--手术体位代码 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.260.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术体位代码"/>
								<value xsi:type="CD" code="1" displayName="仰卧位" codeSystem="2.16.156.10011.2.3.1.262" codeSystemName="手术体位代码表"/>
							</observation>
						</entryRelationship>
						<!--诊疗过程描述 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.296.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊疗过程描述"/>
								<value xsi:type="ST">对患者诊疗过程的详细描述</value>
							</observation>
						</entryRelationship>
					</procedure>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--麻醉术后访视记录，手术操作-->
	<xsl:template match="SurgicalOperation" mode="SurOp7">
		<component>
			<section>
				<code code="47519-4" displayName="HISTORY OF PROCEDURES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<!-- 手术及操作编码 DE06.00.093.00 -->
				<entry>
					<procedure classCode="PROC" moodCode="EVN">
						<code xsi:type="CD" code="02.34002" displayName="脑室-腹腔分流术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)"/>
					</procedure>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--剖宫产，手术操作-->
	<xsl:template match="SurgicalOperation" mode="SurOp8">
		<component>
			<section>
				<code code="47519-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="HISTORY OF PROCEDURES"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.197.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="待产日期时间"/>
						<value xsi:type="TS" value="20110316"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.156.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎膜完整情况标志"/>
						<value xsi:type="BL" value="false"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.30.055.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="脐带长度（cm）"/>
						<value xsi:type="PQ" value="22" unit="cm"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.30.059.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="绕颈身（周）"/>
						<value xsi:type="PQ" value="22" unit="周"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.109.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产前诊断"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.340.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术指征"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<!-- 手术及操作编码 DE06.00.093.00 -->
				<entry>
					<procedure classCode="PROC" moodCode="EVN">
						<code xsi:type="CD" code="02.34002" displayName="脑室-腹腔分流术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)"/>
					</procedure>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.221.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术开始日期时间"/>
						<value xsi:type="TS" value="20110316"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉方法代码"/>
						<value xsi:type="CD" code="1" displayName="全身麻醉" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.260.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉体位"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.253.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉效果"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.063.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="剖宫产手术过程"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.233.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="子宫情况"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.01.044.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎方位代码"/>
						<value xsi:type="CD" code="01" codeSystem="2.16.156.10011.2.3.1.106" codeSystemName="胎方位代码表"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.173.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎儿娩出方式"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.153.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎盘黄染">
							<qualifier>
								<name displayName="胎盘黄 染"/>
							</qualifier>
						</code>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.153.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎膜黄染">
							<qualifier>
								<name displayName="胎膜黄 染"/>
							</qualifier>
						</code>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.30.054.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="脐带缠绕情况"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.30.056.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="脐带扭转（周）"/>
						<value xsi:type="PQ" value="22" unit="周"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.50.138.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="存脐带血情况标志"/>
						<value xsi:type="BL" value="false"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.200.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="子宫壁缝合情况"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE08.50.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫缩剂名称"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.136.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫缩剂使用方法"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE08.50.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术用药"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.293.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术用药量"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.233.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="腹腔探查子宫"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.042.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="腹腔探查附件"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.30.053.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫腔探查异常情况标志"/>
						<value xsi:type="BL" value="false"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.166.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫腔探查肌瘤标志"/>
						<value xsi:type="BL" value="false"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.30.052.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫腔探查处理情况"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.134.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术时产妇情况"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.097.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出血量（mL）"/>
						<value xsi:type="PQ" value="22" unit="ml"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.262.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血成分"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.267.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血量（mL）"/>
						<value xsi:type="PQ" value="22" unit="ml"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.268.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输液量（mL）"/>
						<value xsi:type="PQ" value="22" unit="ml"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.318.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="供氧时间（min）"/>
						<value xsi:type="PQ" value="22" unit="min"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE08.50.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="其他用药"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.179.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="其他情况"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.218.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术结束日期时间"/>
						<value xsi:type="TS" value="20110316"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.259.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术全程时间（min）"/>
						<value xsi:type="PQ" value="22" unit="min"/>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--一般护理，手术评估记录标志-->
	<xsl:template match="SurgicalEvaluationOfRecords" mode="SEOR9">
		<component>
			<section>
				<code displayName="手术评估标志"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.204.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="发出手术安全核对表标志">
							<qualifier>
								<name displayName="发出手术安全核对表"/>
							</qualifier>
						</code>
						<value xsi:type="BL" value="true"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.338.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="收回手术安全核对表标志">
							<qualifier>
								<name displayName="收回手术安全核对表"/>
							</qualifier>
						</code>
						<value xsi:type="BL" value="true"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.204.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="发出手术风险评估表标志">
							<qualifier>
								<name displayName="发出手术风险评估表"/>
							</qualifier>
						</code>
						<value xsi:type="BL" value="true"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.338.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="收回手术风险评估表标志">
							<qualifier>
								<name displayName="收回手术风险评估表"/>
							</qualifier>
						</code>
						<value xsi:type="BL" value="true"/>
					</observation>
				</entry>
			</section>
		</component>
		<component>
			<section>
				<code displayName="护理隔离"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.201.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="隔离标志"/>
						<value xsi:type="BL" value="true"/>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.202.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="隔离种类代码"/>
								<value xsi:type="CD" code="1" displayName="消化道隔离" codeSystem="2.16.156.10011.2.3.1.261" codeSystemName="隔离种类代码表"/>
							</observation>
						</entryRelationship>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--手术护理，手术操作-->
	<xsl:template match="SurgicalOperation" mode="SurOp10">
		<component>
			<section>
				<code code="47519-4" displayName="HISTORY OF PROCEDURES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<!-- 1..1 手术记录 -->
					<procedure classCode="PROC" moodCode="EVN">
						<!--手术及操作编码:DE06.00.093.00-->
						<code code="84.51004" displayName="金属脊椎融合物置入术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)"/>
						<statusCode/>
						<!--手术时间：开始日期时间DE06.00.218.00、结束日期时间
DE06.00.221.00-->
						<effectiveTime>
							<low value="20121022080000"/>
							<high value="20121022154823"/>
						</effectiveTime>
						<!--手术目标部位名称：DE06.00.187.00-->
						<targetSiteCode code="0004" displayName="左前胸" codeSystem="2.16.156.10011.2.3.1.266" codeSystemName="手术目标部位编码"/>
						<!--手术操作者：DE02.01.039.00-->
						<performer>
							<assignedEntity>
								<id root="2.16.156.10011.1.4" extension="医务人员编码"/>
								<code displayName="手术操作者"/>
								<assignedPerson>
									<name>王林</name>
								</assignedPerson>
							</assignedEntity>
						</performer>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE04.30.060.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术中病理标志"/>
								<value xsi:type="BL" value="true"/>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.317.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="准备事项"/>
								<value xsi:type="ST">手术准备事项描述</value>
							</observation>
						</entryRelationship>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.256.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术间编号"/>
								<value xsi:type="ST">手术间编号</value>
							</observation>
						</entryRelationship>
						<!-- 出入手术室时间 -->
						<entryRelationship typeCode="COMP">
							<organizer classCode="BATTERY" moodCode="EVN">
								<statusCode/>
								<!-- DE06.00.236.00入手术室日期时间 DE06.00.191.00 出手
术室日期时间 -->
								<effectiveTime>
									<low value="20130101132324"/>
									<high value="20130101132324"/>
								</effectiveTime>
							</organizer>
						</entryRelationship>
					</procedure>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--住院病案首页，中医住院病案首页,手术操作-->
	<xsl:template match="SurgicalOperation" mode="SurOp11">
		<component>
			<section>
				<code code="47519-4" displayName="HISTORY OF PROCEDURES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<!-- 1..1 手术记录 -->
					<procedure classCode="PROC" moodCode="EVN">
						<code code="84.51004" displayName="金属脊椎融合物置入术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)"/>
						<statusCode/>
						<!--操作日期/时间-->
						<effectiveTime value="200004071430"/>
						<!--手术者-->
						<performer>
							<assignedEntity>
								<id root="2.16.156.10011.1.4" extension="医务人员编码"/>
								<assignedPerson>
									<name>王林</name>
								</assignedPerson>
							</assignedEntity>
						</performer>
						<!--第一助手-->
						<participant typeCode="ATND">
							<participantRole classCode="ASSIGNED">
								<id root="2.16.156.10011.1.4" extension="医务人员编码"/>
								<code displayName="第一助手"/>
								<playingEntity classCode="PSN" determinerCode="INSTANCE">
									<name>王平</name>
								</playingEntity>
							</participantRole>
						</participant>
						<!--第二助手-->
						<participant typeCode="ATND">
							<participantRole classCode="ASSIGNED">
								<id root="2.16.156.10011.1.4" extension="医务人员编码"/>
								<code displayName="第二助手"/>
								<playingEntity classCode="PSN" determinerCode="INSTANCE">
									<name>李进</name>
								</playingEntity>
							</participantRole>
						</participant>
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术（操作）名称"/>
								<value xsi:type="ST">名称描述</value>
							</observation>
						</entryRelationship>
						<!--手术级别 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.255.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术级别"/>
								<!--手术级别 -->
								<value xsi:type="CD" code="1" displayName="一级手术" codeSystem="2.16.156.10011.2.3.1.258" codeSystemName="手术级别代码表"/>
							</observation>
						</entryRelationship>
						<!--手术切口类别 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.257.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术切口类别代码"/>
								<!--手术级别 -->
								<value xsi:type="CD" code="1" displayName="0类切口" codeSystem="2.16.156.10011.2.3.1.256" codeSystemName="手术切口类别代码表"/>
							</observation>
						</entryRelationship>
						<!--手术切口愈合等级-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.10.147.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术切口愈合等级"/>
								<!--手术切口愈合等级-->
								<value xsi:type="CD" code="1" displayName="甲" codeSystem="2.16.156.10011.2.3.1.257" codeSystemName="手术切口愈合等级代码表"/>
							</observation>
						</entryRelationship>
						<!-- 0..1 麻醉信息 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉方式代码"/>
								<value code="1" displayName="全身麻醉" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表" xsi:type="CD"/>
								<performer>
									<assignedEntity>
										<id root="2.16.156.10011.1.4" extension="医务人员编码 "/>
										<assignedPerson>
											<name>小明</name>
										</assignedPerson>
									</assignedEntity>
								</performer>
							</observation>
						</entryRelationship>
					</procedure>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--抢救记录，手术操作-->
	<xsl:template match="SurgicalOperation " mode="SurOp12">
		<component>
			<section>
				<code code="47519-4" displayName="HISTORY OF PROCEDURES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<!-- 1..1 手术及操作编码 -->
					<procedure classCode="PROC" moodCode="EVN">
						<code code="84.51003" displayName="陶瓷脊椎融合物置入术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)"/>
						<statusCode/>
						<!--手术操作目标部位名称DE06.00.187.00-->
						<targetSiteCode/>
						<!--手术及操作名称-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN ">
								<code code="DE06.00.094.00" displayName="手术及操作名称" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="ST">无</value>
							</observation>
						</entryRelationship>
						<!--介入物名称-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS " moodCode="EVN ">
								<code code="DE08.50.037.00" displayName="介入物名称" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="ST">实施手术操作时使用/放置的材料/药物的名 称</value>
							</observation>
						</entryRelationship>
						<!--操作方法-->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN ">
								<code code="DE06.00.251.00" displayName="操作方法" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="ST">手术/操作方法的详细描述</value>
							</observation>
						</entryRelationship>
						<!--操作次数-->
						<entryRelationship typeCode="COMP ">
							<observation classCode="OBS" moodCode="EVN ">
								<code code="DE06.00.250.00" displayName="操作次数" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="PQ" value="4" unit="次"/>
							</observation>
						</entryRelationship>
					</procedure>
				</entry>
				<!--抢救措施-->
				<entry>
					<procedure classCode="ACT" moodCode="EVN ">
						<code code="DE06.00.094.00" displayName="抢救措施" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<text xsi:type="ST">进行抢救过程中采取的措施</text>
					</procedure>
				</entry>
				<!--抢救开始日期时间-->
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.221.00" displayName="抢救开始日期时间" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="TS" value="200004071430"/>
					</observation>
				</entry>
				<!--抢救结束日期时间-->
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.218.00" displayName="抢救结束日期时间" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="TS" value="200004071530"/>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--术前小结，手术操作-->
	<xsl:template match="SurgicalOperation" mode="SurOp13">
		<component>
			<section>
				<code code="47519-4" displayName="HISTORY OF PROCEDURES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.151.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术适应证"/>
						<value xsi:type="ST">无</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.141.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术禁忌症"/>
						<value xsi:type="ST">无</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.340.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术指征"/>
						<value xsi:type="ST">无</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--术前讨论，手术操作-->
	<xsl:template match="SurgicalOperation" mode="SurOp14">
		<component>
			<section>
				<code code="47519-4" displayName="HISTORY OF PROCEDURES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.254.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术要点"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.271.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术前准备"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.340.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术指征"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.301.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术方案"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE09.00.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="注意事项"/>
						<value xsi:type="ST">文本</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--术后首次病程，手术操作-->
	<xsl:template match="SurgicalOperation " mode="SurOp15">
		<component>
			<section>
				<code code="47519-4" displayName="HISTORY OF PROCEDURES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<!-- 手术及操作编码 DE06.00.093.00 -->
				<entry>
					<procedure classCode="PROC" moodCode="EVN">
						<code xsi:type="CD" code="84.56001" displayName="水泥间隔物置入术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)"/>
					</procedure>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术名称"/>
						<value xsi:type="ST">全麻下行取卵术</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.187.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术目标部位名称"/>
						<value xsi:type="ST">无</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.221.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术日期时间"/>
						<value xsi:type="TS" value="20110702102110"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉方法代码"/>
						<value xsi:type="CD" code="1" displayName="全身麻醉" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.063.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术过程"/>
						<value xsi:type="ST">无</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--出院小结，手术操作-->
	<xsl:template match="SurgicalOperation" mode="SurOp16">
		<component>
			<section>
				<code code="47519-4" displayName="HISTORY OF PROCEDURES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<!--手术记录条目-->
				<entry>
					<!-- 手术记录 -->
					<procedure classCode="PROC" moodCode="EVN">
						<!--HDSD00.16.038 DE06.00.093.00 手术及操作编码 -->
						<code code="43.41013" displayName="胃镜下胃病损电切术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)"/>
						<statusCode/>
						<!--手术及操作编码、操作日期/时间-->
						<!--HDSD00.16.039 DE06.00.221.00 手术及操作开始日期时间 -->
						<effectiveTime value="20141204230800"/>
						<!--HDSD00.16.040 DE06.00.257.00 手术切口类别代码 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.257.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术切口类别代码"/>
								<value xsi:type="CD" code="2" displayName="Ⅰ类切口" codeSystem="2.16.156.10011.2.3.1.256" codeSystemName="手术切口类别代码表"/>
							</observation>
						</entryRelationship>
						<!--HDSD00.16.029 DE05.10.147.00 切口愈合等级代码 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.10.147.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="切口愈合等级代码"/>
								<value xsi:type="CD" code="1" displayName="甲" codeSystem="2.16.156.10011.2.3.1.257" codeSystemName="手术切口愈合等级代码表"/>
							</observation>
						</entryRelationship>
						<!--HDSD00.16.025 DE06.00.073.00 麻醉方法代码 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.2" codeSystemName="卫生信息数据元目录" displayName="麻醉方法代码"/>
								<value code="1" displayName="全身麻醉" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表" xsi:type="CD"/>
							</observation>
						</entryRelationship>
						<!-- HDSD00.16.037 DE05.10.063.00 手术过程 -->
						<entryRelationship typeCode="COMP">
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE05.10.063.00" codeSystem="2.16.156.10011.2.2.2" codeSystemName="卫生信息数据元目录" displayName="手术过程"/>
								<value xsi:type="ST">胃镜下胃病损电切术</value>
							</observation>
						</entryRelationship>
					</procedure>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--病历概要，入院记录,输血-->
	<xsl:template match="BloodTransfusion " mode="BlTrans17">
		<component>
			<section>
				<code code="56836-0" displayName="History of blood transfusion" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE02.10.100.00" displayName="输血史" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="ST">输血史描述</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--一般手术记录，输血-->
	<xsl:template match="BloodTransfusion  " mode="BlTrans18">
		<component>
			<section>
				<code code="56836-0" displayName="History of blood transfusion" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<!--输血量（mL）-->
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<!--输血量（mL）-->
						<code code="DE06.00.267.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血量（mL）"/>
						<value xsi:type="PQ" unit="-" value="2700"/>
					</observation>
				</entry>
				<!--输血反应标志-->
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<!--输血反应标志-->
						<code code="DE06.00.264.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血反应标志"/>
						<value xsi:type="BL" value="true"/>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	<!--麻醉记录，输血-->
	<xsl:template match="BloodTransfusion " mode="BlTrans19">
	
			<component>
				<section>
					<code code="56836-0" codeSystem="2.16.840.1.113883.6.1" displayName="History of
blood transfusion" codeSystemName="LOINC"/>
					<text/>
					<entry>
						<procedure classCode="PROC" moodCode="EVN">
							<!--输血日期时间 -->
							<effectiveTime>
								<high value="20121012112233.700"/>
							</effectiveTime>
							<!--输血品种代码 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE08.50.040.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血品种代码"/>
									<value xsi:type="CD" code="2" displayName="全血" codeSystem="2.16.156.10011.2.3.1.251" codeSystemName="输血品种代码表"/>
								</observation>
							</entryRelationship>
							<!--输血量（mL） -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.267.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血量（mL）"/>
									<value xsi:type="PQ" value="300" unit="mL"/>
								</observation>
							</entryRelationship>
							<!--输血量计量单位 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE08.50.036.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血量计量单位"/>
									<value xsi:type="ST">mL</value>
								</observation>
							</entryRelationship>
							<!--输血反应标志 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.264.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血反应标志"/>
									<value xsi:type="BL" value="false"/>
								</observation>
							</entryRelationship>
						</procedure>
					</entry>
				</section>
			</component>
	</xsl:template>
	<!--输血记录，输血-->
	<xsl:template match="BloodTransfusion  " mode="BlTrans20">
	<component>
				<section>
					<code code="56836-0" codeSystem="2.16.840.1.113883.6.1" displayName="History of blood transfusion" codeSystemName="LOINC"/>
					<text/>
					<entry>
						<procedure classCode="PROC" moodCode="EVN">
							<!--输血日期时间 -->
							<effectiveTime>
								<high value="20141030230311"/>
							</effectiveTime>
							<entryRelationship typeCode="COMP">
								<!-- 输血史标识代码 -->
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.106.00" displayName="输血史标识代码" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
									<value xsi:type="CD" code="1" displayName="无" codeSystem="2.16.156.10011.2.3.2.42" codeSystemName="输血史标识代码表"/>
								</observation>
							</entryRelationship>
							<entryRelationship typeCode="COMP">
								<!-- 输血性质代码 -->
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE04.50.147.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血性质代码"/>
									<value xsi:type="CD" code="1" displayName="备血" codeSystem="2.16.156.10011.2.3.2.43" codeSystemName="输血性质代码表"/>
								</observation>
							</entryRelationship>
							<entryRelationship typeCode="COMP">
								<!-- 申请 -->
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE04.50.001.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="申请ABO血型代码"/>
									<value xsi:type="CD" code="1" displayName="A型" codeSystem="2.16.156.10011.2.3.1.85" codeSystemName="ABO血型代码表"/>
								</observation>
							</entryRelationship>
							<entryRelationship typeCode="COMP">
								<!-- 申请Rh血型代码 -->
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE04.50.010.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="申请Rh（D）血型代码"/>
									<value code="2" xsi:type="CD" codeSystem="2.16.156.10011.2.3.1.250" displayName="阳性" codeSystemName="Rh(D)血型代码表"/>
								</observation>
							</entryRelationship>
							<!-- 输血指征 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.340.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血指征"/>
									<value xsi:type="ST">受血者接受输血治疗的指征描述</value>
								</observation>
							</entryRelationship>
							<!-- 输血过程记录 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.181.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血过程记录"/>
									<value xsi:type="ST">对患者输血过程的详细描述</value>
								</observation>
							</entryRelationship>
							<!--输血品种代码 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE08.50.040.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血品种代码"/>
									<value xsi:type="CD" code="4" displayName="血浆" codeSystem="2.16.156.10011.2.3.1.251" codeSystemName="输血品种代码表"/>
								</observation>
							</entryRelationship>
							<!-- 血袋编码 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE01.00.023.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="血袋编码"/>
									<value xsi:type="INT" value="1234567890"/>
								</observation>
							</entryRelationship>
							<!--输血量（mL） -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.267.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="血袋编码"/>
									<value xsi:type="PQ" value="300" unit="mL"/>
								</observation>
							</entryRelationship>
							<!--输血量计量单位 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE08.50.036.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血量计量单位"/>
									<value xsi:type="ST"></value>
								</observation>
							</entryRelationship>
							<!--输血反应标志 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.264.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血反应标志"/>
									<value xsi:type="BL" value="false"/>
								</observation>
							</entryRelationship>
							<!--输血反应类型 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.265.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血反应类型"/>
									<value xsi:type="CD" code="1" displayName="发热" codeSystem="2.16.156.10011.2.3.1.252" codeSystemName="输血反应类型代码表"/>
								</observation>
							</entryRelationship>
							<!-- 输血次数 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.263.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血次数"/>
									<value xsi:type="INT" value="12"/>
								</observation>
							</entryRelationship>
							<!-- 输血原因 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.107.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血原因"/>
									<value xsi:type="ST">表示本次输血的原因</value>
								</observation>
							</entryRelationship>
						</procedure>
					</entry>
				</section>
			</component>
		
	
	</xsl:template>
	<!--输血治疗同意书，输血-->
	<xsl:template match="BloodTransfusion " mode="BlTrans21">
	<component>
				<section>
					<code code="56836-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="History of blood transfusion"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.106.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<!--1无，2有，9未说明-->
							<value xsi:type="CD" code="1" displayName="无" codeSystem="2.16.156.10011.2.3.2.42" codeSystemName="输血史标识代码表"/>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
	
	<!--一般手术记录，输液-->
	<xsl:template match="Transfusion" mode="Trans23">
	<component> 
        <section> 
          <code code="10216-0" displayName="Surgical operation note fluids" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <!--输液量（mL）-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <!--输液量（mL）-->  
              <code code="DE06.00.268.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="c（mL）"/>  
              <value xsi:type="PQ" unit="-" value="2700"/> 
            </observation> 
          </entry> 
        </section> 
      </component>
	</xsl:template>
	<!--麻醉记录，输液-->
	<xsl:template match="Transfusion" mode="Trans24">
	<component>
				<section>
					<code code="10216-0" displayName="Surgical operation note fluids" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<!--术中输液项目 -->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.269.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术中输液项目"/>
							<value xsi:type="ST">手术过程中输入液体的描述</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	<!--一般手术记录，失血-->
	<xsl:template match="Hemorrhagen " mode="Hemo25">
	<component> 
        <section> 
          <code code="55103-6" displayName="Surgical operation note estimated blood loss" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <!--出血量（mL）-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.097.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出血量（mL）"/>  
              <value xsi:type="PQ" unit="-" value="1200"/> 
            </observation> 
          </entry> 
        </section> 
      </component>
	</xsl:template>
	<!--手术护理，术后交接-->
	<xsl:template match="Post-operation " mode="Post-o26">
<!--麻醉记录，输液-->
	<component>
				<section>
					<code code="8648-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Hospital Course"/>
					<title>住院过程章节</title>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.206.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病人交接核对项目"/>
							<value xsi:type="ST">病人交接核对项目</value>
							<!--交接护士-->
							<author>
								<!--交接日期时间：DE09.00.107.00-->
								<time value="201210240910"/>
								<assignedAuthor>
									<id root="2.16.156.10011.1.4" extension="医务人员编码"/>
									<code displayName="交接护士"/>
									<!--交接护士签名：DE02.01.039.00-->
									<assignedPerson>
										<name>张三</name>
									</assignedPerson>
								</assignedAuthor>
							</author>
							<!--转运者-->
							<participant typeCode="ATND">
								<participantRole classCode="ASSIGNED">
									<id root="2.16.156.10011.1.4" extension="医务人员编码"/>
									<!--角色-->
									<code displayName="转运者"/>
									<!--转运者签名：DE02.01.039.00-->
									<playingEntity classCode="PSN" determinerCode="INSTANCE">
										<name>王丽</name>
									</playingEntity>
								</participantRole>
							</participant>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	<!--麻醉记录，术后去向-->
	<xsl:template match="PostoperativeDestination " mode="PostD27">
	<component>
				<section>
					<code code="59775-7" displayName="Procedure disposition" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<!--患者去向代码 -->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.185.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="患者去向代码"/>
							<effectiveTime>
								<!--出手术室日期时间-->
								<high value="201909080709"/>
							</effectiveTime>
							<value xsi:type="ST">1</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	<!--一般手术记录，麻醉-->
	<xsl:template match="Anesthesia" mode="Anes28">
	<component> 
        <section> 
          <code code="10213-7" displayName="Surgical operation note anesthesia" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <entry> 
            <!-- 麻醉方式代码 -->  
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉方式代码"/>  
              <value code="1" displayName="全身麻醉" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表" xsi:type="CD"/>  
              <!-- 麻醉医师姓名 -->  
              <performer> 
                <assignedEntity> 
                  <id/>  
                  <assignedPerson> 
                    <name>徐懋,郭枫林,于琳琳,周阳,</name> 
                  </assignedPerson> 
                </assignedEntity> 
              </performer> 
            </observation> 
          </entry> 
        </section> 
      </component>
	</xsl:template>
	<!--麻醉记录，麻醉-->
	<xsl:template match="Anesthesia " mode="Anes29">
	<component>
				<section>
					<code code="59774-0" displayName="Procedure anesthesia" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<entry>
						<!-- 1..1 麻醉记录 -->
						<procedure classCode="PROC" moodCode="EVN">
							<!--麻醉方法代码-->
							<code code="1" displayName="全身麻醉" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表"/>
							<effectiveTime>
								<!--麻醉开始日期时间-->
								<low value="20090401102335.700"/>
							</effectiveTime>
							<!--ASA分级标准代码 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE05.10.129.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="ASA分级标准代码"/>
									<value xsi:type="CD" code="1" displayName="I" codeSystem="2.16.156.10011.2.3.1.255" codeSystemName="美国麻醉医师协会(ASA)分级标准代码表"/>
								</observation>
							</entryRelationship>
							<!--气管插管分类 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.228.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="气管插管分类"/>
									<value xsi:type="ST">标识全身麻醉时气管插管分类的描述
</value>
								</observation>
							</entryRelationship>
							<!--麻醉药物名称 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE08.50.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉药物名称"/>
									<value xsi:type="ST">药物通用名称</value>
								</observation>
							</entryRelationship>
							<!--麻醉体位 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE04.10.260.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉体位"/>
									<value xsi:type="ST">麻醉体位的详细描述</value>
								</observation>
							</entryRelationship>
							<!--呼吸类型代码 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.208.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="呼吸类型代码"/>
									<value xsi:type="CD" code="1" displayName="自主呼吸" codeSystem="2.16.156.10011.2.3.2.1" codeSystemName="呼吸类型代码表"/>
								</observation>
							</entryRelationship>
							<!--麻醉描述 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.226.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉描述"/>
									<value xsi:type="ST">麻醉过程的详细描述</value>
								</observation>
							</entryRelationship>
							<!--麻醉合并症标志代码 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE05.01.077.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉合并症标志代码"/>
									<value xsi:type="CD" code="1" displayName="否" codeSystem="2.16.156.10011.2.3.2.59" codeSystemName="麻醉合并症标志代码表"/>
								</observation>
							</entryRelationship>
							<!--穿刺过程 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE05.10.063.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="穿刺过程"/>
									<value xsi:type="ST">局部麻醉中穿刺过程的详细描述</value>
								</observation>
							</entryRelationship>
							<!--麻醉效果 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.253.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉效果"/>
									<value xsi:type="ST">实施麻醉效果的描述</value>
								</observation>
							</entryRelationship>
							<!--麻醉前用药 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.136.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉前用药"/>
									<value xsi:type="ST">在患者进行麻醉前给予的药品的具体描述
</value>
								</observation>
							</entryRelationship>
						</procedure>
					</entry>
				</section>
			</component>
	</xsl:template>
	<!--麻醉术后访视记录，麻醉-->
	<xsl:template match="Anesthesia" mode="Anes30">
	<component>
				<section>
					<code code="59774-0" displayName="Procedure anesthesia" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<!-- 麻醉方法代码 -->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉方法代码"/>
							<value xsi:type="CD" code="1" displayName="全身麻醉" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表"/>
							<!-- 麻醉适应证 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.227.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉适应证"/>
									<value xsi:type="ST">麻醉适应证的描述</value>
								</observation>
							</entryRelationship>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
</xsl:stylesheet>
