ValueSet: ImmunizationStatus
Id: ImmunizationStatus
Title: "Immunization Status Value Set"
Description: "A value set representing the status of immunization."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ImmunizationStatus"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* include $ImmunizationStatusCodeSystem#completed "Completed"
* include $ImmunizationStatusCodeSystem#entered-in-error "Entered in Error" 
* include $ImmunizationStatusCodeSystem#not-done "Not Done"