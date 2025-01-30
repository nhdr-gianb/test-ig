Profile: PHNhdrProcedure
Parent: Procedure
Id: ph-nhdr-procedure
* extension contains
    ph-nhdr-ext-organization named organization 0..* and
    ph-nhdr-recorded-date named recordedDate 0..* and
    ph-nhdr-illness-class named illnessClass 0..*
* extension[organization] ^short = "The facility where the procedure was done"
* extension[organization] ^definition = "The facility where the procedure was done"
* extension[recordedDate] ^short = "This is the date the procedure was recorded in NHDR"
* extension[recordedDate] ^definition = "This is the date the procedure was recorded in NHDR"
* extension[illnessClass] ^short = "Illness code of the disease as listed in Philhealth"
* extension[illnessClass] ^definition = "Illness code of the disease as listed in Philhealth"
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* partOf ..0
* status = #http://example.org/fhir/ValueSet/ProcedureStatusValueSet (exactly)
* status from ph-nhdr-procedure-status (required)
* statusReason ..0
* code from ph-nhdr-procedure-code (example)
* recorder ..0
* asserter ..0
* performer ..0
* location ..0
* reasonCode ..0
* reasonReference ..0
* bodySite from ph-nhdr-procedure-body-site (example)
* report ..0
* complication ..0
* complicationDetail ..0
* followUp ..0
* focalDevice ..0
* usedReference ..0
* usedCode ..0