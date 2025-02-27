ValueSet: EncounterHospitalizationDischargeDispositionValueSet
Id: EncounterHospitalizationDischargeDispositionValueSet
Title: "Encounter Hospitalization Discharge Disposition Value Set"
Description: "This valueset contains a set of discharge disposition codes used to document the status or disposition of a patient after hospitalization."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/EncounterHospitalizationDischargeDispositionValueSet"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2024-11-26"
* ^publisher = "NHDR"
* ^contact.name = "Support Team"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "support@example.org"
* ^jurisdiction = urn:iso:std:iso:3166#PH "Philippines"
* ^immutable = false
* include codes from system $EncounterHospitalizationDischargeDisposition
* include $EncounterHospitalizationDischargeDisposition#R "Recovered"
* include $EncounterHospitalizationDischargeDisposition#I "Improved"
* include $EncounterHospitalizationDischargeDisposition#A "Absconded"