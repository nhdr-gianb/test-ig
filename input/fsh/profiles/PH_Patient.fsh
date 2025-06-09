Profile: PH_Patient
Parent: Patient
Id: PH-Patient
Title: "PH Patient"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* insert MetaData
* . ^short = "Information about an individual receiving health care services"
* . ^definition = "Demographics and other administrative information about an individual receiving care or other health-related services. The data in the resource covers the \"who\" information about the patient. Its attributes are focused on the demgraphic information necessary to support the administrative, financial and logistical procedures."
// * id ..0
// * meta ..0
* meta.extension contains $RecordedDate named recordedDate 0..*
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    $Nationality named nationality 0..* and
    Religion named religion 0..* and
    IndigenousGroup named indigenousGroup 0..* and
    IndigenousPeople named indigenousPeople 0..* and
    SpouseName named spouseName 0..* and
    FatherName named fatherName 0..* and
    MotherName named motherName 0..* and
    Occupation named occupation 0..* and
    Sex named sex 0..1 and
    Race named race 0..1 and
    MemberType named memberType 0..1 and
    PatientType named patientType 0..1 and
    EducationalAttainment named educationalAttainment 0..1 and
    $Signature named signature 0..*
* modifierExtension ..0
* identifier only $PhilHealthID or $RegistrationNo or $OtherID 
* identifier
// * active ..0
* name
* name.extension ..0
* name.id ..0
* name.use ..0
* name.prefix ..0
* name.period ..0
* name.text ..0
* telecom.id ..0
* telecom.extension ..0
* telecom.use ..0
* telecom.rank ..0
* telecom.period ..0
* gender from $GenderVS (required)
// * birthDate ..0
* deceased[x]
* address only $SD_Address
* maritalStatus from $MaritalStatusVS (required)
* multipleBirth[x] ..0
// * photo ..0
* contact.modifierExtension ..0
* contact.relationship from $RelationshipTypeVS (required)
* contact.name.id ..0
* contact.name.use ..0
* contact.name.prefix ..0
* contact.name.period ..0
* contact.name.text ..0
* contact.telecom.id ..0
* contact.telecom.use ..0
* contact.telecom.rank ..0
* contact.telecom.period ..0
* contact.gender ..0
* contact.organization ..0
* contact.period ..0
* contact.address only $SD_Address
* contact.extension contains $Signature named signature 0..*
* communication ..0
* generalPractitioner only Reference(PH_Organization)
* generalPractitioner ^definition = "Patient's nominated care provider. Pertains to the Konsulta Health Care Provider"
* managingOrganization ..0
* link ..0