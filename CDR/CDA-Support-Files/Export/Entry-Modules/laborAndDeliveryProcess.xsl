<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<!--适用文档  ：阴道分娩记录-->
	<xsl:template match="laborAndDeliveryProcess" mode="LADP1">
		<component>
			<section>
				<code code="57074-7" displayName="labor and delivery process" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC"/>
				<text/>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.098.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="预产期"/>
						<value xsi:type="TS" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.224.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="临产日期时间"/>
						<value xsi:type="TS" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.154.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎膜破裂日期时间"/>
						<value xsi:type="TS" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.30.058.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="前羊水性状"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.30.057.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="前羊水量（mL）"/>
						<value xsi:type="PQ" value="xxx" unit="ml"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.250.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫缩开始日期时间"/>
						<value xsi:type="TS" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.021.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="第1产程时长（min）"/>
						<value xsi:type="PQ" value="xxx" unit="min"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.250.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫口开全日期时间"/>
						<value xsi:type="TS" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.019.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="第2产程时长（min）"/>
						<value xsi:type="PQ" value="xxx" unit="min"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE02.01.014.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎儿娩出日期时间"/>
						<value xsi:type="TS" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.020.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="第3产程时长（min）"/>
						<value xsi:type="PQ" value="xxx" unit="min"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.273.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎盘娩出日期时间"/>
						<value xsi:type="TS" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.236.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="总产程时长（min）"/>
						<value xsi:type="PQ" value="xxx" unit="min"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.01.044.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎方位代码"/>
						<value xsi:type="CD" code="xxx" displayName="xxx" codeSystem="2.16.156.10011.2.3.1.106" codeSystemName="胎方位代码表"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.311.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎儿娩出助产标志"/>
						<value xsi:type="BL" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.312.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="助产方式"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.157.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎盘娩出情况"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.156.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="胎膜完整情况标志"/>
						<value xsi:type="BL" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.30.063.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="羊水性状"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.30.061.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="羊水量（mL）"/>
						<value xsi:type="PQ" value="xxx" unit="ml"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.30.055.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="脐带长度（cm）"/>
						<value xsi:type="PQ" value="xxx" unit="cm"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.30.059.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="绕颈身（周）"/>
						<value xsi:type="PQ" value="xxx" unit="周"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.145.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="脐带异常情况标志"/>
						<value xsi:type="BL" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE08.50.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产时用药"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.295.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="预防措施"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.165.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产妇会阴切开标志"/>
						<value xsi:type="BL" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.252.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会阴切开位置"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.011.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产妇会阴缝合针数"/>
						<value xsi:type="INT" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.01.003.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产妇会阴裂伤程度代码"/>
						<value xsi:type="CD" code="xxx" displayName="xxx" codeSystem="2.16.156.10011.2.3.1.109" codeSystemName="会阴裂伤情况代码表"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.253.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会阴血肿标志"/>
						<value xsi:type="BL" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.254.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会阴血肿大小"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.213.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会阴血肿处理"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.073.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉方法代码"/>
						<value xsi:type="CD" code="xxx" displayName="xxx" codeSystem="2.16.156.10011.2.3.1.159" codeSystemName="麻醉方法代码表"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE08.50.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="麻醉药物名称"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.163.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="阴道裂伤标志"/>
						<value xsi:type="BL" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.164.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="阴道血肿标志"/>
						<value xsi:type="BL" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.249.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫颈裂伤标志"/>
						<value xsi:type="BL" value="xxx"/>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.200.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫颈缝合情况"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE08.50.022.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="产后用药"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.182.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="分娩过程摘要"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.245.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="宫缩情况"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.233.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="子宫情况"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.10.025.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="恶露状况"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE05.10.137.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="会阴情况"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE06.00.284.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="修补手术过程"/>
						<value xsi:type="ST">xxx</value>
					</observation>
				</entry>
				<entry>
					<observation classCode="OBS" moodCode="EVN">
						<code code="DE04.50.138.00" codeSystem="2.16.156.10011.2.2.1" codeSystemName="卫生信息数据元目录" displayName="存脐带血情况标志"/>
						<value xsi:type="BL" value="xxx"/>
					</observation>
				</entry>
			</section>
		</component>
	</xsl:template>
	
</xsl:stylesheet>
