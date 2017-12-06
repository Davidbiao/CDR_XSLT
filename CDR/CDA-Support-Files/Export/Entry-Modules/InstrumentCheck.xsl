<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<!--适用文档：手术护理-->
	<xsl:template match="InstrumentCheck" mode="IChe">
				<!--器械物品核对章节-->
			<component>
				<section>
					<code displayName="术前器械物品核对"/>
					<text/>
					<!--术前-->
					<entry>
						<organizer classCode="CLUSTER" moodCode="EVN">
							<code/>
							<statusCode code="completed"/>
							<!--巡台护士-->
							<participant typeCode="ATND">
								<!--签名日期时间：DE09.00.053.00-->
								<time value="201210240910"/>
								<participantRole classCode="ASSIGNED">
									<id root="2.16.156.10011.1.4" extension="医务人员编码"/>
									<!--角色-->
									<code displayName="巡台护士"/>
									<!--巡台护士签名：DE02.01.039.00-->
									<playingEntity classCode="PSN" determinerCode="INSTANCE">
										<name>xxxx</name>
									</playingEntity>
								</participantRole>
							</participant>
							<!--器械护士-->
							<participant typeCode="ATND">
								<!--签名日期时间：DE09.00.053.00-->
								<time value="201210240910"/>
								<participantRole classCode="ASSIGNED">
									<id root="2.16.156.10011.1.4" extension="医务人员编码"/>
									<!--角色-->
									<code displayName="器械护士"/>
									<!--器械护士签名：DE02.01.039.00-->
									<playingEntity classCode="PSN" determinerCode="INSTANCE">
										<name>xxxx</name>
									</playingEntity>
								</participantRole>
							</participant>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE08.50.042.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术中所用物品名称"/>
									<value xsi:type="ST">xxxx</value>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="DE09.00.111.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术前清点标志"/>
											<value xsi:type="BL" value="xxxx"/>
										</observation>
									</entryRelationship>
								</observation>
							</component>
						</organizer>
					</entry>
					<!--关前核对-->
					<entry>
						<organizer classCode="CLUSTER" moodCode="EVN">
							<code/>
							<statusCode/>
							<!--巡台护士-->
							<participant typeCode="ATND">
								<!--签名日期时间：DE09.00.053.00-->
								<time value="201210240910"/>
								<participantRole classCode="ASSIGNED">
									<id root="2.16.156.10011.1.4" extension="医务人员编码"/>
									<!--角色-->
									<code displayName="巡台护士"/>
									<!--巡台护士签名：DE02.01.039.00-->
									<playingEntity classCode="PSN" determinerCode="INSTANCE">
										<name>xxxx</name>
									</playingEntity>
								</participantRole>
							</participant>
							<!--器械护士-->
							<participant typeCode="ATND">
								<!--签名日期时间：DE09.00.053.00-->
								<time value="201210240910"/>
								<participantRole classCode="ASSIGNED">
									<id root="2.16.156.10011.1.4" extension="医务人员编码"/>
									<!--角色-->
									<code displayName="器械护士"/>
									<!--器械护士签名：DE02.01.039.00-->
									<playingEntity classCode="PSN" determinerCode="INSTANCE">
										<name>xxxx</name>
									</playingEntity>
								</participantRole>
							</participant>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE08.50.042.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术中所用物品名称"/>
									<value xsi:type="ST">xxxx</value>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="DE06.00.204.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="关前核对标志"/>
											<value xsi:type="BL" value="xxxx"/>
										</observation>
									</entryRelationship>
								</observation>
							</component>
						</organizer>
					</entry>
					<!--关后核对-->
					<entry>
						<organizer classCode="CLUSTER" moodCode="EVN">
							<code/>
							<statusCode code="completed"/>
							<!--巡台护士-->
							<participant typeCode="ATND">
								<!--签名日期时间：DE09.00.053.00-->
								<time value="201210240910"/>
								<participantRole classCode="ASSIGNED">
									<id root="2.16.156.10011.1.4" extension="医务人员编码"/>
									<!--角色-->
									<code displayName="巡台护士"/>
									<!--巡台护士签名：DE02.01.039.00-->
									<playingEntity classCode="PSN" determinerCode="INSTANCE">
										<name>xxxx</name>
									</playingEntity>
								</participantRole>
							</participant>
							<!--器械护士-->
							<participant typeCode="ATND">
								<!--签名日期时间：DE09.00.053.00-->
								<time value="201210240910"/>
								<participantRole classCode="ASSIGNED">
									<id root="2.16.156.10011.1.4" extension="医务人员编码"/>
									<!--角色-->
									<code displayName="器械护士"/>
									<!--器械护士签名：DE02.01.039.00-->
									<playingEntity classCode="PSN" determinerCode="INSTANCE">
										<name>xxxx</name>
									</playingEntity>
								</participantRole>
							</participant>
							<component>
								<observation classCode="OBS" moodCode="EVN">
									<code code="DE08.50.042.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="术中所用物品名称"/>
									<value xsi:type="ST">术中所用物品名称</value>
									<entryRelationship typeCode="COMP">
										<observation classCode="OBS" moodCode="EVN">
											<code code="DE06.00.204.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="关后核对标志"/>
											<value xsi:type="BL" value="xxxx"/>
										</observation>
									</entryRelationship>
								</observation>
							</component>
						</organizer>
					</entry>
				</section>
			</component>
		</xsl:template>
</xsl:stylesheet>
