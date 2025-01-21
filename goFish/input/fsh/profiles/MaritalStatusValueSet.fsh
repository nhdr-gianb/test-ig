Profile: MaritalStatusValueSet
Parent: ValueSet
Id: MaritalStatusValueSet
* ^url = "https://example.org/fhir/StructureDefinition/MaritalStatusValueSet"
* ^status = #draft
* compose.include.concept ^slicing.description = "Marital Status Codes"
* compose.include.concept ^slicing.rules = #open
* compose.include.concept contains
    Single 0..* and
    Married 0..* and
    Widowed 0..* and
    Separated 0..*
* compose.include.concept[Single].code = #S (exactly)
* compose.include.concept[Single].display = "Single" (exactly)
* compose.include.concept[Single].display ^definition = "A person who has never been married"
* compose.include.concept[Married].code = #M (exactly)
* compose.include.concept[Married].display = "Married" (exactly)
* compose.include.concept[Married].display ^definition = "A person who has never been married"
* compose.include.concept[Widowed].code = #W (exactly)
* compose.include.concept[Widowed].display = "Widowed" (exactly)
* compose.include.concept[Widowed].display ^definition = "A person who has never been married"
* compose.include.concept[Separated].code = #S (exactly)
* compose.include.concept[Separated].display = "Separated" (exactly)
* compose.include.concept[Separated].display ^definition = "A person who has never been married"