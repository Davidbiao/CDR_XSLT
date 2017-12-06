<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:isc="http://extension-functions.intersystems.com" xmlns:exsl="http://exslt.org/common" xmlns:set="http://exslt.org/sets" exclude-result-prefixes="isc xsi sdtc exsl set">

	<!-- EventReason parameter is accepted from HS.UI.Push.SendMessage.  Currently used for "Reason for Referral" only. -->
	<!-- EventReason is re-cast to match case-sensitivity conventions of the existing XSL. -->
	<xsl:param name="EventReason"/>
	<xsl:param name="eventReason" select="$EventReason"/>
	<xsl:param name="documentUniqueId" select="''"/>

	<!-- Global variable to hold the current date/time -->
	<xsl:variable name="currentDateTime" select="isc:evaluate('timestamp')"/>
	
	<!-- Global variable to hold the configuration found in the site's export profile -->
	<xsl:variable name="exportConfiguration" select="document('../../Site/ExportProfile.xml')/exportConfiguration"/>
	
	<!-- Global variables to hold lower case string and upper case string -->
	<xsl:variable name="lowerCase" select="'abcdefghijklmnopqrstuvwxyz'"/>
	<xsl:variable name="upperCase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
	
	<!-- Global variables to hold required nullFlavor values -->
	<xsl:variable name="idNullFlavor" select="'UNK'"/>
	
	<!-- Global variable to hold valid LOINC vital sign codes. -->
	<xsl:variable name="loincVitalSignCodes">|9279-1|8867-4|2710-2|8480-6|8462-4|8310-5|8302-2|8306-3|8287-5|3141-9|</xsl:variable>

	<xsl:variable name="homeCommunityCode" select="isc:evaluate('getHomeCommunityCode')"/>
	<xsl:variable name="homeCommunityOID" select="isc:evaluate('getOIDForCode', $homeCommunityCode, 'HomeCommunity')"/>
	<xsl:variable name="homeCommunityName" select="isc:evaluate('getDescriptionForOID', $homeCommunityOID)"/>

	<xsl:variable name="homeCommunityInformation">
		<Organization>
			<Code><xsl:value-of select="$homeCommunityCode"/></Code>
			<Description><xsl:value-of select="$homeCommunityName"/></Description>
			<Address>
				<Street><xsl:value-of select="isc:evaluate('getConfigValue', '\HomeCommunity\Address\StreetLine1')"/></Street>
				<City>
					<Code><xsl:value-of select="isc:evaluate('getConfigValue', '\HomeCommunity\Address\City')"/></Code>
					<Description><xsl:value-of select="isc:evaluate('getConfigValue', '\HomeCommunity\Address\City')"/></Description>
				</City>
				<State>
					<Code><xsl:value-of select="isc:evaluate('getConfigValue', '\HomeCommunity\Address\State')"/></Code>
					<Description><xsl:value-of select="isc:evaluate('getConfigValue', '\HomeCommunity\Address\State')"/></Description>
				</State>
				<Zip>
					<Code><xsl:value-of select="isc:evaluate('getConfigValue', '\HomeCommunity\Address\Zip')"/></Code>
					<Description><xsl:value-of select="isc:evaluate('getConfigValue', '\HomeCommunity\Address\Zip')"/></Description>
				</Zip>
				<Country>
					<Code><xsl:value-of select="isc:evaluate('getConfigValue', '\HomeCommunity\Address\Country')"/></Code>
					<Description><xsl:value-of select="isc:evaluate('getConfigValue', '\HomeCommunity\Address\Country')"/></Description>
				</Country>
			</Address>
			<ContactInfo>
				<WorkPhoneNumber><xsl:value-of select="isc:evaluate('getConfigValue', '\HomeCommunity\Telecom\WorkPhone')"/></WorkPhoneNumber>
			</ContactInfo>
		</Organization>
	</xsl:variable>
	<xsl:variable name="homeCommunity" select="exsl:node-set($homeCommunityInformation)"/>
	
	<xsl:variable name="legalAuthenticatorInformation">
		<Contact>
			<Name>
				<GivenName><xsl:value-of select="isc:evaluate('getConfigValue', '\LegalAuthenticator\Name\Given')"/></GivenName>
				<FamilyName><xsl:value-of select="isc:evaluate('getConfigValue', '\LegalAuthenticator\Name\Family')"/></FamilyName>
			</Name>
			<ContactType>
				<SDATableName>ContactType</SDATableName>
				<Code>F</Code>
				<Description>Agent</Description>
			</ContactType>
			<Address>
				<Street><xsl:value-of select="isc:evaluate('getConfigValue', '\LegalAuthenticator\Address\StreetLine1')"/></Street>
				<City>
					<Code><xsl:value-of select="isc:evaluate('getConfigValue', '\LegalAuthenticator\Address\City')"/></Code>
					<Description><xsl:value-of select="isc:evaluate('getConfigValue', '\LegalAuthenticator\Address\City')"/></Description>
				</City>
				<State>
					<Code><xsl:value-of select="isc:evaluate('getConfigValue', '\LegalAuthenticator\Address\State')"/></Code>
					<Description><xsl:value-of select="isc:evaluate('getConfigValue', '\LegalAuthenticator\Address\State')"/></Description>
				</State>
				<Zip>
					<Code><xsl:value-of select="isc:evaluate('getConfigValue', '\LegalAuthenticator\Address\Zip')"/></Code>
					<Description><xsl:value-of select="isc:evaluate('getConfigValue', '\LegalAuthenticator\Address\Zip')"/></Description>
				</Zip>
				<Country>
					<Code><xsl:value-of select="isc:evaluate('getConfigValue', '\LegalAuthenticator\Address\Country')"/></Code>
					<Description><xsl:value-of select="isc:evaluate('getConfigValue', '\LegalAuthenticator\Address\Country')"/></Description>
				</Country>
			</Address>
			<ContactInfo>
				<WorkPhoneNumber><xsl:value-of select="isc:evaluate('getConfigValue', '\LegalAuthenticator\Telecom\WorkPhone')"/></WorkPhoneNumber>
			</ContactInfo>
		</Contact>
	</xsl:variable>
	<xsl:variable name="legalAuthenticator" select="exsl:node-set($legalAuthenticatorInformation)"/>
</xsl:stylesheet>
