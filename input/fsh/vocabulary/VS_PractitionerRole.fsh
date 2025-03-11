ValueSet: PractitionerRoleVS
Id: PractitionerRoleVS
Description: "A value set representing the different roles a healthcare practitioner can perform within an organization or care setting."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/PractitionerRoleVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $PractitionerRoleCS
* include codes from system $SNOMED where concept is-a #223366009
* exclude $SNOMED#223366009