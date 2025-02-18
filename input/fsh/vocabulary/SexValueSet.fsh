// Alias: $sex = http://hl7.org/fhir/administrative-gender
// Alias: $sex = http://terminology.hl7.org/CodeSystem/v2-0001
// Moved Alias to compiled Alias list

ValueSet: SexValueSet
Id: SexValueSet
Title: "Sex"
Description: "Person's sex at birth"
* include codes from system $sex
* exclude $sex#O
* exclude $sex#A
* exclude $sex#N
* exclude $sex#X
// * exclude codes from system $sex where concept is-a #O
// * $sex#male "Male"
// * $sex#female "Female"
// * $sex#unknown "Unknown"