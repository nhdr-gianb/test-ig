Profile: PH_Core_Encounter_Claims
Parent: PH-Base-Encounter
Id: PH-Core-Encounter-Claims
Title: "PH Core Encounter (Claims)"
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient. Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Core-Encounter-Claims"
* insert MetaData
* extension[ageYears] 1..* MS
* extension[ageMonths] ..0
* extension[ageDays] ..0
* extension[patientClassification] ..0
* extension[interviewer] ..0
* extension[investigatorName] ..0
* extension[dateInterview] ..0
* extension[dateInvestigation] ..0
* extension[reporterName] ..0
* hospitalization.destination only Reference(Location or PH_Base_Organization)
* serviceProvider only Reference(PH_Base_Organization)