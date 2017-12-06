<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		<!--适用文档：阴道分娩、剖宫产-->
		<xsl:template match="Newborn" mode="Nbor">
			<!-- 新生儿章节 -->  
      <component> 
        <section> 
          <code code="57075-4" displayName="newborn delivery information" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>  
          <text/>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE02.01.040.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="新生儿性别代码"/>  
              <value xsi:type="CD" code="xxxx" displayName="xxxx" codeSystem="2.16.156.10011.2.3.3.4" codeSystemName="生理性别代码表(GB/T 2261.1)"/> 
            </observation> 
          </entry>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE04.10.019.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="新生儿出生体重（g）"/>  
              <value xsi:type="PQ" value="xxxx" unit="g"/> 
            </observation> 
          </entry>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE04.10.018.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="新生儿出生身长（cm）"/>  
              <value xsi:type="PQ" value="xxxx" unit="cm"/> 
            </observation> 
          </entry>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE05.10.168.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产瘤大小"/>  
              <value xsi:type="ST">xxxx</value> 
            </observation> 
          </entry>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE05.10.167.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产瘤部位"/>  
              <value xsi:type="ST">xxxx</value> 
            </observation> 
          </entry> 
        </section> 
      </component>  
		</xsl:template>
	</xsl:stylesheet>

	