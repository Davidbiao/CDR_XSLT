<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		<!--适用文档：死亡病历讨论记录-->
		<xsl:template match="DiscussContent" mode="DCon">
				<!--讨论内容章节-->
			<component>
				<section>
					<code code="DE06.00.181.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName=" 卫生信息数据元目录" displayName="死亡讨论记录"/>
					<text> xxxx</text>
				</section>
			</component>
		</xsl:template>
	</xsl:stylesheet>
