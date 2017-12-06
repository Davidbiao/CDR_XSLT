<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<!--适用文档  ：病危重通知书-->
	<xsl:template match="EducationNote" mode="EN1">
		
      <component> 
        <section> 
          <code code="34895-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="EDUCATION NOTE"/>  
          <text/>  
          <entry> 
            <!--病情概况以及主要抢救措施-->  
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.183.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病情概况以及主要抢救措施"/>  
              <value xsi:type="ST">xxx</value>  
              <!--病危（重）通知内容-->  
              <entryRelationship typeCode="COMP"> 
                <observation classCode="OBS" moodCode="EVN"> 
                  <code code="DE06.00.278.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病危（重）通知内容"/>  
                  <!--通知时间-->  
                  <effectiveTime value="xxx"/>  
                  <value xsi:type="ST">xxx</value> 
                </observation> 
              </entryRelationship> 
            </observation> 
          </entry> 
        </section> 
      </component> 
	</xsl:template>
	
	<!--适用文档  ：其他知情同意书-->
	<xsl:template match="EducationNote" mode="EN2">
		<component>
				<section>
					<code code="34895-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="EDUCATION NOTE"/>
					<text/>
					<!-- DE09.00.117.00知情同意书名称 -->
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE09.00.117.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="知情同意书名称"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE09.00.116.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="知情同意内容"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
				</section>
			</component>
	</xsl:template>

</xsl:stylesheet>
