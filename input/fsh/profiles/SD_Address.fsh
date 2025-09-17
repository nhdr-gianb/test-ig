Profile: PH_Address
Parent: Address
Id: PH-Address
Title: "PH Address"
Description: "An address for the individual."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Address"
* insert MetaData
* extension contains
    Region named region 0..* and
    Province named province 0..* and
    CityMunicipality named cityMunicipality 0..* and
    Barangay named barangay 0..*