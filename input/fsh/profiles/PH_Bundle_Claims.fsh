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
    Patient 0..1 and
    Encounter 0..1 and
    Organization 0..1
* entry[Patient].fullUrl = "urn:uuid:patient" (exactly)
* entry[Encounter].fullUrl = "urn:uuid:encounter" (exactly)
* entry[Organization].fullUrl = "urn:uuid:organization" (exactly)