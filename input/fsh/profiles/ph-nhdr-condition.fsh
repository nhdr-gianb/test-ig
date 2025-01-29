Profile: PHNhdrCondition
Parent: Condition
Id: ph-nhdr-condition
* extension contains ph-nhdr-ext-organization named extOrganization 0..*
* extension[extOrganization] ^short = "Health facility where the encounter was"
* extension[extOrganization] ^definition = "Health facility where the encounter was"
* verificationStatus from ConditionVerificationStatusValueSet (required)
* category from ConditionCategoryValueSet (extensible)
* severity from ConditionSeverityValueSet (preferred)
* code from ConditionCodeValueSet (example)
* abatement[x] ..0
* recorder ..0
* asserter ..0
* stage ..0
* evidence ..0