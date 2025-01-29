Profile: PHNhdrDiagnosticReport
Parent: DiagnosticReport
Id: ph-nhdr-diagnostic-report
* extension contains ph-nhdr-ext-organization named extOrganization 0..*
* extension[extOrganization] ^short = "Health facility where the diagnosis was made"
* extension[extOrganization] ^definition = "Health facility where the diagnosis was made"
* basedOn ..0
* code from DiagnosticReportCode (preferred)
* performer ..0
* resultsInterpreter ..0
* imagingStudy ..0
* media ..0
* presentedForm ..0