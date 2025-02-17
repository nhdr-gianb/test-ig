Alias: $sex = http://hl7.org/fhir/administrative-gender

ValueSet: SexValueSet
Id: SexValueSet
Title: "Sex"
Description: "Person's Sex at Birth"
// * include codes from system $sex
// * exclude $sex#others
* $sex#male "Male"
* $sex#female "Female"
* $sex#unknown "Unknown"