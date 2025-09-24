Profile: PH_Base_MedicationAdministration
Parent: MedicationAdministration
Id: PH-Base-MedicationAdministration
Title: "PH Base MedicationAdministration"
Description: "A record of a patient actually consuming a medicine, or if it has otherwise been administered to them.  Describes the event of a patient consuming or otherwise being administered a medication. This may be as simple as swallowing a tablet or it may be a long running infusion. Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-MedicationAdministration"
* insert MetaData
* extension contains
    EncounterExtension named encounter 0..* and
    OrganizationExtension named organization 0..1 and
    RecordedDate named recordedDate 0..1

//  Marked as minimum data sets from the JAO
* extension[organization] MS
* extension[recordedDate] MS