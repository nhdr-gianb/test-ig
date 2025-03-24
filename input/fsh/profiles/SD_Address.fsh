Profile: PH_Address
Parent: Address
Id: PH-Address
Description: "An address for the individual."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Address"
* ^status = #draft
* extension contains
    Region named region 0..* and
    Province named province 0..* and
    CityMunicipality named cityMunicipality 0..* and
    Barangay named barangay 0..*
* extension[region] from $VS_Region (extensible)
* ^isModifier = false
* extension[province] from $VS_Province (extensible)
* ^isModifier = false
* extension[cityMunicipality] from $VS_City (extensible)
* ^isModifier = false
* extension[barangay] from $VS_Barangay (extensible)
* ^isModifier = false