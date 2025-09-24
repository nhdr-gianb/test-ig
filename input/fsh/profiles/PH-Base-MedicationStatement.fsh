Profile: PH_Base_MedicationStatement
Parent: MedicationStatement
Id: PH-Base-MedicationStatement
Title: "PH Base MedicationStatement"
Description: "A record of a medication that is being consumed by a patient. A MedicationStatement may indicate that the patient may be taking the medication now or has taken the medication in the past or will be taking the medication in the future. The source of this information can be the patient, significant other (such as a family member or spouse), or a clinician. A common scenario where this information is captured is during the history taking process during a patient visit or stay. The medication information may come from sources such as the patient's memory, from a prescription bottle, or from a list of medications the patient, clinician or other party maintains."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-MedicationStatement"
* insert MetaData
* extension contains
    EncounterExtension named encounter 0..* and
    OrganizationExtension named organization 0..1

//  Marked as minimum data sets from the JAO
* extension[organization] MS