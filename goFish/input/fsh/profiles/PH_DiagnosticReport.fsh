Profile: PH_DiagnosticReport
Parent: DiagnosticReport
Id: PH_DiagnosticReport
* ^url = "https://example.org/fhir/StructureDefinition/PH_DiagnosticReport"
* ^status = #draft
* extension contains Ext_Organization named extOrganization 0..*
* extension[extOrganization] ^short = "Health facility where the diagnosis was made"
* extension[extOrganization] ^definition = "Health facility where the diagnosis was made"
* extension[extOrganization] ^comment = "This is an extension"
* extension[extOrganization] ^isModifier = false
* basedOn ..0
* code from DiagnosticReportCode (preferred)
* performer ..0
* resultsInterpreter ..0
* imagingStudy ..0
* media ..0
* presentedForm ..0