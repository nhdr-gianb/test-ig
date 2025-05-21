Profile: PH_Condition
Parent: Condition
Id: PH-Condition
Title: "PH Condition"
Description: "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Condition"
* insert MetaData
* meta.extension contains $RecordedDate named recordedDate 0..*
* meta.extension[recordedDate] only $RecordedDate
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* modifierExtension ..0
// * identifier ..0
* verificationStatus from $ConditionVerificationStatusVS (required)
* category from $ConditionCategoryVS (required)
* severity from $ConditionSeverityVS (required)
* code from $ICD10VS (required)
* bodySite from ConditionBodySiteVS (required)
* subject only Reference(PH_Patient)
* encounter only Reference(PH_Encounter)
* onset[x] only dateTime
* abatement[x] ..0
// * recordedDate ..0
* recorder ..0
* asserter ..0
* stage ..0
* evidence ..0
// * note ..0