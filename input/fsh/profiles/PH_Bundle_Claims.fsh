Profile: PH_Bundle_Claims
Parent: Bundle
Id: PH-Bundle-Claims
Title: "PH Bundle Claims"
Description: "Flattened profile of a Claims Bundle"
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Bundle-Claims"
* insert MetaData
* . ^short = "Flattened profile of a Claims Bundle"
* . ^definition = "Flattened profile of a Claims Bundle"
* entry MS
* entry.request.method = #POST (exactly)
* entry.request.url MS
* entry.fullUrl MS
* entry.modifierExtension ..0
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "fullUrl"
* entry ^slicing.rules = #open
* entry contains
    Patient 1..1 and
    Encounter 1..* and
    Organization 1..* and
    Claim 1..1
* entry[Patient].fullUrl = "urn:uuid:patient" (exactly)
* entry[Patient].resource.meta.profile = "https://test.ph/fhir/StructureDefinition/PH-Core-Patient-Claims" (exactly)
* entry[Patient].request.url = "Patient"
* entry[Patient].request.method = "POST"
* entry[Encounter].fullUrl = "urn:uuid:encounter" (exactly)
* entry[Encounter].resource.meta.profile = "https://test.ph/fhir/StructureDefinition/PH-Base-Encounter" (exactly)
* entry[Encounter].request.url = "Encounter"
* entry[Encounter].request.method = "POST"
* entry[Organization].fullUrl = "urn:uuid:organization" (exactly)
* entry[Organization].resource.meta.profile = "https://test.ph/fhir/StructureDefinition/PH-Base-Organization" (exactly)
* entry[Organization].request.url = "Organization"
* entry[Organization].request.method = "POST"
* entry[Claim].fullUrl = "urn:uuid:claim" (exactly)
* entry[Claim].resource = "Claim" (pattern)
* entry[Claim].request.url = "Claim"
* entry[Claim].request.method = "POST"