Profile: PH_Base_Encounter
Parent: Encounter
Id: PH-Base-Encounter
Title: "PH Base Encounter"
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient. Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-Encounter"
* insert MetaData
* subject only Reference(PH_Base_Patient)
* hospitalization.destination only Reference(Location or PH_Base_Organization)
* serviceProvider only Reference(PH_Base_Organization)