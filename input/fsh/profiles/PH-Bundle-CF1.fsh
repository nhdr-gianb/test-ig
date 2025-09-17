Profile: PH-Bundle-CF1
Parent: Bundle
Id: PH-Bundle-CF1
Title: "PH Bundle CF1"
Description: "Bundle for Claims Form 1"
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Bundle-CF1"
* insert MetaData
* . ^short = "Bundle for Claims Form 1"
* . ^definition = "Bundle for Claims Form 1"
* entry MS
* entry.request.method = #POST (exactly)
* entry.request.url MS
* entry.fullUrl MS
* entry.modifierExtension ..0
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "fullUrl"
* entry ^slicing.rules = #open
* entry contains
    Patient 1..* and
    Organization 1..* and
    Claim 1..1 and
    Provenance 1..* and
    Coverage 1..* and
    RelatedPerson 1..*
* entry[Patient].fullUrl = "urn:uuid:patient" (exactly)
* entry[Patient].resource.meta.profile = "https://test.ph/fhir/StructureDefinition/PH-Core-Patient-Claims" (exactly)
* entry[Organization].fullUrl = "urn:uuid:organization" (exactly)
* entry[Organization].resource.meta.profile = "https://test.ph/fhir/StructureDefinition/PH-Base-Organization" (exactly)
* entry[RelatedPerson].fullUrl = "urn:uuid:relatedperson" (exactly)
* entry[RelatedPerson].resource.meta.profile = "https://test.ph/fhir/StructureDefinition/PH-Base-RelatedPerson" (exactly)