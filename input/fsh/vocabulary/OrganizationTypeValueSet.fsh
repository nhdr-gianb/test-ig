Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $organization-type-local = https://nhdr.gov.ph/fhir/CodeSystem/OrganizationTypeLocal

ValueSet: OrganizationType
Id: OrganizationType
Title: "OrganizationType"
Description: "A value set defining the different types of organizations involved in healthcare, such as hospitals, clinics, insurance providers, and regulatory bodies."
* ^status = #draft
* include codes from system $organization-type
* include codes from system $organization-type-local