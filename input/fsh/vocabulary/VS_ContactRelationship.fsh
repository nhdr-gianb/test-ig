ValueSet: ContactRelationshipVS
Id: ContactRelationshipVS
Description: "A value set representing various types of relationships to the patient."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ContactRelationshipVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $ContactRelationshipCS1
* include codes from system $ContactRelationshipCS2 where concept is-a #_PersonalRelationshipRoleType
