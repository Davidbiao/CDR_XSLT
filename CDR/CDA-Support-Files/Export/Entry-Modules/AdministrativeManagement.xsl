<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	
	
    <!--住院病案首页、中医住院病案首页-->
    
	<xsl:template match="AdministrativeManagement" mode="Management1">
	  <component> 
        <section> 
          <code displayName="行政管理"/>  
          <text/>  
          <!--亡患者尸检标志-->  
          <entry typeCode="COMP"> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE09.00.108.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="死亡患者尸检标志"/>  
              <value xsi:type="BL" value="true"/> 
            </observation> 
          </entry>  
          <!--病案质量-->  
          <entry> 
            <observation classCode="OBS" moodCode="EVN"> 
              <code code="DE09.00.103.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="病案质量"/>  
              <!-- 质控日期 -->  
              <effectiveTime value="20120109"/>  
              <value xsi:type="CD" code="1" displayName="甲" codeSystem="2.16.156.10011.2.3.2.29" codeSystemName="病案质量等级表"/>  
              <author> 
                <time/>  
                <assignedAuthor> 
                  <id root="2.16.156.10011.1.4" extension="医务人员编码"/>  
                  <code displayName="质控医生"/>  
                  <assignedPerson> 
                    <name>xxx</name> 
                  </assignedPerson> 
                </assignedAuthor> 
              </author>  
              <author> 
                <time/>  
                <assignedAuthor> 
                  <id root="2.16.156.10011.1.4" extension="医务人员编码"/>  
                  <code displayName="质控护士"/>  
                  <assignedPerson> 
                    <name>xxx</name> 
                  </assignedPerson> 
                </assignedAuthor> 
              </author> 
            </observation> 
          </entry> 
        </section> 
      </component>
	</xsl:template>
	
</xsl:stylesheet>
