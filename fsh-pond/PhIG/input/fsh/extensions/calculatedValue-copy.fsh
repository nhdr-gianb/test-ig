Extension: calculatedValue-copy
Id: calculatedValue-copy
Title: "calculatedValue"
Description: "The name of an expression in a referenced library that determines a calculated value."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue-copy"
* ^status = #draft
* ^date = "2015-05-30"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/dss"
* . ^short = "A calculated value"
* . ^definition = "The name of an expression in a referenced library that determines a calculated value."
* url = "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue" (exactly)
* value[x] 1..
* value[x] only string