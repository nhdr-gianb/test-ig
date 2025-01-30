Profile: PHNhdrImmunization
Parent: Immunization
Id: ph-nhdr-immunization
* extension contains ph-nhdr-ext-organization named extOrganization 0..*
* extension[extOrganization] ^short = "Organization where the immunization was conducted"
* extension[extOrganization] ^definition = "Organization where the immunization was conducted."
* status from ph-nhdr-immunization-status (required)
* vaccineCode from ph-nhdr-immunization-vaccine-code (example)
* primarySource ..0
* reportOrigin from ph-nhdr-immunization-report-origin (example)
* location ..0
* manufacturer ..0
* lotNumber ..0
* expirationDate ..0
* site ..0
* route from ph-nhdr-immunization-route (example)
* performer ..0
* reasonCode from ph-nhdr-immunization-status-reason (example)
* reasonReference ..0
* isSubpotent ..0
* subpotentReason ..0
* education ..0
* programEligibility ..0
* fundingSource ..0
* protocolApplied ..0