<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	
<!--适用文档  ：门急诊病历-->
	<xsl:template match="ProviderOrders" mode="PO1">
		<component>
			<section>
				<code code="46209-3" codeSystem="2.16.840.1.113883.6.1" displayName="Provider
Orders" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<organizer classCode="CLUSTER" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.289.00" displayName="医嘱项目类型" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="CD" code="xxx" displayName="xxx" codeSystem="2.16.156.10011.2.3.1.268" codeSystemName="医嘱项目类型代码表"/>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.288.00" displayName="医嘱项目内容" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<effectiveTime>
									<!--医嘱计划开始日期时间-->
									<low value="xxx"/>
									<!--医嘱计划结束日期时间-->
									<high value="xxx"/>
								</effectiveTime>
								<!--医嘱计划信息-->
								<value xsi:type="ST">xxx</value>
								<!--执行者-->
								<performer>
									<!--医嘱执行日期时间：DE06.00.222.00-->
									<time value="xxx"/>
									<assignedEntity>
										<id root="2.16.156.10011.1.4"/>
										<!--角色-->
										<code displayName="医嘱执行者"/>
										<!--医嘱执行者签名：DE02.01.039.00-->
										<assignedPerson>
											<name>xxx</name>
										</assignedPerson>
										<!--医嘱执行科室：DE08.10.026.00-->
										<representedOrganization>
											<name>xxx</name>
										</representedOrganization>
									</assignedEntity>
								</performer>
								<!--作者：医嘱开立者-->
								<author>
									<!--医嘱开立日期时间：DE06.00.220.00-->
									<time value="xxx"/>
									<assignedAuthor>
										<id root="2.16.156.10011.1.4"/>
										<!--角色-->
										<code displayName="医嘱开立者"/>
										<!--医嘱开立者签名：DE02.01.039.00-->
										<assignedPerson>
											<name>xxx</name>
										</assignedPerson>
										<!--医嘱开立科室：DE08.10.026.00-->
										<representedOrganization>
											<name>xxx</name>
										</representedOrganization>
									</assignedAuthor>
								</author>
								<!--医嘱审核-->
								<participant typeCode="ATND">
									<!--医嘱审核日期时间：DE09.00.088.00-->
									<time value="xxx"/>
									<participantRole classCode="ASSIGNED">
										<id root="2.16.156.10011.1.4"/>
										<!--角色-->
										<code displayName="医嘱审核人"/>
										<!--医嘱审核人签名：DE02.01.039.00-->
										<playingEntity classCode="PSN" determinerCode="INSTANCE">
											<name>xxx</name>
										</playingEntity>
									</participantRole>
								</participant>
								<!--医嘱取消-->
								<participant typeCode="ATND">
									<!--医嘱取消日期时间：DE06.00.234.00-->
									<time value="xxx"/>
									<participantRole classCode="ASSIGNED">
										<id root="2.16.156.10011.1.4"/>
										<!--角色-->
										<code displayName="医嘱取消人"/>
										<!--取消医嘱者签名：DE02.01.039.00-->
										<playingEntity classCode="PSN" determinerCode="INSTANCE">
											<name>xxx</name>
										</playingEntity>
									</participantRole>
								</participant>
								<!--医嘱备注信息-->
								<entryRelationship typeCode="COMP">
									<observation classCode="OBS" moodCode="EVN">
										<code code="DE06.00.179.00" displayName="医嘱备注
信息" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
										<value xsi:type="ST">xxx</value>
									</observation>
								</entryRelationship>
								<!--医嘱执行状态-->
								<entryRelationship typeCode="COMP">
									<observation classCode="OBS" moodCode="EVN">
										<code code="DE06.00.290.00" displayName="医嘱执行
状态" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
										<value xsi:type="ST">xxx</value>
									</observation>
								</entryRelationship>
							</observation>
						</component>
					</organizer>
				</entry>
			</section>
		</component>
	</xsl:template>
	
<!--适用文档  ：急诊留观病历-->
	<xsl:template match="ProviderOrders" mode="PO2">
		<component>
			<section>
				<code code="46209-3" codeSystem="2.16.840.1.113883.6.1" displayName="Provider
Orders" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<organizer classCode="CLUSTER" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.289.00" displayName="医嘱项目类型" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="CD" code="xxx" displayName="xxx" codeSystem="2.16.156.10011.2.3.1.268" codeSystemName="医嘱项目类型代码表"/>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.288.00" displayName="医嘱项目内容" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<effectiveTime>
									<!--医嘱计划开始日期时间-->
									<low value="xxx"/>
									<!--医嘱计划结束日期时间-->
									<high value="xxx"/>
								</effectiveTime>
								<!--医嘱计划信息-->
								<value xsi:type="ST">xxx</value>
								<!--执行者-->
								<performer>
									<!--医嘱执行日期时间：DE06.00.222.00-->
									<time value="xxx"/>
									<assignedEntity>
										<id root="2.16.156.10011.1.4" extension="xxx"/>
										<code/>
										<!--医嘱执行者签名：DE02.01.039.00-->
										<assignedPerson>
											<name>xxx</name>
										</assignedPerson>
										<!--医嘱执行科室：DE08.10.026.00-->
										<representedOrganization>
											<name>xxx</name>
										</representedOrganization>
									</assignedEntity>
								</performer>
								<!--作者：医嘱开立者-->
								<author>
									<!--医嘱开立日期时间：DE06.00.220.00-->
									<time value="xxx"/>
									<assignedAuthor>
										<id root="2.16.156.10011.1.4" extension="xxx
"/>
										<!--医嘱开立者签名：DE02.01.039.00-->
										<assignedPerson>
											<name>xxx</name>
										</assignedPerson>
										<!--医嘱开立科室：DE08.10.026.00-->
										<representedOrganization>
											<name>xxx</name>
										</representedOrganization>
									</assignedAuthor>
								</author>
								<!--医嘱审核-->
								<participant typeCode="ATND">
									<!--医嘱审核日期时间：DE09.00.088.00-->
									<time value="xxx"/>
									<participantRole classCode="ASSIGNED">
										<id root="2.16.156.10011.1.4" extension="xxx"/>
										<!--角色-->
										<code displayName="医嘱审核人"/>
										<!--医嘱审核人签名：DE02.01.039.00-->
										<playingEntity classCode="PSN" determinerCode="INSTANCE">
											<name>xxx</name>
										</playingEntity>
									</participantRole>
								</participant>
								<!--医嘱取消-->
								<participant typeCode="ATND">
									<!--医嘱取消日期时间：DE06.00.234.00-->
									<time value="xxx"/>
									<participantRole classCode="ASSIGNED">
										<id root="2.16.156.10011.1.4" extension="xxx"/>
										<!--角色-->
										<code displayName="医嘱取消人"/>
										<!--取消医嘱者签名：DE02.01.039.00-->
										<playingEntity classCode="PSN" determinerCode="INSTANCE">
											<name>xxx</name>
										</playingEntity>
									</participantRole>
								</participant>
								<!--医嘱备注信息-->
								<entryRelationship typeCode="COMP">
									<observation classCode="OBS" moodCode="EVN">
										<code code="DE06.00.179.00" displayName="医嘱备注
信息" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
										<value xsi:type="ST">xxx</value>
									</observation>
								</entryRelationship>
								<!--医嘱执行状态-->
								<entryRelationship typeCode="COMP">
									<observation classCode="OBS" moodCode="EVN">
										<code code="DE06.00.290.00" displayName="医嘱执行
状态" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
										<value xsi:type="ST">xxx</value>
									</observation>
								</entryRelationship>
							</observation>
						</component>
					</organizer>
				</entry>
			</section>
		</component>
	</xsl:template>
	
<!--适用文档  ：24h入出院-->
	<xsl:template match="ProviderOrders" mode="PO3">
		<component>
			<section>
				<code code="46209-3" displayName="PROVIDER ORDERS" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<!--出院医嘱条目-->
				<entry>
					<observation classCode="OBS" moodCode="RQO">
						<code code="DE06.00.287.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院医"/>
						<!--出院医嘱开立日期时间-->
						<effectiveTime value="xxx"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	
<!--适用文档  ：日常病程   上级医师查房-->
	<xsl:template match="ProviderOrders" mode="PO4">
		<component>
			<section>
				<code code="46209-3" codeSystem="2.16.840.1.113883.6.1" displayName="Provider Orders" codeSystemName="LOINC"/>
				<title>住院医嘱</title>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.287.00" displayName="医嘱内容" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	
<!--适用文档  ：出院记录-->
	<xsl:template match="ProviderOrders" mode="PO5">
		<component>
			<section>
				<code code="46209-3" codeSystem="2.16.840.1.113883.6.1" displayName="Provider
Orders" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE08.50.047.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中药煎煮方法"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.136.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中药用药方法"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	
<!--适用文档  ：住院医嘱-->
	<xsl:template match="ProviderOrders" mode="PO6">
		<component>
			<section>
				<!--N:!!!-->
				<code code="46209-3" codeSystem="2.16.840.1.113883.6.1" displayName="Provider Orders" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.286.00" displayName="医嘱类别" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
						<value xsi:type="CD" code="xxx" displayName="xxx" codeSystem="2.16.156.10011.2.3.2.58" codeSystemName="医嘱类别代码表"/>
					</observation>
				</entry>
				<entry>
					<organizer classCode="CLUSTER" moodCode="EVN">
						<statusCode/>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.289.00" displayName="医嘱项目类型" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<value xsi:type="CD" code="xxx" displayName="xxx" codeSystem="2.16.156.10011.2.3.1.268" codeSystemName="医嘱项目类型代码表"/>
							</observation>
						</component>
						<component>
							<observation classCode="OBS" moodCode="EVN">
								<code code="DE06.00.288.00" displayName="医嘱项目内容" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
								<effectiveTime>
									<!--医嘱计划开始日期时间-->
									<low value="xxx"/>
									<!--医嘱计划结束日期时间-->
									<high value="xxx"/>
								</effectiveTime>
								<!--医嘱计划信息-->
								<value xsi:type="ST">xxx</value>
								<!--作者：医嘱开立者-->
								<author>
									<!--医嘱开立日期时间：DE06.00.220.00-->
									<time value="xxx"/>
									<assignedAuthor>
										<id root="2.16.156.10011.1.4" extension="xxx"/>
										<code displayName="医嘱开立者"/>
										<!--医嘱开立者签名：DE02.01.039.00-->
										<assignedPerson>
											<name>xxx</name>
										</assignedPerson>
										<!--医嘱开立科室：DE08.10.026.00-->
										<representedOrganization>
											<name>xxx</name>
										</representedOrganization>
									</assignedAuthor>
								</author>
								<!--医嘱审核-->
								<participant typeCode="ATND">
									<!--医嘱审核日期时间：DE09.00.088.00-->
									<time value="xxx"/>
									<participantRole classCode="ASSIGNED">
										<id root="2.16.156.10011.1.4" extension="xxx"/>
										<!--角色-->
										<code displayName="医嘱审核人"/>
										<!--医嘱审核人签名：DE02.01.039.00-->
										<playingEntity classCode="PSN" determinerCode="INSTANCE">
											<name>xxx</name>
										</playingEntity>
									</participantRole>
								</participant>
								<!--医嘱核对-->
								<participant typeCode="ATND">
									<!--医嘱核对日期时间：DE06.00.205.00-->
									<time value="xxx"/>
									<participantRole classCode="ASSIGNED">
										<id root="2.16.156.10011.1.4" extension="xxx"/>
										<!--角色-->
										<code displayName="医嘱核对人"/>
										<!--医嘱核对护士签名：DE02.01.039.00-->
										<playingEntity classCode="PSN" determinerCode="INSTANCE">
											<name>xxx</name>
										</playingEntity>
									</participantRole>
								</participant>
								<!--医嘱停止-->
								<participant typeCode="ATND">
									<!--医嘱停止日期时间：DE06.00.218.00-->
									<time value="xxx"/>
									<participantRole classCode="ASSIGNED">
										<id root="2.16.156.10011.1.4" extension="xxx"/>
										<!--角色-->
										<code displayName="医嘱停止人"/>
										<!--停止医嘱者签名：DE02.01.039.00-->
										<playingEntity classCode="PSN" determinerCode="INSTANCE">
											<name>xxx</name>
										</playingEntity>
									</participantRole>
								</participant>
								<!--医嘱取消-->
								<participant typeCode="ATND">
									<!--医嘱取消日期时间：DE06.00.234.00-->
									<time value="xxx"/>
									<participantRole classCode="ASSIGNED">
										<id root="2.16.156.10011.1.4" extension="xxx"/>
										<!--角色-->
										<code displayName="医嘱取消人"/>
										<!--取消医嘱者签名：DE02.01.039.00-->
										<playingEntity classCode="PSN" determinerCode="INSTANCE">
											<name>xxx</name>
										</playingEntity>
									</participantRole>
								</participant>
								<!--医嘱备注信息-->
								<entryRelationship typeCode="COMP">
									<observation classCode="OBS" moodCode="EVN">
										<code code="DE06.00.179.00" displayName="医嘱备注信息" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
										<value xsi:type="ST">xxx</value>
									</observation>
								</entryRelationship>
								<!--医嘱执行状态-->
								<entryRelationship typeCode="COMP">
									<observation classCode="OBS" moodCode="EVN">
										<code code="DE06.00.290.00" displayName="医嘱执行状态" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
										<value xsi:type="ST">xxx</value>
										<!--执行者-->
										<performer>
											<!--医嘱执行日期时间：DE06.00.222.00-->
											<time value="xxx"/>
											<assignedEntity>
												<id root="2.16.156.10011.1.4" extension="xxx"/>
												<code displayName="医嘱执行者"/>
												<!--医嘱执行者签名：DE02.01.039.00-->
												<assignedPerson>
													<name>xxx</name>
												</assignedPerson>
												<!--医嘱执行科室：DE08.10.026.00-->
												<representedOrganization>
													<name>xxx</name>
												</representedOrganization>
											</assignedEntity>
										</performer>
									</observation>
								</entryRelationship>
								<!--电子申请单编号：例如检查检验申请单编号？？？-->
								<entryRelationship typeCode="COMP">
									<observation classCode="OBS" moodCode="EVN">
										<code code="DE01.00.008.00" displayName="电子申请单编号" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
										<value xsi:type="ST">xxx</value>
									</observation>
								</entryRelationship>
								<!--处方药品组号：例如如果是用药医嘱的话指向处方单
号？？？-->
								<entryRelationship typeCode="COMP">
									<observation classCode="OBS" moodCode="EVN">
										<code code="DE08.50.056.00" displayName="处方药品组号" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录"/>
										<value xsi:type="ST">xxx</value>
									</observation>
								</entryRelationship>
							</observation>
						</component>
					</organizer>
				</entry>
			</section>
		</component>
	</xsl:template>
	
<!--适用文档  ：出院小结-->
	<xsl:template match="ProviderOrders" mode="PO7">
		<component>
			<section>
				<code code="46209-3" codeSystem="2.16.840.1.113883.6.1" displayName="Provider Orders" codeSystemName="LOINC"/>
				<text/>
				<!--HDSD00.16.049 DE08.50.047.00 中药煎煮方法 条目-->
				<entry>
					<observation classCode="OBS" moodCode="EVN ">
						<code code="DE08.50.047.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中药煎煮方法"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<!--HDSD00.16.050 DE06.00.136.00 中药用药方法 条目-->
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.136.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="中药用药方法"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<!--HDSD00.16.007 DE06.00.287.00 出院医嘱 条目-->
				<entry typeCode="COMP">
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.287.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="出院医"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
</xsl:stylesheet>
