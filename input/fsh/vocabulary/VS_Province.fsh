ValueSet: ProvinceVS
Id: ProvinceVS
Title: "Province Codes"
Description: "Province codes from the Philippine Standard Geographic Codes"
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ProvinceVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2025-03-20"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $PSGCVS
// * include codes from system $PSGCCS where concept is-a #_Province