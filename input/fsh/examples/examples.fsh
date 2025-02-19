//  It's been a while since I last continued converting the exported example files from the Simplifier version of the PHCDI to FSH.
//  Will need to double check the alias list here (much later), as the list from the aliases.fsh file haven't been completely cleaned up yet.
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $ClinicalStatusValueSet = https://nhdr.gov.ph/fhir/ValueSet/ClinicalStatusValueSet
Alias: $ConditionVerificationStatusValueSet = http://nhdr.gov.ph/fhir/ValueSet/ConditionVerificationStatusValueSet
Alias: $ConditionCodeValueSet = http://nhdr.gov.ph/fhir/ValueSet/ConditionCodeValueSet
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: AllergyIntolerance
InstanceOf: PH_AllergyIntolerance
Usage: #example
* meta.lastUpdated = "2024-07-18T08:23:58.665+00:00"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/ExtOrganization"
* extension.valueReference = Reference(Organization/1)
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #medication
* code = $sct#7980 "Penicillin"
* code.text = "Penicillin"
* patient = Reference(Patient/1)
* onsetDateTime = "2024-07-01T10:00:00+08:00"
* reaction.substance = $sct#7980 "Penicillin"
* reaction.substance.text = "Penicillin"
* reaction.manifestation = $sct#271807003 "Rash"
* reaction.manifestation.text = "Rash"
* reaction.description = "Patient developed a rash after taking penicillin."
* reaction.onset = "2024-07-01T11:00:00+08:00"
* reaction.severity = #moderate

Instance: Appointment-1
InstanceOf: PH_Appointment
Usage: #example
* status = #yes
* start = "2024-07-20T09:00:00+08:00"
* participant.actor.reference = "Patient/example"
* participant.required = #required
* participant.status = #accepted
* requestedPeriod.start = "2024-07-20T09:00:00+08:00"
* requestedPeriod.end = "2024-07-20T09:30:00+08:00"

Instance: CarePlan-1
InstanceOf: PH_CarePlan
Usage: #example
// * id = "3512b500-6b4e-47dd-9c28-0bdf01077a8a"
* meta.lastUpdated = "2024-12-10T14:28:43.909+00:00"
* status = #active
* intent = #plan
* subject.reference = "Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f"

Instance: Condition-1
InstanceOf: PH_Condition
Usage: #example
* meta.lastUpdated = "2024-07-18T07:25:23.888+00:00"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Ext_Organization"
* extension.valueReference = Reference(Organization/example)
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#24484000 "Severe"
* code = $sct#44054006 "Diabetes mellitus type 2 (disorder)"
* code.text = "Diabetes mellitus type 2"
* subject = Reference(Patient/example)
* onsetDateTime = "2024-07-18T08:00:00+08:00"
* recordedDate = "2024-07-18T08:00:00+08:00"

Instance: 135e85e4-0364-4083-8873-4a99a94b076f
InstanceOf: PH_Condition
Usage: #example
* meta.lastUpdated = "2024-12-10T14:28:43.82+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH_Condition"
// * clinicalStatus = $ClinicalStatusValueSet#active
* verificationStatus = $ConditionVerificationStatusValueSet#confirmed
* code = $ConditionCodeValueSet#D123 "Diabetes Mellitus"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* onsetDateTime = "2024-12-01T12:00:00+08:00"

Instance: c07ea517-f959-4c56-841e-c0b60e8d860e
InstanceOf: DiagnosticReport
Usage: #example
* meta.lastUpdated = "2024-12-11T05:00:31.836+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH_DiagnosticReport"
* status = #final
* category = $v2-0074#LAB "Laboratory"
* code = $loinc#29965-3 "Rabies virus antibody test"
* code.text = "Rabies Virus Antibody Test"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* specimen = Reference(Specimen/7994709b-4350-4f91-b06f-4da782993a8b)
* result = Reference(Observation/b8b94d0f-3461-4cb3-a7d9-365482f2e24a)
* conclusion = "Positive for rabies virus antibodies"
* conclusionCode = $sct#422080000 "Rabies virus infection"


// Instance: Condition-1
// InstanceOf: PH_Condition
// Usage: #example
// * extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Ext_Organization"
// * extension.valueReference.reference = "Organization/example"
// * clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
// * clinicalStatus.coding.code = #active
// * clinicalStatus.coding.display = "Active"
// * verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
// * verificationStatus.coding.code = #confirmed
// * verificationStatus.coding.display = "Confirmed"
// * category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
// * category.coding.code = #problem-list-item
// * category.coding.display = "Problem List Item"
// * severity.coding.system = "http://snomed.info/sct"
// * severity.coding.code = #24484000
// * severity.coding.display = "Severe"
// * code.coding.system = "http://snomed.info/sct"
// * code.coding.code = #44054006
// * code.coding.display = "Diabetes mellitus type 2 (disorder)"
// * code.text = "Diabetes mellitus type 2"
// * subject.reference = "Patient/example"
// * onsetDateTime = "2024-07-18T08:00:00+08:00"
// * recordedDate = "2024-07-18T08:00:00+08:00"

Instance: Organization-1
InstanceOf: PH_Organization
Usage: #example
* id = "12345"
* meta.lastUpdated = "2024-07-18T06:40:29.709+00:00"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 734-677-7777"
* telecom[+].system = #fax
* telecom[=].value = "(+1) 734-677-6622"
* telecom[+].system = #email
* telecom[=].value = "organization@org.com"

Instance: Patient-1
InstanceOf: PH_Patient
Usage: #example
* meta.lastUpdated = "2024-07-12T14:07:16.25+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* implicitRules = "http://hl7.org/fhir/reference"
* language = #en-IN
* identifier.use = #usual
* identifier.system = "http://www.acme.com/identifiers/patient"
* identifier.value = "123456"
* active = true
* name.text = "Example Patient"
* name.family = "Patient"
* name.given = "Example"
* telecom.system = #phone
* telecom.value = "abc"
* telecom.use = #home
* deceasedBoolean = false
* address.use = #home
* address.type = #both
* address.text = "137 Nowhere Street, Erewhon 9132"
* address.line = "137 Nowhere Street"
* address.city = "Erewhon"
* address.district = "Madison"
* address.state = "abc"
* address.postalCode = "9132"
* address.country = "abc"
* maritalStatus.text = "abc"
* photo.url = "http://www.acme.com/logo-small.png"
* photo.title = "Official Corporate Logo"
// * managingOrganization = Reference(12345) "12345"