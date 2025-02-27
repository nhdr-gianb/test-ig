ValueSet: ImmunizationRouteValueSet
Id: ImmunizationRouteValueSet
Title: "Immunization Route Value Set"
Description: "A value set representing routes of immunization administration."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ImmunizationRouteValueSet"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* include $ImmunizationRoute#IDINJ "Injection, intradermal"
* include $ImmunizationRoute#IM "Injection, intramuscular"
* include $ImmunizationRoute#NASINHLC "Inhalation, nasal"
* include $ImmunizationRoute#IVINJ "Injection, intravenous"
* include $ImmunizationRoute#PO "Swallow, oral"
* include $ImmunizationRoute#SQ "Injection, subcutaneous"
* include $ImmunizationRoute#TRNSDERM "Transdermal"