Profile: PH_Base_Encounter
Parent: Encounter
Id: PH-Base-Encounter
Title: "PH Base Encounter"
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient. Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-Encounter"
* insert MetaData
* extension contains
    EncounterLength named length 0..* and
    AgeYears named ageYears 0..* and
    AgeMonths named ageMonths 0..* and
    AgeDays named ageDays 0..* and
    Interviewer named interviewer 0..* and
    PatientClassification named patientClassification 0..* and
    InvestigatorName named investigatorName 0..* and
    DateInterview named dateInterview 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    philhealthID 0..1 and
    covidDataID 0..1 and
    covidPatientID 0..1
* identifier[philhealthID].system = "http://nhdr.gov.ph/fhir/Identifier/philhealth-id"
* identifier[philhealthID].type.coding = #NIIP
* identifier[covidDataID].system = "http://nhdr.gov.ph/fhir/Identifier/coviddata-id"
* identifier[covidDataID].type.coding = #placeholder
* identifier[covidPatientID].system = "http://nhdr.gov.ph/fhir/Identifier/covidpatient-id"
* identifier[covidPatientID].type.coding = #COVID
* status ^short = "NHDR will only use \"triaged\", \"in-progress\", \"cancelled\", and \"finished\"."
* subject only Reference(PH_Base_Patient)
* hospitalization.destination only Reference(Location or PH_Base_Organization)
* serviceProvider only Reference(PH_Base_Organization)


//  Marked as minimum data sets from the JAO
* identifier MS
* subject MS
* serviceProvider MS
* status MS
* class MS
* period MS
* reasonCode MS
* diagnosis MS
* hospitalization.dischargeDisposition MS
* extension[length] MS
* extension[ageYears] MS
* extension[ageMonths] MS
* extension[ageDays] MS
* extension[interviewer] MS
* extension[patientClassification] MS
* extension[investigatorName] MS
* extension[dateInterview] MS