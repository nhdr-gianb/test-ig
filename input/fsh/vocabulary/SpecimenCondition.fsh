ValueSet: SpecimenCondition
Id: SpecimenCondition
Title: "Specimen Condition Value Set"
Description: "A value set representing the condition of a specimen."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/SpecimenCondition"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* $SpecimenConditionCodeSystem#Frozen "Frozen"
* $SpecimenConditionCodeSystem#ThawedButCold "Thawed but cold"
* $SpecimenConditionCodeSystem#Warm "Warm"
* $SpecimenConditionCodeSystem#Positive "Positive"
* $SpecimenConditionCodeSystem#Negative "Negative"
* $SpecimenConditionCodeSystem#Undetermined "Undetermined"
* $SpecimenConditionCodeSystem#NotProcessed "Not Processed"