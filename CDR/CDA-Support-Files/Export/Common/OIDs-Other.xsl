<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:isc="http://extension-functions.intersystems.com" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0">

	<xsl:variable name="activeHealthManagementOID">2.16.840.1.113883.3.201</xsl:variable>
	<xsl:variable name="nationalProviderIdentifierOID">2.16.840.1.113883.4.6</xsl:variable>
	
	<xsl:variable name="snomedOID">2.16.840.1.113883.6.96</xsl:variable>
	<xsl:variable name="snomedName" select="isc:evaluate('getCodeForOID', $snomedOID, 'CodeSystem', 'SCT')"/>
	
	<xsl:variable name="loincOID">2.16.840.1.113883.6.1</xsl:variable>
	<xsl:variable name="loincName" select="isc:evaluate('getCodeForOID', $loincOID, 'CodeSystem', 'LN')"/>
	
	<xsl:variable name="nctisOID">1.2.36.1.2001.1001.101</xsl:variable>
	<xsl:variable name="nctisName" select="isc:evaluate('getCodeForOID', $nctisOID, 'CodeSystem', 'NCTIS Data Components')"/>
	
	
	<xsl:variable name="actClassOID">2.16.840.1.113883.5.6</xsl:variable>
	<xsl:variable name="actClassName" select="isc:evaluate('getCodeForOID', $actClassOID, 'CodeSystem', 'ActClass')"/>
	
	<xsl:variable name="actCodeOID">2.16.840.1.113883.5.4</xsl:variable>
	<xsl:variable name="actCodeName" select="isc:evaluate('getCodeForOID', $actCodeOID, 'CodeSystem', 'ActCode')"/>
	
	<xsl:variable name="actReasonOID">2.16.840.1.113883.5.8</xsl:variable>
	<xsl:variable name="actReasonName" select="isc:evaluate('getCodeForOID', $actReasonOID, 'CodeSystem', 'ActReason')"/>
	
	<xsl:variable name="actStatusOID">2.16.840.1.113883.5.14</xsl:variable>
	<xsl:variable name="actStatusName" select="isc:evaluate('getCodeForOID', $actStatusOID, 'CodeSystem', 'ActStatus')"/>
	
	<xsl:variable name="administrativeGenderOID">2.16.840.1.113883.5.1</xsl:variable>
	<xsl:variable name="administrativeGenderName" select="isc:evaluate('getCodeForOID', $administrativeGenderOID, 'CodeSystem', 'AdministrativeGender')"/>
	
	<xsl:variable name="cpt4OID">2.16.840.1.113883.6.12</xsl:variable>
	<xsl:variable name="cpt4Name" select="isc:evaluate('getCodeForOID', $cpt4OID, 'CodeSystem', 'C4')"/>
	
	<xsl:variable name="cpt5OID">2.16.840.1.113883.6.82</xsl:variable>
	<xsl:variable name="cpt5Name" select="isc:evaluate('getCodeForOID', $cpt5OID, 'CodeSystem', 'C5')"/>
	
	<xsl:variable name="cvxOID">2.16.840.1.113883.12.292</xsl:variable>
	<xsl:variable name="cvxName" select="isc:evaluate('getCodeForOID', $cvxOID, 'CodeSystem', 'CVX')"/>
	
	<xsl:variable name="dischargeDispositionOID">2.16.840.1.113883.12.112</xsl:variable>
	<xsl:variable name="dischargeDispositionName" select="isc:evaluate('getCodeForOID', $dischargeDispositionOID, 'CodeSystem', 'Discharge Disposition')"/>
	
	<xsl:variable name="healthcareServiceLocationOID">2.16.840.1.113883.6.259</xsl:variable>
	<xsl:variable name="healthcareServiceLocationName" select="isc:evaluate('getCodeForOID', $healthcareServiceLocationOID, 'CodeSystem', 'HealthcareServiceLocation')"/>
	
	<xsl:variable name="languageAbilityModeOID">2.16.840.1.113883.5.60</xsl:variable>
	<xsl:variable name="languageAbilityModeName" select="isc:evaluate('getCodeForOID', $languageAbilityModeOID, 'CodeSystem', 'LanguageAbilityMode')"/>
	
	<xsl:variable name="maritalStatusOID">2.16.840.1.113883.5.2</xsl:variable>
	<xsl:variable name="maritalStatusName" select="isc:evaluate('getCodeForOID', $maritalStatusOID, 'CodeSystem', 'MaritalStatus')"/>
	
	<xsl:variable name="nciThesaurusOID">2.16.840.1.113883.3.26.1.1</xsl:variable>
	<xsl:variable name="nciThesaurusName" select="isc:evaluate('getCodeForOID', $nciThesaurusOID, 'CodeSystem', 'NCI Thesaurus')"/>
	
	<!-- National Drug Codes -->
	<xsl:variable name="ndcOID">2.16.840.1.113883.6.69</xsl:variable>
	<xsl:variable name="ndcName" select="isc:evaluate('getCodeForOID', $ndcOID, 'CodeSystem', 'NDC')"/>
	
	<!-- National Quality Forum -->
	<xsl:variable name="nqfOID">2.16.840.1.113883.3.560.1</xsl:variable>
	<xsl:variable name="nqfName" select="isc:evaluate('getCodeForOID', $nqfOID, 'AssigningAuthority', 'NQF')"/>
	
	<!-- National Uniform Billing Committee - used for Admission Type -->
	<xsl:variable name="nubcUB92OID">2.16.840.1.113883.6.21</xsl:variable>
	<xsl:variable name="nubcUB92Name" select="isc:evaluate('getCodeForOID', $nubcUB92OID, 'CodeSystem', 'nubc-UB92')"/>
	
	<xsl:variable name="observationInterpretationOID">2.16.840.1.113883.5.83</xsl:variable>
	<xsl:variable name="observationInterpretationName" select="isc:evaluate('getCodeForOID', $observationInterpretationOID, 'CodeSystem', 'ObservationInterpretation')"/>
	
	<xsl:variable name="participationFunctionOID">2.16.840.1.113883.5.88</xsl:variable>
	<xsl:variable name="participationFunctionName" select="isc:evaluate('getCodeForOID', $participationFunctionOID, 'CodeSystem', 'ParticipationFunction')"/>
	
	<xsl:variable name="participationTypeOID">2.16.840.1.113883.5.90</xsl:variable>
	<xsl:variable name="participationTypeName" select="isc:evaluate('getCodeForOID', $participationTypeOID, 'CodeSystem', 'ParticipationType')"/>
	
	<xsl:variable name="providerRoleOID">2.16.840.1.113883.12.443</xsl:variable>
	<xsl:variable name="providerRoleName" select="isc:evaluate('getCodeForOID', $providerRoleOID, 'CodeSystem', 'Provider Role')"/>
	
	<xsl:variable name="raceAndEthnicityCDCOID">2.16.840.1.113883.6.238</xsl:variable>
	<xsl:variable name="raceAndEthnicityCDCName" select="isc:evaluate('getCodeForOID', $raceAndEthnicityCDCOID, 'CodeSystem', 'Race and Ethnicity - CDC')"/>
	
	<xsl:variable name="religiousAffiliationOID">2.16.840.1.113883.5.1076</xsl:variable>
	<xsl:variable name="religiousAffiliationName" select="isc:evaluate('getCodeForOID', $religiousAffiliationOID, 'CodeSystem', 'ReligiousAffiliation')"/>
	
	<xsl:variable name="roleClassOID">2.16.840.1.113883.5.110</xsl:variable>
	<xsl:variable name="roleClassName" select="isc:evaluate('getCodeForOID', $roleClassOID, 'CodeSystem', 'RoleClass')"/>
	
	<xsl:variable name="roleCodeOID">2.16.840.1.113883.5.111</xsl:variable>
	<xsl:variable name="roleCodeName" select="isc:evaluate('getCodeForOID', $roleCodeOID, 'CodeSystem', 'RoleCode')"/>
	
	<xsl:variable name="rxNormOID">2.16.840.1.113883.6.88</xsl:variable>
	<xsl:variable name="rxNormName" select="isc:evaluate('getCodeForOID', $rxNormOID, 'CodeSystem', 'RxNorm')"/>
	
	<xsl:variable name="specimenTypeOID">2.16.840.1.113883.5.129</xsl:variable>
	<xsl:variable name="specimenTypeName" select="isc:evaluate('getCodeForOID', $specimenTypeOID, 'CodeSystem', 'SpecimenType')"/>
	
	<!-- Unified Code for Units of Measure -->
	<xsl:variable name="ucumOID">2.16.840.1.113883.6.8</xsl:variable>
	<xsl:variable name="ucumName" select="isc:evaluate('getCodeForOID', $ucumOID, 'CodeSystem', 'UCUM')"/>
	
	<!-- Unique Ingredient Identifier -->
	<xsl:variable name="uniiOID">2.16.840.1.113883.4.9</xsl:variable>
	<xsl:variable name="uniiName" select="isc:evaluate('getCodeForOID', $uniiOID, 'CodeSystem', 'UNII')"/>
	
	<!-- X12N-1336 - used for Health Plan Type -->
	<xsl:variable name="x12n1336OID">2.16.840.1.113883.6.255.1336</xsl:variable>
	<xsl:variable name="x12n1336Name" select="isc:evaluate('getCodeForOID', $x12n1336OID, 'CodeSystem', 'X12N-1336')"/>
	
	
	

	
</xsl:stylesheet>
