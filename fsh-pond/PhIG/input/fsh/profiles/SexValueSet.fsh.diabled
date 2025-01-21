Profile: SexValueSet
Parent: ValueSet
Id: SexValueSet
* ^status = #draft
* compose.include.concept ^slicing.discriminator[0].type = #value
* compose.include.concept ^slicing.discriminator[=].path = "designation.use.code"
* compose.include.concept ^slicing.discriminator[+].type = #value
* compose.include.concept ^slicing.discriminator[=].path = "designation.use.display"
* compose.include.concept ^slicing.rules = #open
* compose.include.concept contains
    Male 0..* and
    Female 0..* and
    Unknown 0..*
* compose.include.concept[Male].code = #male (exactly)
* compose.include.concept[Male].display = "Male" (exactly)
* compose.include.concept[Female].code = #female (exactly)
* compose.include.concept[Female].display = "Female" (exactly)
* compose.include.concept[Unknown].code = #unknown (exactly)
* compose.include.concept[Unknown].display = "Unknown" (exactly)