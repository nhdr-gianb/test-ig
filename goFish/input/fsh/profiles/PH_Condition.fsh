Profile: PH_Condition
Parent: Condition
Id: PH_Condition
* ^url = "https://example.org/fhir/StructureDefinition/PH_Condition"
* ^status = #draft
* extension contains Ext_Organization named extOrganization 0..*
* extension[extOrganization] ^short = "Health facility where the encounter was"
* extension[extOrganization] ^definition = "Health facility where the encounter was"
* extension[extOrganization] ^comment = "This is an extension"
* extension[extOrganization] ^isModifier = false
* clinicalStatus.coding from ClinicalStatusValueSet (required)
* verificationStatus from ConditionVerificationStatusValueSet (required)
* category from ConditionCategoryValueSet (extensible)
* severity from ConditionSeverityValueSet (preferred)
* code from ConditionCodeValueSet (example)
* bodySite from ConditionBodySiteValueSet (example)
* abatement[x] ..0
* recorder ..0
* asserter ..0
* stage ..0
* evidence ..0