<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		<!--适用文档：死亡病历讨论记录-->
		<xsl:template match="DiscussionSummary" mode="DSum">
				<!--讨论总结章节 -->
			<component>
				<section>
					<code code="DE06.00.018.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName=" 卫生信息数据元目录" displayName="主持人总结意见"/>
					<text>xxxx</text>
				</section>
			</component>
		</xsl:template>
	</xsl:stylesheet>

