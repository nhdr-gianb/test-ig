Profile: PHNhdrPractitioner
Parent: Practitioner
Id: ph-nhdr-practitioner
* . ^definition = "A person who is directly involved in the provisioning of healthcare."
* extension contains
/*
    ph-nhdr-signature named signature 0..* and
*/
    ph-nhdr-sex named sex 0..*
/*
* extension[signature] ^short = "Practitioner Signature"
* extension[signature] ^definition = "Practitioner Signature"
*/
* extension[sex] ^short = "The sex assigned at birth, as documented on the birth registration"
* extension[sex] ^definition = "The sex assigned at birth, as documented on the birth registration"
* gender ..0
* birthDate ..0
* photo ..0
* qualification ..0
* communication ..0