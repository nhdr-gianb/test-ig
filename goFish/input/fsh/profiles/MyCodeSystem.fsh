Profile: MyCodeSystem
Parent: CodeSystem
Id: MyCodeSystem
* ^url = "https://example.org/fhir/StructureDefinition/MyCodeSystem"
* ^status = #draft
* name = "Gender" (exactly)
* copyright ^comment = "Systems are not required to have markdown support, so the text should be readable without markdown processing. The markdown syntax is GFM - see https://github.github.com/gfm/\r\n Sometimes, the copyright differs between the code system and the codes that are included. The copyright statement should clearly differentiate between these when required.\r\n Sometimes, the copyright differs between the code system and the codes that are included. The copyright statement should clearly differentiate between these when required.\r\n Sometimes, the copyright differs between the code system and the codes that are included. The copyright statement should clearly differentiate between these when required."
* concept ^slicing.discriminator.type = #profile
* concept ^slicing.discriminator.path = "resolve()"
* concept ^slicing.rules = #open
* concept contains
    Male 0..* and
    Female 0..*