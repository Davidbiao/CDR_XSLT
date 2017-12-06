<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<!--适用文档  ：住院病程，术前小结-->
	<xsl:template match="CaseAbstract" mode="Case">
		<!--病历摘要章节-->
		<component>
			<section>
				<code code="DE06.00.182.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName=" 卫生信息数据元目录" displayName="病历摘要章节"/>
				<text>xxxx</text>
			</section>
		</component>
	</xsl:template>
</xsl:stylesheet>
