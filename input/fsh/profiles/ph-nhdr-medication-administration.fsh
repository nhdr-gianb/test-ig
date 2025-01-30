Profile: PHNhdrMedicationAdministration
Parent: MedicationAdministration
Id: ph-nhdr-medication-administration
* extension contains
    ph-nhdr-ext-organization named extOrganization 0..* and
    ph-nhdr-ext-encounter named extEncounter 0..* and
    ph-nhdr-recorded-date named recordedDate 0..*
* extension[extOrganization] ^short = "The health facility code where the medication was administered."
* extension[extOrganization] ^definition = "The health facility code where the medication was administered."
* extension[extEncounter] ^short = "The encounter when the medicine was consumed or administered."
* extension[extEncounter] ^definition = "The encounter when the medicine was consumed or administered."
* extension[recordedDate] ^short = "The recordedDate represents when this particular Medication Administration record was uploaded into the NHDR."
* extension[recordedDate] ^definition = "The recordedDate represents when this particular Medication Administration record was uploaded into the NHDR."
* instantiates ..0
* partOf ..0
* status from ph-nhdr-medical-administration-status (required)
* statusReason ..0
* category ..0
* context ..0
* supportingInformation ..0
* performer ..0
* reasonCode ..1
* reasonReference ..1
* dosage ^definition = "Indicates how the medication is/was or should be taken by the patient."
* dosage.extension ..0
* eventHistory ..0