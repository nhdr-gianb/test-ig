Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $organization-type-local = https://nhdr.gov.ph/fhir/CodeSystem/OrganizationTypeLocal

ValueSet: OrganizationType
Id: OrganizationType
Title: "OrganizationType"
* ^status = #draft
* include codes from system $organization-type
* include codes from system $organization-type-local