Profile: PHNhdrSpecimen
Parent: Specimen
Id: ph-nhdr-specimen
* extension contains
    ph-nhdr-recorded-date named recordedDate 0..* and
    ph-nhdr-result-date named resultDate 0..* and
    ph-nhdr-ext-organization named extOrganization 0..* and
    ph-nhdr-species named species 0..*
* extension[recordedDate] ^short = "The recordedDate represents when this particular Specimen record was uploaded into the NHDR."
* extension[recordedDate] ^definition = "The recordedDate represents when this particular Specimen record was uploaded into the NHDR."
* extension[resultDate] ^short = "The resultDate represents the date on which the outcome of the particular specimen was recorded."
* extension[resultDate] ^definition = "The resultDate represents the date on which the outcome of the particular specimen was recorded.."
* extension[extOrganization] ^short = "Health facility where the specimen was collected"
* extension[extOrganization] ^definition = "Health facility where the specimen was collected"
* extension[species] ^short = "Describes the type of species / organism [e.g. Malaria (Plasmodium falciparum, Plasmodium malariae, Plasmodium vivax, Plasmodium ovale, Plasmodium knowlesi)]"
* extension[species] ^definition = "Describes the type of species / organism [e.g. Malaria (Plasmodium falciparum, Plasmodium malariae, Plasmodium vivax, Plasmodium ovale, Plasmodium knowlesi)]"
* type from ph-nhdr-specimen-type (example)
* collection.extension contains ph-nhdr-release-date named releaseDate 0..*
* collection.extension[releaseDate] ^short = "Date the specimen was released"
* collection.extension[releaseDate] ^definition = "Date the specimen was released"
* collection.method from ph-nhdr-specimen-collection-method (example)
* collection.bodySite ..0
* collection.fastingStatus[x] ..0
* processing.procedure from ph-nhdr-specimen-processing-procedure (example)
* condition from ph-nhdr-specimen-condition (extensible)