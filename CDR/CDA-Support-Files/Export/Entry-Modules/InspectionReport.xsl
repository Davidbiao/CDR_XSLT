<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<!--适用文档：检验报告-->
	<xsl:template match="InspectionReport" mode="IRep">
		 <!--检验报告章节-->  
      <component> 
        <section> 
          <code displayName="检验报告"/>  
          <text/>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE04.50.130.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检验报告结果"/>  
              <value xsi:type="ST">xxxx</value> 
            </observation> 
          </entry>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE08.10.026.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检验报告科室"/>  
              <value xsi:type="ST">xxxx</value> 
            </observation> 
          </entry>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE08.10.013.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检验报告机构名称"/>  
              <value xsi:type="ST">xxxx</value> 
            </observation> 
          </entry>  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.179.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="检验报告备注"/>  
              <value xsi:type="ST">xxxx</value> 
            </observation> 
          </entry> 
        </section> 
      </component> 
	</xsl:template>
</xsl:stylesheet>