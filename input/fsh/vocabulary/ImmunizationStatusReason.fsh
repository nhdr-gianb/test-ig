ValueSet: ImmunizationStatusReason
Id: ImmunizationStatusReason
Title: "Immunization Status Reason Value Set"
Description: "A value set representing reasons for immunization status."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ImmunizationStatusReason"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* $ImmunizationStatusReasonCodeSystem#IMMUNE "immunity"
* $ImmunizationStatusReasonCodeSystem#MEDPREC "medical precaution"
* $ImmunizationStatusReasonCodeSystem#OSTOCK "product out of stock"
* $ImmunizationStatusReasonCodeSystem#PATOBJ "patient objection"
* include codes from system $SNOMED where concept is-a #310376006