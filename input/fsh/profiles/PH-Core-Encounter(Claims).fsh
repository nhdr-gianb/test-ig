Profile: PH-Core-Encounter-Claims
Parent: PH-Base-Encounter
Id: PH-Core-Encounter-Claims
Title: "PH Core Encounter"
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient. Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Core-Encounter-Claims"
* insert MetaData
* extension contains AgeYears named ageYears 0..1
* subject only Reference(PH_Base_Patient)
* hospitalization.destination only Reference(Location or PH_Base_Organization)
* serviceProvider only Reference(PH_Base_Organization)