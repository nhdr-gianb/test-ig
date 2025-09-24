Profile: PH_Address
Parent: Address
Id: PH-Address
Title: "PH Address"
Description: "An address for the individual."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Address"
* insert MetaData
* extension contains
    Region named regcode 0..* and
    Province named provcode 0..* and
    CityMunicipality named citycode 0..* and
    Barangay named bgycode 0..*