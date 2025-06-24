Extension: MemberType
Id: MemberType
Title: "Membership Type"
Context: Patient
Description: "Membership Type"
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/MemberType"
* insert MetaData
* value[x] only CodeableConcept
* value[x] from $MemberTypeVS (required)