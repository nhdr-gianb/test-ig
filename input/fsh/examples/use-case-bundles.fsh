Instance: ClaimsForm1
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "CF1"
* entry[0].fullUrl = "urn:uuid:patient"
* entry[=].resource = CF1-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:person"
* entry[=].resource = CF1-Person
* entry[=].request.method = #POST
* entry[=].request.url = "Person"
* entry[+].fullUrl = "urn:uuid:organization"
* entry[=].resource = CF1-Organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:questionnaireresponse"
* entry[=].resource = CF1-QuestionnaireResponse
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse"

Instance: CF1-Patient
InstanceOf: Patient
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* identifier.type.coding.code = #NIIP
* identifier.type.text = "PhilHealth Identification Number"
* identifier.value = "PH12345"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension.valueCode = #M
* name.family = "Smith"
* name.given[0] = "Avery"
* name.given[+] = "Adams"
* name.suffix = "Mr."
* name.extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/MiddleName"
* name.extension.valueString = "Adams"
* birthDate = "1990-12-15"
* contact.relationship = #E "Employer"

Instance: CF1-Person
InstanceOf: Person
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Person"
* identifier.type.coding.code = #NIIP
* identifier.type.text = "PhilHealth Identification Number"
* identifier.value = "PH54321"
* name.family = "Doe"
* name.given[0] = "John"
* name.given[+] = "Cena"
* name.suffix = "Mr."
* name.extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/MiddleName"
* name.extension.valueString = "Cena"
* birthDate = "1994-06-25"
* address.line = "Wayward Road"
* address.extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay"
* address.extension[=].valueCoding = #0123456789 "Blue Ridge"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address.extension[=].valueCoding = #0123456 "Quezon City"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address.extension[=].valueCoding = #01234 "Metro Manila"
* address.country = "PH"
* address.postalCode = "1110"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension.valueCode = #M
* telecom[0].value = "912-00-00"
* telecom[+].value = "0927-000-0000"
* telecom[+].value = "johndoe@gmail.com"

Instance: CF1-Organization
InstanceOf: Organization
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* identifier.type.coding.code = #EN
* identifier.type.text = "PhilHealth Employer Number (PEN)"
* identifier.value = "EN15243"
* telecom.value = "080-00-00"
* name = "PhilHealth"

Instance: CF1-QuestionnaireResponse
InstanceOf: QuestionnaireResponse
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
* item.answer.valueBoolean = false
* item.linkId = "Patient is the member?"
* status = #in-progress