ValueSet: PractitionerRoleValueSet
Id: PractitionerRoleValueSet
Description: "A value set representing the different roles a healthcare practitioner can perform within an organization or care setting."
* ^status = #draft
* include codes from system $PractitionerRole
* include codes from system $SNOMED where concept is-a #223366009
* exclude $SNOMED#223366009