<html>
    <style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style>
    <ul class="nav nav-tabs">
        <li><a href="CF1.html">Content</a></li>
        <li class="active"><a href="#">Mappings</a></li>
        <li><a href="CF1-1.html">Sample JSON Bundles</a></li>
        <!-- <li><a href="CF1-2-json.html">JSON 2</a></li> -->
    </ul>
</html>

| <center>Form Field</center> | <center>FHIR Mapping <i>(profile)</i></center> | <center>Data Type <i>(profile)</i></center> | <center>Cardinality</center> | <center>Length</center> | <center>ValueSet</center> |
|:---------|:------------|:---------|:--------:|:-----------:|:--------:|
| Series #| Claim.identifier| Identifier | 0..1 | 15 | --- |
| **Part I - Member Information** | | | | | |
| PhilHealth Identification Number (PIN) of Member | RelatedPerson.identifier | Identifier([PhilHealthID](StructureDefinition-PhilHealthID.html)) | 0..* | 12 | --- |
| Name of Member (Last Name) | RelatedPerson.name.family | String | 0..* | 60 | --- |
| Name of Member (First Name) | RelatedPerson.name.given[**0**] | String | 0..* | 60 | --- |
| Name of Member (Name Extension) | RelatedPerson.name.suffix | String | 0..* | 5 | --- |
| Name of Member (Middle Name) | RelatedPerson.name.given[**1**]  | String | 0..* | 60 | --- |
| Date of Birth | RelatedPerson.birthDate | date | 0..1 | 10 | --- |
| Mailing Address (Unit/Room No./Floor) | RelatedPerson.address.line | String | 0..* | 150 | --- |
| Mailing Address (Building Name) | RelatedPerson.address.line | String | 0..* | 150 | --- |
| Mailing Address (Lot/Blk/House/Bldg. No.) | RelatedPerson.address.line | String | 0..* | 150 | --- |
| Mailing Address (Street) | RelatedPerson.address.line | String | 0..* | 150 | --- |
| Mailing Address (Subdivision/Village) | RelatedPerson.address.line | String | 0..* | 150 | --- |
| Mailing Address (Barangay) | RelatedPerson.address.extension:barangay | Coding | 0..1 | 150 | [Barangay](ValueSet-BarangayVS.html) |
| Mailing Address (City/Municipality) | RelatedPerson.address.extension:cityMunicipality | Coding | 0..1 | 150 | [City](ValueSet-CityVS.html) |
| Mailing Address (Province) | RelatedPerson.address.extension:province | Coding | 0..1 | 150 | [Province](ValueSet-ProvinceVS.html) |
| Mailing Address (Country) | RelatedPerson.address.country | **Coding** | 0..* | 150 | ~~Country~~ |
| Mailing Address (Zip Code) | RelatedPerson.address.postalCode | **Coding** | 0..* | 4 | ~~PostalCode~~ |
| Sex | RelatedPerson.extension:sex | CodeableConcept | 0..1 | 1 | [Sex](ValueSet-SexVS.html) |
| Contact Information Landline # (Area Code + Tel. No.) | RelatedPerson.telecom.value | string | 0..1 | 20 | --- |
| Contact Information (Mobile #) | RelatedPerson.telecom.value | string | 0..* | 20 | --- |
| Contact Information (Email Address) | RelatedPerson.telecom.value | string | 0..* | 156 | --- |
| Patient is the member? [Yes, Proceed to Part III] | Questionnaire.item.text | string | 0..1 | 1 | --- |
| **Part II - Patient Information** | | | | | |
| PhilHealth Identification Number (PIN) of Patient | Patient.identifier | Identifier([PhilHealthID](StructureDefinition-PhilHealthID.html)) | 0..1 | 12 | --- |
| Name of Patient (Last Name) | Patient.name.family | String | 0..* | 60 | --- |
| Name of Patient (First Name) | Patient.name.given[**0**] | String | 0..* | 60 | --- |
| Name of Patient (Name Extension) | Patient.name.suffix | String | 0..* | 5 | --- |
| Name of Patient (Middle Name) | Patient.name.given[**1**] | String | 0..* | 60 | --- |
| Date of Birth | Patient.birthDate | date | 0..1 | 10 | --- |
| Relationship to Member | Patient.contact.relationship | CodeableConcept | 0..* | --- | [Contact Relationship](ValueSet-ContactRelationshipVS.html) |
| Sex | Patient.extension:sex | CodeableConcept | 0..1 | 1 | [Sex](ValueSet-SexVS.html) |
| **Part III - Member Certification** | | | | | |
| Signature Type | Provenance.signature.type | Coding | 1..* | --- | [Signature Type](https://hl7.org/fhir/R4/valueset-signature-type.html) |
| Signature Image | Provenance.signature.data | base64Binary | 0..1 | --- | --- |
| Signature Name | Provenance.signature.who | Reference([PH_Patient](StructureDefinition-PH-Patient.html) or [PH_Organization](StructureDefinition-PH-Organization.html) or [PH_Practitioner](StructureDefinition-PH-Practitioner.html) or [PH_PractitionerRole](StructureDefinition-PH-PractitionerRole.html) or [PH_RelatedPerson](StructureDefinition-PH-RelatedPerson.html) or Device) | 1..1 | --- | --- |
| Date Signed (MM-DD-YYYY) | Provenance.signature.when | instant | 1..1 | --- | --- |
| Printed Thumbmark | Provenance.signature.data | base64Binary | 0..1 | --- | --- |
| Relationship of the representative to the member | Provenance.signature.onBehalfOf | Reference([PH_Patient](StructureDefinition-PH-Patient.html) or [PH_Organization](StructureDefinition-PH-Organization.html) or [PH_Practitioner](StructureDefinition-PH-Practitioner.html) or [PH_PractitionerRole](StructureDefinition-PH-PractitionerRole.html) or [PH_RelatedPerson](StructureDefinition-PH-RelatedPerson.html) or Device) | 0..1 | --- | --- |
| Reason for signing on behalf of the member | Provenance.signature.extension:signatureReason | string | 0..1 | --- | --- |
| **Part IV - Employer's Certification** *(for employed members only)* | | | | | |
| PhilHealth Employer Number (PEN) | Organization.identifier | Identifier([OtherID](StructureDefinition-OtherID.html)) | 0..1 | 12 | --- |
| Contact No. | Organization.telecom.value | string | 0..1 | --- | --- |
| Business Name (Business Name of Employer) | Organization.name | string | 0..* | 100 | --- |
| Signature Type | Provenance.signature.type | Coding | 1..* | --- | [Signature Type](https://hl7.org/fhir/R4/valueset-signature-type.html) |
| Signature Image | Provenance.signature.data | base64Binary | 0..1 | --- | --- |
| Signature Over Printed Name of Employer/Authorized Representative | Provenance.signature.who | Reference([PH_Patient](StructureDefinition-PH-Patient.html) or [PH_Organization](StructureDefinition-PH-Organization.html) or [PH_Practitioner](StructureDefinition-PH-Practitioner.html) or [PH_PractitionerRole](StructureDefinition-PH-PractitionerRole.html) or [PH_RelatedPerson](StructureDefinition-PH-RelatedPerson.html) or Device) | 1..1 | --- | --- |
| Official Capacity/Designation | Provenance.signature.extension:signaturePosition | CodeableConcept | 0..* | --- | ~~PSOC~~ |
| Certification of Employer (Date Signed) | Provenance.signature.when | instant | 1..1 | --- | --- |
| **Part V - For PhilHealth Use Only** | | | | | |
| Signature Type | Provenance.signature.type | CodeableConcept | 1..* | --- | [Signature Type](https://hl7.org/fhir/R4/valueset-signature-type.html) |
| Date Received | Provenance.recorded | instant | 1..1 | --- | --- |
| Signature Image | Provenance.signature.data | base64Binary | 0..1 | --- | --- |
| Signature Name | Provenance.signature.who | Reference([PH_Patient](StructureDefinition-PH-Patient.html) or [PH_Organization](StructureDefinition-PH-Organization.html) or [PH_Practitioner](StructureDefinition-PH-Practitioner.html) or [PH_PractitionerRole](StructureDefinition-PH-PractitionerRole.html) or [PH_RelatedPerson](StructureDefinition-PH-RelatedPerson.html) or Device) | 1..1 | --- | --- |

---