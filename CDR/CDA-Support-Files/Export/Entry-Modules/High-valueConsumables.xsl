<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!--适用文档：高值耗材使用-->
<xsl:template match="High-valueConsumables" mode="High">
	<!--高值耗材章节（同用药章节） -->
			<component>
				<section>
					<code code="10160-0" codeSystem="2.16.840.1.113883.6.1" displayName="HISTORY
OF MEDICATION USE" codeSystemName="LOINC"/>
					<text/>
					<entry>
						<substanceAdministration classCode="SBADM" moodCode="EVN">
							<text/>
							<!--使用途径：DE06.00.242.00-->
							<routeCode nullFlavor="OTH">
								<originalText>xxxx</originalText>
							</routeCode>
							<!--耗材数量DE06.00.241.00、耗材单位DE08.50.034.00 -->
							<doseQuantity value="xxxx" unit="mg"/>
							<consumable>
								<manufacturedProduct>
									<!--产品编码-->
									<id/>
									<manufacturedMaterial>
										<!--材料名称 -->
										<code/>
										<name>xxxx</name>
									</manufacturedMaterial>
									<manufacturerOrganization>
										<name>产品生产厂家</name>
										<asOrganizationPartOf>
											<wholeOrganization>
												<name>产品供应商</name>
											</wholeOrganization>
										</asOrganizationPartOf>
									</manufacturerOrganization>
								</manufacturedProduct>
							</consumable>
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE08.50.035.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产品供应商"/>
									<value xsi:type="ST"/>
								</observation>
							</entryRelationship>
							<entryRelationship typeCode="COMP">
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE08.50.058.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="植入性耗材标志"/>
									<!-- 植入性耗材标志：DE08.50.058.00 -->
									<value xsi:type="BL" value="xxxx"/>
								</observation>
							</entryRelationship>
						</substanceAdministration>
					</entry>
				</section>
			</component>
</xsl:template>

</xsl:stylesheet>
