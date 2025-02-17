Alias: $sex = http://hl7.org/fhir/administrative-gender

ValueSet: SexValueSet
Id: SexValueSet
Title: "Sex"
Description: "Person's sex at birth"
// * include codes from system $sex
// * exclude $sex#other
// * exclude codes from system $sex where concept is-a #other
// I still haven't figure out how to expand ValueSet
* $sex#male "Male"
* $sex#female "Female"
* $sex#unknown "Unknown"

