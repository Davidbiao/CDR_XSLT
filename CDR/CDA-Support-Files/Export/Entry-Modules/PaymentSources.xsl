<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	
	<!--住院病案首页-->
	<xsl:template match="PaymentSources" mode="PaySources1">
		<component> 
        <section> 
          <code code="48768-6" displayName="PAYMENT SOURCES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <!--医疗付费方式 -->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE07.00.007.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医疗付费方式代码"/>  
              <value xsi:type="CD" code="99" codeSystem="2.16.156.10011.2.3.1.269" displayName="其他" codeSystemName="医疗付费方式代码表"/> 
            </observation> 
          </entry>
          <!--住院总费用 -->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="HDSD00.11.142" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="住院总费用"/>  
              <value xsi:type="MO" value="0" currency="元"/>  
              <entryRelationship typeCode="COMP" negationInd="false"> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.143" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="住院总费用- 自付金额（元）"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </entryRelationship> 
            </observation> 
          </entry>  
          <!--综合医疗服务费 -->  
          <entry> 
            <organizer classCode="CLUSTER" moodCode="EVN"> 
              <statusCode/>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.147" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服 务费-一般医疗服务费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.148" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服 务费-一般治疗操作费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.145" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服 务费-护理费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.146" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服 务费-其他费用"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component> 
            </organizer> 
          </entry>  
          <!--诊断类服务费 -->  
          <entry> 
            <organizer classCode="CLUSTER" moodCode="EVN"> 
              <statusCode/>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.121" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-病理诊断费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.123" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-实验室诊断费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.124" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-影像学诊断费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.122" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-临床诊断项目费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component> 
            </organizer> 
          </entry>  
          <!--治疗类服务费 -->  
          <entry> 
            <organizer classCode="CLUSTER" moodCode="EVN"> 
              <statusCode/>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.129" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-非手术治疗项目费"/>  
                  <value xsi:type="MO" value="0" currency="元"/>  
                  <entryRelationship typeCode="COMP"> 
                    <observation classCode="OBS" moodCode="EVN"> 
                      <code code="HDSD00.11.130" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-非手术 治疗项目费-临床物理治疗费"/>  
                      <value xsi:type="MO" value="0" currency="元"/> 
                    </observation> 
                  </entryRelationship> 
                </observation> 
              </component>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.131" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-手术治 疗费"/>  
                  <value xsi:type="MO" value="0" currency="元"/>  
                  <entryRelationship typeCode="COMP"> 
                    <observation classCode="OBS" moodCode="EVN"> 
                      <code code="HDSD00.11.132" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-手术治 疗费-麻醉费"/>  
                      <value xsi:type="MO" value="0" currency="元"/> 
                    </observation> 
                  </entryRelationship>  
                  <entryRelationship typeCode="COMP"> 
                    <observation classCode="OBS" moodCode="EVN"> 
                      <code code="HDSD00.11.133" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-手术治 疗费-手术费"/>  
                      <value xsi:type="MO" value="0" currency="元"/> 
                    </observation> 
                  </entryRelationship> 
                </observation> 
              </component> 
            </organizer> 
          </entry>  
          <!--康复费类服务费 -->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="HDSD00.11.055" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="康复费"/>  
              <value xsi:type="MO" value="0" currency="元"/> 
            </observation> 
          </entry>  
          <!--中医治疗费 -->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="HDSD00.11.136" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医治疗费"/>  
              <value xsi:type="MO" value="0" currency="元"/> 
            </observation> 
          </entry>  
          <!--西药费 -->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="HDSD00.11.098" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="西药费"/>  
              <value xsi:type="MO" value="0" currency="元"/>  
              <entryRelationship typeCode="COMP"> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.099" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="西药费-抗菌 药物费用"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </entryRelationship> 
            </observation> 
          </entry>  
          <!--中药费 -->  
          <entry> 
            <organizer classCode="CLUSTER" moodCode="EVN"> 
              <statusCode/>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.135" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中药费-中成 药费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.134" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中药费-中草 药费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component> 
            </organizer> 
          </entry>  
          <!-- 血液和血液制品类服务费 -->  
          <entry> 
            <organizer classCode="CLUSTER" moodCode="EVN"> 
              <statusCode/>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.115" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="血费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.111" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="白蛋白类制 品费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.113" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="球蛋白类制 品费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <!-- 凝血因子类制品费 -->  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.112" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="凝血因子类 制品费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <!--细胞因子类制品费 -->  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.114" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="细胞因子类 制品费"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component> 
            </organizer> 
          </entry>  
          <!-- 耗材类费用 -->  
          <entry> 
            <organizer classCode="CLUSTER" moodCode="EVN"> 
              <statusCode/>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.038" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="一次性医用 材料费-检查用"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.040" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="一次性医用 材料费-治疗用"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component>  
              <component> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="HDSD00.11.039" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="一次性医用 材料费-手术用"/>  
                  <value xsi:type="MO" value="0" currency="元"/> 
                </observation> 
              </component> 
            </organizer> 
          </entry>  
          <!--其他费 -->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="HSDB05.10.130" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="其他费"/>  
              <value xsi:type="MO" value="0" currency="元"/> 
            </observation> 
          </entry> 
        </section> 
      </component>
	</xsl:template>
	
	<!--中医住院病案首页-->
	<xsl:template match="PaymentSources" mode="PaySources2">
		<component>
				<section>
					<code code="48768-6" displayName="PAYMENT SOURCES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<!--医疗付款方式 -->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE07.00.007.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医疗付款方式代码"/>
							<value xsi:type="CD" code="01" displayName="城镇职工基本医疗保险" codeSystem="2.16.156.10011.2.3.1.269" codeSystemName="医疗付费方式代码表"/>
						</observation>
					</entry>
					<!--住院总费用 -->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="HDSD00.12.169" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="住院总费用"/>
							<value xsi:type="MO" value="xxx" currency="元"/>
							<entryRelationship typeCode="COMP" negationInd="false">
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.170" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="住院总费用-自付金额（元）"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</entryRelationship>
						</observation>
					</entry>
					<!--综合医疗服务费 -->
					<entry>
						<organizer classCode="CLUSTER" moodCode="EVN">
							<statusCode/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.174" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-一般医疗服务费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.175" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-一般医疗服务费-中医辨证论治
费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.176" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-一般医疗服务费-中医辨证论治
会诊费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.177" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-一般治疗操作费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.172" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-护理费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.173" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="综合医疗服务费-其他费用"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
						</organizer>
					</entry>
					<!--诊断类服务费 -->
					<entry>
						<organizer classCode="CLUSTER" moodCode="EVN">
							<statusCode/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.136" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-病理诊断费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.138" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-实验室诊断费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.1139" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-影像学
诊断费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.137" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="诊断-临床诊断项目费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
						</organizer>
					</entry>
					<!--治疗类服务费 -->
					<entry>
						<organizer classCode="CLUSTER" moodCode="EVN">
							<statusCode/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.145" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-非手术治疗项目费"/>
									<value xsi:type="MO" value="0" currency="元"/>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="HDSD00.12.146" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-非手术
治疗项目费-临床物理治疗费"/>
											<value xsi:type="MO" value="0" currency="元"/>
										</observation>
									</entryRelationship>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.147" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-手术治疗费"/>
									<value xsi:type="MO" value="0" currency="元"/>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="HDSD00.12.148" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-手术治
疗费-麻醉费"/>
											<value xsi:type="MO" value="0" currency="元"/>
										</observation>
									</entryRelationship>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="HDSD00.12.149" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="治疗-手术治
疗费-手术费"/>
											<value xsi:type="MO" value="0" currency="元"/>
										</observation>
									</entryRelationship>
								</observation>
							</component>
						</organizer>
					</entry>
					<!--康复费类服务费 -->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="HDSD00.12.062" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="康复费"/>
							<value xsi:type="MO" value="0" currency="元"/>
						</observation>
					</entry>
					<!--以下三条目标识类true or false-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.243.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="使用医疗机构中药制剂"/>
							<value xsi:type="BL" value="true"/>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.245.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="使用中医诊疗技术标志"/>
							<value xsi:type="BL" value="true"/>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.180.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="辩证施护标志"/>
							<value xsi:type="BL" value="true"/>
						</observation>
					</entry>
					<!--以上三条为标志类条目-->
					<!--中医类费 -->
					<entry>
						<organizer classCode="CLUSTER " moodCode="EVN ">
							<statusCode/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.156" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医诊断费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.157" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医治疗费"/>
									<value xsi:type="MO" value="0" currency="元"/>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="HDSD00.12.163" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医
治疗费-中医外治"/>
											<value xsi:type="MO" value="0" currency="元"/>
										</observation>
									</entryRelationship>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="HDSD00.12.160" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医
治疗费-中医骨伤"/>
											<value xsi:type="MO" value="0" currency="元"/>
										</observation>
									</entryRelationship>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="HDSD00.12.158" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医
治疗费-针刺与灸法"/>
											<value xsi:type="MO" value="0" currency="元"/>
										</observation>
									</entryRelationship>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="HDSD00.12.162" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医
治疗费-中医推拿治疗"/>
											<value xsi:type="MO" value="0" currency="元"/>
										</observation>
									</entryRelationship>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="HDSD00.12.159" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医
治疗费-中医肛肠治疗"/>
											<value xsi:type="MO" value="0" currency="元"/>
										</observation>
									</entryRelationship>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="HDSD00.12.161" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医
治疗费-中医特殊治疗"/>
											<value xsi:type="MO" value="0" currency="元"/>
										</observation>
									</entryRelationship>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.153" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医其他治疗费"/>
									<value xsi:type="MO" value="0" currency="元"/>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="HDSD00.12.155" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医
其他费-中药特殊调配加工"/>
											<value xsi:type="MO" value="0" currency="元"/>
										</observation>
									</entryRelationship>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="HDSD00.12.154" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中医类-中医
治疗费-辩证施膳"/>
											<value xsi:type="MO" value="0" currency="元"/>
										</observation>
									</entryRelationship>
								</observation>
							</component>
						</organizer>
					</entry>
					<!--西药费 -->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="HDSD00.12.113" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="西药费"/>
							<value xsi:type="MO" value="193.79" currency="元"/>
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.114" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="西药费-抗菌药物费用"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</entryRelationship>
						</observation>
					</entry>
					<!--中药费 -->
					<entry>
						<organizer classCode="CLUSTER" moodCode="EVN">
							<statusCode/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.151" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中药费-中成药费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.150" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="中药费-中草药费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
						</organizer>
					</entry>
					<!-- 血液和血液制品类服务费 -->
					<entry>
						<organizer classCode="CLUSTER" moodCode="EVN">
							<statusCode/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.130" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="血费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.126" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="白蛋白类制品费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.128" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="球蛋白类制品费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<!-- 凝血因子类制品费 -->
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.127" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="凝血因子类制品费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<!--细胞因子类制品费 -->
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.129" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="细胞因子类制品费"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
						</organizer>
					</entry>
					<!-- 使用中医诊疗设备标志 -->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.244.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="使用中医诊疗设备标志"/>
							<value xsi:type="BL" value="true"/>
						</observation>
					</entry>
					<!--耗材类费用-->
					<entry>
						<organizer classCode="CLUSTER" moodCode="EVN">
							<statusCode/>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.045" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="一次性医用材料费-检查用"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.047" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="一次性医用材料费-治疗用"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="HDSD00.12.046" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="一次性医用材料费-手术用"/>
									<value xsi:type="MO" value="0" currency="元"/>
								</observation>
							</component>
						</organizer>
					</entry>
					<!--其他费 -->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="HDSD00.12.092" codeSystem="2.16.156.10011.2.2.4" codeSystemName="住院病案首页基本数据集" displayName="其他费"/>
							<value xsi:type="MO" value="0" currency="元"/>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
	<!--中药处方、西药处方-->
	<xsl:template match="PaymentSources" mode="PaySources3">
		    <component>
				<section>
					<code code="48768-6" displayName="PAYMENT SOURCES" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE07.00.004.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="处方药品金额"/>
							<value xsi:type="MO" value="0" currency="元"/>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
	
</xsl:stylesheet>
