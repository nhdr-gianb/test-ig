Profile: PHNhdrCondition
Parent: Condition
Id: ph-nhdr-condition
* extension contains ph-nhdr-ext-organization named extOrganization 0..*
* extension[extOrganization] ^short = "Health facility where the encounter was"
* extension[extOrganization] ^definition = "Health facility where the encounter was"
* verificationStatus from ph-nhdr-condition-verification-status (required)
* category from ph-nhdr-condition-category (extensible)
* severity from ph-nhdr-condition-severity (preferred)
* code from ph-nhdr-condition-code (example)
* abatement[x] ..0
* recorder ..0
* asserter ..0
* stage ..0
* evidence ..0