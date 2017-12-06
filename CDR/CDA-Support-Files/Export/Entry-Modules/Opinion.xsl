<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		<!--适用文档：手术知情同意书、麻醉知情同意书、输血治疗同意书、其他知情同意书-->
		<xsl:template match="Opinion" mode="Opin1">
			<!--意见章节-->  
      <component> 
        <section> 
          <code displayName="意见章节"/>  
          <text/>  
          <!--医疗机构意见-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.018.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医疗机构的意见"/>  
              <value xsi:type="ST">xxxx</value> 
            </observation> 
          </entry>  
          <!--患者意见-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.018.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="患者的意见"/>  
              <value xsi:type="ST">xxxx</value> 
            </observation> 
          </entry> 
        </section> 
      </component>  
		</xsl:template>
		<!--适用文档：特殊检查及治疗同意书-->
		<xsl:template match="Opinion" mode="Opin2">
			 <!--意见章节-->  
      <component> 
        <section> 
          <code displayName="意见章节"/>  
          <text/>  
          <!--医疗机构意见-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.018.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="医疗机构的意见"> 
                <qualifier> 
                  <name displayName=" 医疗机构意见"/> 
                </qualifier> 
              </code>  
              <value xsi:type="ST">xxxx</value> 
            </observation> 
          </entry>  
          <!--患者意见-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE06.00.018.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"> 
                <qualifier> 
                  <name displayName="患者意见 "/> 
                </qualifier> 
              </code>  
              <value xsi:type="ST">xxxx</value> 
            </observation> 
          </entry> 
        </section> 
      </component> 
		</xsl:template>
		
	</xsl:stylesheet>