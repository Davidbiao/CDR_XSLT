<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		<!--适用文档：一般护理记录-->
		<xsl:template match="Limbs" mode="Limb">
			<!--四肢章节-->
			<component>
				<section>
					<code code="10196-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="EXTREMITIES"/>
					<text/>
					<entry>
						<observation classCode="OBS" moodCode="EVN">
							<code code="DE04.10.237.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="足背动脉搏动标志"/>
							<value xsi:type="BL" value="xxxx"/>
						</observation>
					</entry>
				</section>
			</component>
		</xsl:template>
	</xsl:stylesheet>
