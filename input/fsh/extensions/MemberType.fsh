Extension: MemberType
Id: MemberType
Title: "Member Type"
Context: Patient
Description: "Member Type"
* ^url = "https://test.ph/fhir/StructureDefinition/MemberType"
* insert MetaData
* value[x] only CodeableConcept
* value[x] from $MemberTypeVS (required)