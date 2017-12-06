<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<!--适用文档  ：住院病案首页  中医住院病案首页-->
	<xsl:template match="ReasonForReferral" mode="RFR1">
		<component> 
        <section> 
          <code code="42349-1" displayName="REASON FOR REFERRAL" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <!--转科条目-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code/>  
              <!--转科原因（数据元）-->  
              <author> 
                <time/>  
                <assignedAuthor> 
                  <id/>  
                  <representedOrganization> 
                    <!--住院患者转科科室名称-->  
                    <name>xxx</name> 
                  </representedOrganization> 
                </assignedAuthor> 
              </author> 
            </observation> 
          </entry> 
        </section> 
      </component>  
	</xsl:template>
	
	<!--适用文档  ：转科记录-->
	<xsl:template match="ReasonForReferral" mode="RFR2">
			<component>
				<section>
					<code displayName="转科记录"/>
					<text/>
					<entry>
						<observation classCode="OBS " moodCode="EVN">
							<code code="DE06.00.314.00" displayName="转科记录类型" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="CD" code="xxx" codeSystem="2.16.156.10011.2.3.2.56" codeSystemName="转科记录类型代码表" displayName="转入记录"/>
						</observation>
					</entry>
					<!--转出科室-->
					<entry>
						<observation classCode="OBS " moodCode="EVN ">
							<code code="1020100" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="转出科室名称"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
					<!--转入科室-->
					<entry>
						<observation classCode="OBS " moodCode="EVN ">
							<code code="1020100" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="转入科室名称"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
					<!--转科目的-->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE06.00.315.00" displayName="转科目的" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>
</xsl:stylesheet>
