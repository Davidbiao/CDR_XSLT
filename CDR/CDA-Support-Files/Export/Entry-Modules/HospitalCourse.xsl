<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	
<!--适用文档  ：急诊留观病历-->
	<xsl:template match="HospitalCourse" mode="HC1">
		<component>
			<section>
				<code code="8648-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Hospital Course"/>
				<text/>
				<!-- 急诊留观病程记录 -->
				<entry typeCode="COMP">
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.181.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="急诊留观病程记录"/>
						<!-- 收入观察室日期时间 -->
						<effectiveTime value="xxx"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	
	
	<!--适用文档  ：住院病案首页  中医住院病案首页-->
	<xsl:template match="HospitalCourse" mode="HC2">
	<xsl:template match="HospitalCourse" mode="HC2">
		<component> 
        <section> 
          <code code="8648-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Hospital Course"/>  
          <text/>  
          <!--实际住院天数 -->  
          <entry typeCode="COMP"> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.310.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="实际住院天数"/>  
              <value xsi:type="PQ" value="xxx" unit="天"/> 
            </observation> 
          </entry>  
          <entry> 
            <!--出院科室及病房 -->  
            <act classCode="ACT" moodCode="EVN"> 
              <code/>  
              <author> 
                <time/>  
                <assignedAuthor> 
                  <id/>  
                  <representedOrganization> 
                    <!--住院患者出院病房、科室名称-->  
                    <id root="2.16.156.10011.1.21" extension="xxx"/>  
                    <name>xxx</name>  
                    <asOrganizationPartOf classCode="PART"> 
                      <wholeOrganization classCode="ORG" determinerCode="INSTANCE"> 
                        <id root="2.16.156.10011.1.26" extension="xxx"/>  
                        <name>xxx</name> 
                      </wholeOrganization> 
                    </asOrganizationPartOf> 
                  </representedOrganization> 
                </assignedAuthor> 
              </author> 
            </act> 
          </entry> 
        </section> 
      </component>  
	</xsl:template>
	
	<!--适用文档  ：24h入出院-->
	<xsl:template match="HospitalCourse" mode="HC3">
		<component>
				<section>
					<code code="8648-8" displayName="HOSPITAL COURSE" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<!--入院情况条目-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.148.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入院情况"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
					<!--诊疗过程描述条目-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.296.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊疗过程描述"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
					<!--出院情况条目-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.193.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院情况"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
	<!--适用文档  ：24h内入院死亡-->
	<xsl:template match="HospitalCourse" mode="HC4">
		<component>
				<section>
					<code code="8648-8" displayName="HOSPITAL COURSE" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<!--入院情况条目-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.148.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="入院情况"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
					<!--诊疗过程描述条目-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.296.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊疗过程描述"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
					<!--死亡日期时间条目-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE02.01.036.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡日期时间"/>
							<effectiveTime>
								<high value="xxx"/>
							</effectiveTime>
						</observation>
					</entry>
					<!--死亡原因条目-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.099.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡原因"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
					<!--死亡诊断-西医条目-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.01.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡诊断-西医诊断名称"/>
							<value xsi:type="ST">xxx</value>
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<!--死亡诊断-西医诊断编码-代码-->
									<code code="DE05.01.024.00" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="卫生信息数据元目录" displayName="死亡诊断-西医诊断编码"/>
									<value xsi:type="CD" code="xxx" displayName="xxx" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="ICD-10"/>
								</observation>
							</entryRelationship>
						</observation>
					</entry>
					<!--死亡诊断-中医条目-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡诊断-中医病名名称"/>
							<value xsi:type="ST">xxx</value>
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<!--死亡诊断-中医诊断编码-代码-->
									<code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡诊断-中医病名代码"/>
									<value xsi:type="CD" code="xxx" displayName="xxx" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)"/>
								</observation>
							</entryRelationship>
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<!--死亡诊断-中医证候编码-名称-->
									<code code="DE05.10.172.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡诊断-中医证候名称"/>
									<value xsi:type="ST">xxx</value>
								</observation>
							</entryRelationship>
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<!--死亡诊断-中医证候编码-代码-->
									<code code="DE05.10.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡诊断-中医证候代码"/>
									<value xsi:type="CD" code="xxx" displayName="xxx" codeSystem="2.16.156.10011.2.3.3.14" codeSystemName="中医病证分类与代码表( GB/T 15657)"/>
								</observation>
							</entryRelationship>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
	<!--适用文档  ：交接班记录  转科记录   阶段小结   会诊记录-->
	<xsl:template match="HospitalCourse" mode="HC5">
		<component> 
        <section> 
          <code code="8648-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Hospital Course"/>  
          <text/>  
          <!--诊疗过程描述-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.296.00" displayName="诊疗过程描述" codeSystem="2.16.156.10011.2.3.3.11" codeSystemName="卫生信息数据元目录"/>  
              <value xsi:type="ST">xxx</value> 
            </observation> 
          </entry> 
        </section> 
      </component> 
	</xsl:template>
	
	<!--适用文档  ：出院记录   死亡记录-->
	<xsl:template match="HospitalCourse" mode="HC6">
		<component>
				<section>
					<code code="8648-8" displayName="Hospital Course" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.296.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊疗过程描述"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
	<!--适用文档  ：出院小结-->
	<xsl:template match="HospitalCourse" mode="HC7">
		<component> 
        <section> 
          <code code="8648-8" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Hospital Course"/>  
          <text/>  
          <!--HDSD00.16.045 DE06.00.296.00 诊疗过程描述 条目-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.296.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="诊疗过程描述"/>  
              <value xsi:type="ST">xxx</value> 
            </observation> 
          </entry>  
          <!--HDSD00.16.047 DE05.10.113.00 治疗结果代码 条目-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE05.10.113.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="治疗结果代码"/>  
              <value xsi:type="CD" code="xxx" displayName="xxx"  codeSystem="2.16.156.10011.2.3.1.148" codeSystemName="病情转归代码表"/> 
            </observation> 
          </entry>  
          <!--HDSD00.16.036 DE06.00.310.00 实际住院天数 条目-->  
          <entry typeCode="COMP"> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.310.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="实际住院天数"/>  
              <value xsi:type="PQ" value="xxx" unit="天"/> 
            </observation> 
          </entry> 
        </section> 
      </component>  
	</xsl:template>
	
	
	
</xsl:stylesheet>
