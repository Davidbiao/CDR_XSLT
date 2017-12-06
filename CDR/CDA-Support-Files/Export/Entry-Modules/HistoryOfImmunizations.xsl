<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<!--适用文档  ：病历概要-->
<xsl:template match="HistoryOfImmunizations" mode="HOI1">
	   <component>
				<section>
					<code code="11369-6" codeSystem="2.16.840.1.113883.6.1" displayName="HISTORYOF IMMUNIZATIONS" codeSystemName="LOINC"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE02.10.101.00" displayName="预防接种史" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
							<value xsi:type="ST">xxx</value>
						</observation>
					</entry>
				</section>
			</component>
</xsl:template>	


</xsl:stylesheet>
