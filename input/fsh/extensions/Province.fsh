Extension: Province
Id: Province
Context: Address
Description: "Code of the province from the standard geographic code."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* insert MetaData
* url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province" (exactly)
* value[x] only Coding
* value[x] from $ProvinceVS (required)