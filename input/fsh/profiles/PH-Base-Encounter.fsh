Profile: PH_Base_Encounter
Parent: Encounter
Id: PH_Base_Encounter
Title: "PH Base Encounter"
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient. Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-Encounter"
* insert MetaData
* extension contains
    AgeYears named ageYears 0..* and
    AgeMonths named ageMonths 0..* and
    AgeDays named ageDays 0..* and
    PatientClassification named patientClassification 0..* and
    Interviewer named interviewer 0..* and
    InvestigatorName named investigatorName 0..* and
    DateInterview named dateInterview 0..* and
    DateInvestigation named dateInvestigation 0..* and
    ReporterName named reporterName 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    PhilHealthID 0..1 and
    COVIDDataID 0..1 and
    COVIDPatientID 0..1
* identifier[PhilHealthID].system = "http://nhdr.gov.ph/fhir/Identifier/philhealth-id"
* identifier[PhilHealthID].type.coding = #NIIP
* identifier[COVIDDataID].system = "http://nhdr.gov.ph/fhir/Identifier/coviddata-id"
* identifier[COVIDDataID].type.coding = #placeholder
* identifier[COVIDPatientID].system = "http://nhdr.gov.ph/fhir/Identifier/covidpatient-id"
* identifier[COVIDPatientID].type.coding = #COVID
* status ^short = "NHDR will only use \"triaged\", \"in-progress\", \"cancelled\", and \"finished\"."
* subject only Reference(PH_Base_Patient)
* hospitalization.destination only Reference(Location or PH_Base_Organization)
* serviceProvider only Reference(PH_Base_Organization)