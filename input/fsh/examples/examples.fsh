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
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $cvx = http://hl7.org/fhir/sid/cvx

Instance: Allergy-Intolerance-1
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
* status = #Y
* start = "2024-07-20T09:00:00+08:00"
* participant.actor.reference = "Patient/example"
* participant.required = #required
* participant.status = #accepted
* requestedPeriod.start = "2024-07-20T09:00:00+08:00"
* requestedPeriod.end = "2024-07-20T09:30:00+08:00"

Instance: Care-Plan-1
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
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/ExtOrganization"
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

Instance: Condition-2
InstanceOf: PH_Condition
Usage: #example
* meta.lastUpdated = "2024-12-10T14:28:43.82+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Condition"
// * clinicalStatus = $ClinicalStatusValueSet#active
* verificationStatus = $ConditionVerificationStatusValueSet#confirmed
* code = $ConditionCodeValueSet#D123 "Diabetes Mellitus"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* onsetDateTime = "2024-12-01T12:00:00+08:00"

Instance: Diagnostic-Report-1
InstanceOf: DiagnosticReport
Usage: #example
* meta.lastUpdated = "2024-12-11T05:00:31.836+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-DiagnosticReport"
* status = #final
* category = $v2-0074#LAB "Laboratory"
* code = $loinc#29965-3 "Rabies virus antibody test"
* code.text = "Rabies Virus Antibody Test"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* specimen = Reference(Specimen/7994709b-4350-4f91-b06f-4da782993a8b)
* result = Reference(Observation/b8b94d0f-3461-4cb3-a7d9-365482f2e24a)
* conclusion = "Positive for rabies virus antibodies"
* conclusionCode = $sct#14168008 "Rabies"


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

Instance: Encounter-1
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-07-18T06:52:48.696+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeYears"
* extension[=].valueInteger = 30
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeMonths"
* extension[=].valueInteger = 0
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeDays"
* extension[=].valueInteger = 0
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/PatientClassification"
* extension[=].valueString = "Inpatient"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Interviewer"
* extension[=].valueHumanName.use = #official
* extension[=].valueHumanName.family = "Santos"
* extension[=].valueHumanName.given = "Maria"
* extension[=].valueHumanName.prefix = "Ms."
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/InvestigatorName"
* extension[=].valueHumanName.use = #official
* extension[=].valueHumanName.family = "Reyes"
* extension[=].valueHumanName.given = "Juan"
* extension[=].valueHumanName.prefix = "Dr."
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/DateInterview"
* extension[=].valueDateTime = "2024-07-18T08:00:00+08:00"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/DateInvestigation"
* extension[=].valueDateTime = "2024-07-19T10:00:00+08:00"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/ReporterName"
* extension[=].valueHumanName.use = #official
* extension[=].valueHumanName.family = "Dela Cruz"
* extension[=].valueHumanName.given = "Luis"
* extension[=].valueHumanName.prefix = "Mr."
* identifier.use = #official
* identifier.type = $v2-0203#FI "Philhealth code"
* identifier.system = "https://nhdr.gov.ph/fhir/philHealthID"
* identifier.value = "PH123456"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $sct#183452005 "General examination of patient (procedure)"
* subject = Reference(Patient/1)
* period.start = "2024-07-18T08:00:00+08:00"
* period.end = "2024-07-18T10:00:00+08:00"
* location.location = Reference(Location/example) "General Hospital Room"
* location.status = #completed

Instance: Encounter-2
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-10T21:58:34.129+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-AFP
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T03:38:57.499+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#FLACCIDPARALYSIS "Flaccid Paralysis Encounter"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-COVID
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:30:08.628+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#COVIDENC "COVID-19 Encounter"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Diphteria
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:23:04.041+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#DIPENC "Diphtheria Encounter"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-HFMD
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:29:16.468+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#HFMDENC "Hand, Foot, and Mouth Disease Encounter"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Influenza
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:18:19.428+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#FLUENC "Influenza Encounter"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Leptospirosis
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:19:32.378+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#LEPTENC "Leptospirosis Encounter"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Malaria
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:21:00.067+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#MALENC "Malaria Encounter"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Meningococcal
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:28:20.763+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#MENINGENC "Meningococcal Encounter"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Neonatal-Tetanus
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:24:46.2+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#TETNEOENC "Neonatal Tetanus Encounter"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Non-Neonatal-Tetanus
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:27:08.506+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#TETNNENC "Non-Neonatal Tetanus Encounter"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Pertussis
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:25:50.083+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#PERTENC "Pertussis Encounter"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Rotavirus
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:17:08.573+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#ROTAENC "Rotavirus Encounter"
* subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Immunization-Rabies
InstanceOf: PH_Immunization
Usage: #example
* meta.lastUpdated = "2024-12-11T05:00:31.924+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Immunization"
* status = #completed
* vaccineCode = $cvx#40 "Rabies vaccine, for intramuscular injection"
* vaccineCode.text = "Rabies Vaccine"
* patient = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)
* occurrenceDateTime = "2024-12-10"
* note.text = "Rabies vaccine administered as post-exposure prophylaxis."

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
* language = #en-IN
* identifier[0].use = #official
* identifier[=].type.coding.code = #NIIP
* identifier[=].value = "PH12345"
* identifier[+].use = #secondary
* identifier[=].type.coding.code = #DL
* identifier[=].value = "DL12345"
* identifier[+].use = #secondary
* identifier[=].type.coding.code = #PPN
* identifier[=].value = "PPN25"
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
* birthDate = 2025-12-12
// * managingOrganization = Reference(12345) "12345"