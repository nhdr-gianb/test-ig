Profile: PHNhdrEncounter
Parent: Encounter
Id: ph-nhdr-encounter
* extension contains
    ph-nhdr-age-years named ageYears 0..* and
    ph-nhdr-age-months named ageMonths 0..* and
    ph-nhdr-age-days named ageDays 0..* and
    ph-nhdr-patient-classification named patientClassification 0..* and
    ph-nhdr-interviewer named interviewer 0..* and
    ph-nhdr-investigator-name named investigatorName 0..* and
    ph-nhdr-date-interview named dateInterview 0..* and
    ph-nhdr-date-investigation named dateInvestigation 0..* and
    ph-nhdr-reporter-name named reporterName 0..*
    /* dangling reference - disabled (2)
     and
    ph-nhdr-illness-class named illnessClass 0..*
    */
* extension[ageYears] ^short = "Age in years"
* extension[ageYears] ^definition = "Age in years"


* extension[ageMonths] ^short = "Age in months"
* extension[ageMonths] ^definition = "Age in months"


* extension[ageDays] ^short = "Age in days"
* extension[ageDays] ^definition = "Age in days"


* extension[patientClassification] ^short = "Patient Classification"
* extension[patientClassification] ^definition = "Patient Classification"


* extension[interviewer] ^short = "Name of interviewer"
* extension[interviewer] ^definition = "Name of Interviewer at first point of contact"


* extension[investigatorName] ^short = "Name of Investigator / Assessor"
* extension[investigatorName] ^definition = "Name of Investigator / Assessor"


* extension[dateInterview] ^short = "Date of interview"
* extension[dateInterview] ^definition = "Date of interview"


* extension[dateInvestigation] ^short = "Date of investigation"
* extension[dateInvestigation] ^definition = "Date of investigation"

* extension[reporterName] ^short = "Name of reporter"
* extension[reporterName] ^definition = "Name of reporter"

/* dangling reference - disabled (2)
* extension[illnessClass] from $EncounterIllnessClassValueSet (extensible)
* extension[illnessClass] ^definition = "Class of illness"

* extension[illnessClass] ^binding.description = "valueset for case rates"
*/
* modifierExtension ..0
* identifier ^slicing.description = "These are the different encounter IDs"
* identifier ^slicing.rules = #open
* identifier contains
    philHealthID 0..1 and
    covidDataID 0..1 and
    covidPatientID 0..1
* identifier[philHealthID] ^short = "Philhealth code"
* identifier[philHealthID] ^definition = "A unique number or code assigned by the Philippine Health Insurance Corporation."
* identifier[covidDataID] ^short = "COVID Data ID"
* identifier[covidDataID] ^definition = "COVID Data Identification"
* identifier[covidPatientID] ^short = "COVID Patient ID"
* identifier[covidPatientID] ^definition = "COVID Patient Identification"
* statusHistory ..0
* classHistory ..0
* type ..1
* type from ph-nhdr-encounter-type (example)
* serviceType from ph-nhdr-encounter-service-type (example)
* priority ..0
* episodeOfCare ..0
* basedOn ..0
* participant ..0
* hospitalization.dischargeDisposition from ph-nhdr-encounter-hospitalization-discharge-disposition (extensible)
* location.physicalType from ph-nhdr-encounter-location-physical-type (extensible)
* serviceProvider ..0
* partOf ..0