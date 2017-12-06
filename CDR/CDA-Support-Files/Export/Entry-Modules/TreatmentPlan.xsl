<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<!--门急诊病历，急诊留观病历,治疗计划-->	
	<xsl:template match="TreatmentPlan"  mode="TP1">
		<component>
				<section>
					<code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<!--辨证依据描述-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.132.00" displayName="辨证依据" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">辨证依据描述</value>
						</observation>
					</entry>
					<!--治则治法-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.300.00" displayName="治则治法" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">自由文本</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
	<!--中药处方，治疗计划-->	
	<xsl:template match="TreatmentPlan" mode="TP3">
		
			<component>
				<section>
					<code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<!--处方备注信息-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.179.00" displayName="处方备注信息" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">备注信息描述</value>
						</observation>
					</entry>
					<!--治则治法-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.300.00" displayName="治则治法" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">目前予患者综合保守治疗</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	<!--手术知情同意书，治疗计划-->	
	<xsl:template match="TreatmentPlan" mode="TP5">
		<component> 
        <section> 
          <code code="18776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="TREATMENT PLAN"/>  
          <text/>  
          <!--拟实施手术-->  
          <entry> 
            <!--拟实施手术-->  
            <procedure classCode="PROC" moodCode="RQO"> 
              <code code="84.51003" displayName="陶瓷脊椎融合物置入术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)" />  
              <statusCode code="new"/>  
              <!--手术时间-->  
              <effectiveTime value="000000000000"/>  
              <!--手术方式描述-->  
              <entryRelationship typeCode="COMP"> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="DE06.00.302.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术方式"/>  
                  <value xsi:type="ST">手术方式</value> 
                </observation> 
              </entryRelationship>  
              <!--手术前的准备-->  
              <entryRelationship typeCode="COMP"> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="DE06.00.271.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术前准备"/>  
                  <value xsi:type="ST">手术前的准备</value> 
                </observation> 
              </entryRelationship>  
              <!--手术禁忌症-->  
              <entryRelationship typeCode="COMP"> 
                <observation classCode="OBS" moodCode="DEF"> 
                  <code code="DE05.10.141.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术禁忌症"/>  
                  <value xsi:type="ST">手术禁忌症</value> 
                </observation> 
              </entryRelationship>  
              <!--手术指征-->  
              <entryRelationship typeCode="RSON"> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="DE06.00.340.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="手术指征"/>  
                  <value xsi:type="ST">手术指征</value> 
                </observation> 
              </entryRelationship>  
              <!--拟麻醉信息-->  
              <entryRelationship typeCode="COMP"> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="拟实施麻醉方法代码"/>  
                  <value code="1" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表" xsi:type="CD" displayName="全身麻醉"/> 
                </observation> 
              </entryRelationship> 
            </procedure> 
          </entry>  
          <!--替代方案-->  
          <entry> 
            <observation classCode="OBS" moodCode="DEF"> 
              <code code="DE06.00.301.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="替代方案"/>  
              <value xsi:type="ST">替代方案</value> 
            </observation> 
          </entry> 
        </section> 
      </component>  
	</xsl:template>
	<!--麻醉知情同意书，治疗计划-->	
	<xsl:template match="TreatmentPlan" mode="TP6">
		<component>
				<section>
					<code code="18776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="TREATMENT PLAN"/>
					<text/>
					<entry>
						<!--拟实施麻醉-->
						<procedure classCode="PROC" moodCode="EVN">
							<code code="1" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName=" 麻醉方法代码表" displayName="全身麻醉"/>
							<statusCode code="new"/>
							<!--拟实施时间-->
							<effectiveTime value="12737483828382"/>
							<!--拟实施手术-->
							<entryRelationship typeCode="CAUS">
								<procedure classCode="PROC" moodCode="EVN">
									<code code="1" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表（ICD-9-CM)" displayName="阑尾炎手术"/>
								</procedure>
							</entryRelationship>
							<!--拟行有创操作和检测方法-->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="拟行有创操作和检测方法"/>
									<value xsi:type="ST">拟行有创操作和检测方法</value>
								</observation>
							</entryRelationship>
							<!--基础疾病可能对麻醉产生的影像-->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="DEF">
									<code code="DE05.10.146.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="基础疾病可能对麻醉产生的影响"/>
									<value xsi:type="ST">基础疾病可能对麻醉产生的影像</value>
									<!--基础疾病-->
									<entryRelationship typeCode="CAUS">
										<observation classCode="OBS" moodCode="EVN">
											<code code="DE04.01.121.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="患者基础疾病"/>
											<value xsi:type="ST">基础疾病</value>
										</observation>
									</entryRelationship>
								</observation>
							</entryRelationship>
							<!--使用麻醉镇痛泵标志-->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="DEF">
									<code code="DE06.00.240.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="使用麻醉镇痛汞标志"/>
									<value xsi:type="BL" value="true"/>
								</observation>
							</entryRelationship>
							<!--参加麻醉安全保险标志-->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="DEF">
									<code code="DE01.00.016.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="参加麻醉安全保险标志"/>
									<value xsi:type="BL" value="true"/>
								</observation>
							</entryRelationship>
						</procedure>
					</entry>
				</section>
			</component>
	</xsl:template>
	<!--输血治疗同意书，治疗计划-->	
	<xsl:template match="TreatmentPlan" mode="TP7">
				
	<component>
				<section>
					<code code="18776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="TREATMENT PLAN"/>
					<text/>
					<entry>
						<!--输血过程-->
						<procedure classCode="PROC" moodCode="EVN">
							<code/>
							<!--输血时间-->
							<effectiveTime/>
							<!--输血方式-->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.266.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血方式"/>
									<value xsi:type="ST">输血方式</value>
								</observation>
							</entryRelationship>
							<!--输血指征-->
							<entryRelationship typeCode="CAUS">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.340.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血指征"/>
									<value xsi:type="ST">输血指征</value>
								</observation>
							</entryRelationship>
							<!--输血品种代码-->
							<entryRelationship typeCode="COMP">
								<substanceAdministration classCode="SBADM" moodCode="RQO">
									<consumable>
										<manufacturedProduct>
											<manufacturedMaterial>
												<code code="11" codeSystem="2.16.156.10011.2.3.1.251" codeSystemName="输血品种代码表" displayName="浓缩红细胞"/>
											</manufacturedMaterial>
										</manufacturedProduct>
									</consumable>
								</substanceAdministration>
							</entryRelationship>
							<!--输血前有关检查项目以及结果-->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE05.10.109.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="输血前有关检查项目以及结果"/>
									<value xsi:type="ED">输血前有关检查项目以及结果</value>
								</observation>
							</entryRelationship>
						</procedure>
					</entry>
				</section>
			</component>
	</xsl:template>
	<!--特殊检查及特殊治疗同意书，治疗计划-->	
	<xsl:template match="tTreatmentPlan" mode="TP8">
		<component> 
        <section> 
          <code code="59772-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Planned procedure"/>  
          <text/>  
          <entry> 
            <!--特殊检查及特殊治疗项目名称-->  
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.306.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="特殊检查及特殊治疗项目名称"/>  
              <value xsi:type="ST">特殊检查及特殊治疗项目名称</value>  
              <!--特殊检查及特殊治疗目的-->  
              <entryRelationship typeCode="COMP"> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="DE06.00.305.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="特殊检查及特殊治疗目的"/>  
                  <value xsi:type="ST">特殊检查及特殊治疗目的</value> 
                </observation> 
              </entryRelationship> 
            </observation> 
          </entry>  
          <!--替代方案-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.301.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="替代方案"/>  
              <value xsi:type="ST">替代方案</value> 
            </observation> 
          </entry> 
        </section> 
      </component>  
       
     
	</xsl:template>
	<!--住院病案首页，住院病案首页,治疗计划-->	
	<xsl:template match="TreatmentPlan" mode="TP9">
		<component> 
        <section> 
          <code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <!-- 有否出院31天内再住院计划 -->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.194.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院31天内再住院标志"/>  
              <value xsi:type="BL" value="true"/>  
              <entryRelationship typeCode="GEVL" negationInd="false"> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="DE06.00.195.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院31天内再住院目的"/>  
                  <value xsi:type="ST">出院31天内再住院目的</value> 
                </observation> 
              </entryRelationship> 
            </observation> 
          </entry> c
        </section> 
      </component>  
	</xsl:template>
	<!--入院记录，24小时内入出院记录,24小时内入院死亡记录,出院小结,治疗计划-->	
	
	<xsl:template match="TreatmentPlan " mode="TP10">
		<component> 
        <section> 
          <code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <!--治则治法条目-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.300.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="治则治法"/>  
              <value xsi:type="ST">无</value> 
            </observation> 
          </entry> 
        </section> 
      </component>
	</xsl:template>
	<!--首次病程，治疗计划-->	
	<xsl:template match="TreatmentPlan" mode="TP11">
		<component>
				<section>
					<code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="GOL ">
							<code code="DE05.01.025.00" displayName="诊疗计划" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">（1）完善各项常规检查:生化免疫全套、凝血五项、 肿瘤12项等。（3）予外科护理常规、禁食、胃肠减压，灌肠，予头孢匹胺、替硝唑BID静滴消炎、维持水电 解质平衡。密切观察病情变化，急查血细胞分析+血型、血电解质、肾功能、心电图、腹部B超、胸片及腹部 平片必要时查腹部CT检查等，根据生化报告情况进一步调节治疗方案。闵美林</value>
						</observation>
					</entry>
					<!--治则治法-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.300.00" displayName="治则治法" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">目前予患者综合保守治疗</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	<!--日常病程，疑难病例讨论记录,治疗计划-->	
	<xsl:template match="TreatmentPlan " mode="TP12">
		<component>
				<section>
					<code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<!--辨证论治-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE05.10.131.00" displayName="辩证论治" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">目前予患者综合保守治疗</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	<!--上级医师查房，治疗计划-->	
	<xsl:template match="TreatmentPlan" mode="TP13">
		<component> 
        <section> 
          <code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <!--诊疗计划-->  
          <entry> 
            <observation classCode="OBS" moodCode="INT "> 
              <code code="DE05.01.025.00" displayName="诊疗计划"/>  
              <value xsi:type="ST">具体的检查、中医治疗措施及中医调护</value> 
            </observation> 
          </entry>  
          <!--辩证论治详细描述-->  
          <entry> 
            <observation classCode="OBS" moodCode="INT"> 
              <code code="DE05.10.131.00" displayName="辩证论治"/>  
              <value xsi:type="ST">对辨证分型的名称、主要依据和采用的治则治法的详 细描述</value> 
            </observation> 
          </entry> 
        </section> c
      </component>  
	</xsl:template>
	
	<!--交接班记录,转科记录，治疗计划-->	
	<xsl:template match="TreatmentPlan " mode="TP15">
		<component> 
        <section> 
          <code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <!--接班诊疗计划-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.298.00" displayName="接班诊疗计划" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>  
              <value xsi:type="ST">备注信息描述</value> 
            </observation> 
          </entry>  
          <!--治则治法-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.300.00" displayName="治则治法" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>  
              <value xsi:type="ST">目前予患者综合保守治疗</value> 
            </observation> 
          </entry>  
          <!--注意事项-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN "> 
              <code code="DE09.00.119.00" displayName="注意事项" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>  
              <value xsi:type="ST">对可能出现问题及采取相应措施的描述</value> 
            </observation> 
          </entry> 
        </section> 
      </component>  
	</xsl:template>
	<!--阶段小结，治疗计划-->	
	<xsl:template match="TreatmentPlan" mode="TP16">
		
		<component> 
        <section> 
          <code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <!--今后治疗方案-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.159.00" displayName="今后治疗方案" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>  
              <value xsi:type="ST">今后治疗方案的详细描述，包含中医民族医治疗项目</value> 
            </observation> 
          </entry>  
          <!--治则治法-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.300.00" displayName="治则治法" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>  
              <value xsi:type="ST">名称参考治则治法代码表（GB/T 16751.3-1997）</value> 
            </observation> 
          </entry> 
        </section> 
      </component> 			
		
	</xsl:template>
	<!--抢救记录，治疗计划-->	
	<xsl:template match="TreatmentPlan " mode="TP17">
		 <component> 
        <section> 
          <code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <!--注意事项-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN "> 
              <code code="DE09.00.119.00" displayName="注意事项" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>  
              <value xsi:type="ST">对可能出现问题及采取相应措施的描述</value> 
            </observation> 
          </entry> 
        </section> 
      </component> 
	</xsl:template>
	<!--会诊记录，治疗计划-->	
	<xsl:template match="TreatmentPlan " mode="TP18">
		<component>
				<section>
					<code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<!--诊疗过程名称-->
					<entry>
						<observation classCode="OBS" moodCode="EVN ">
							<code code="DE06.00.297.00" displayName="诊疗过程名称" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">诊疗过程的名称描述</value>
						</observation>
					</entry>
					<!--治则治法-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.300.00" displayName="治则治法" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">名称参考治则治法代码表（GB/T 16751.3-1997）
</value>
						</observation>
					</entry>
					<!--会诊目的-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.214.00" displayName="会诊目的" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">申请会诊医师就患者目前存在问题提出会诊要达到
的目的</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	<!--术前小结，术前讨论,治疗计划-->	
	<xsl:template match="TreatmentPlan" mode="TP19">
	<component> 
        <section> 
          <code code="18776-5" codeSystem="2.16.840.1.113883.6.1" displayName="TREATMENT PLAN" codeSystemName="LOINC"/>  
          <text/>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.093.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="拟实施手术及操作编码"/>  
              <value xsi:type="CD" code="84.51003" displayName="陶瓷脊椎融合物置入术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)"/> 
            </observation> 
          </entry>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.094.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="拟实施手术及操作名称"/>  
              <value xsi:type="ST">文本</value> 
            </observation> 
          </entry>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.187.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="拟实施手术目标部位名称"/>  
              <value xsi:type="ST">文本</value> 
            </observation> 
          </entry>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.221.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="拟实施手术及操作日期时间"/>  
              <value xsi:type="TS" value="20110316"/> 
            </observation> 
          </entry>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="拟实施麻醉方法代码"/>  
              <value xsi:type="CD" code="1" displayName="全身麻醉" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表"/> 
            </observation> 
          </entry> 
        </section> 
      </component>  
	
	</xsl:template>
	
	<!--麻醉术前访视记录，治疗计划-->	
	<xsl:template match="TreatmentPlan " mode="TP20">
	<component>
				<section>
					<code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<!-- 拟实施手术及操作编码 DE06.00.093.00 -->
					<entry>
						<procedure classCode="PROC" moodCode="EVN">
							<code xsi:type="CD" code="02.34002" displayName="脑室-腹腔分流术" codeSystem="2.16.156.10011.2.3.3.12" codeSystemName="手术(操作)代码表(ICD-9-CM)"/>
							<!--手术间编号-->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.256.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="患者实施手术所在的手术室编号"/>
									<value xsi:type="ST">A1234567890123456789</value>
								</observation>
							</entryRelationship>
						</procedure>
					</entry>
					<entry>
						<!-- 拟实施麻醉方法代码 -->
						<observation classCode="OBS" moodCode="INT">
							<code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="拟实施麻醉方法代码"/>
							<value xsi:type="CD" code="1" displayName="全身麻醉" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表"/>
							<!-- 术前麻醉医嘱 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="INT">
									<code code="DE06.00.287.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术前麻醉医嘱"/>
									<value xsi:type="ST">术前麻醉医师下达的医嘱</value>
								</observation>
							</entryRelationship>
							<!-- 麻醉适应证 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE06.00.227.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉适应证"/>
									<value xsi:type="ST">麻醉适应证的描述</value>
								</observation>
							</entryRelationship>
							<!-- 注意事项 -->
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE09.00.119.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="注意事项"/>
									<value xsi:type="ST">对可能出现问题及采取相应措施的描述
</value>
								</observation>
							</entryRelationship>
						</observation>
					</entry>
				</section>
			</component>
		
	
	</xsl:template>
	<!--手术知情同意书，治疗计划-->	
	<xsl:template match="TreatmentPlan " mode="TP21">
	<component> 
        <section> 
          <code code="18776-5" displayName="TREATMENT PLAN" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <!--处理及指导意见-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.018.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="处理及指导意见"/>  
              <value xsi:type="ST">对某事件进行处理及指导意见内容的详细描述</value> 
            </observation> 
          </entry>  
          <!--医嘱使用备注-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.179.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医嘱使用备注"/>  
              <value xsi:type="ST">医嘱执行过程中的注意事项</value> 
            </observation> 
          </entry>  
          <!--今后治疗方案-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.159.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="今后治疗方案"/>  
              <value xsi:type="ST">今后治疗方案的详细描述</value> 
            </observation> 
          </entry>  
          <!--随访条目-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.108.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="随访方式"/>  
              <!--随访时间（数据元）-->  
              <effectiveTime value="20110212"/>  
              <value code="1" codeSystem="2.16.156.10011.2.3.1.183" codeSystemName="随访方式代码表" xsi:type="CD" displayName="门诊"/>  
              <!--随访周期建议代码-->  
              <entryRelationship typeCode="COMP"> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="DE06.00.112.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="随访周期建议代码"/>  
                  <value xsi:type="CD" code="01" displayName="每2周" codeSystem="2.16.156.10011.2.3.1.184" codeSystemName="随访周期建议代码表"/> 
                </observation> 
              </entryRelationship> 
            </observation> 
          </entry> 
        </section> 
      </component>  
	</xsl:template>
	
	
</xsl:stylesheet>
