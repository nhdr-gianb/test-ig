ValueSet: ContactRelationshipValueSet
Id: ContactRelationshipValueSet
Description: "A value set representing various types of relationships to the patient."
* ^status = #draft
* include codes from system $ContactRelationship-v20131
* include codes from system $ContactRelationship-v3RoleCode where concept is-a #_PersonalRelationshipRoleType
