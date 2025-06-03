<!-- 
Resources To Do:
    Claim (needs to be remapped)
 -->

<html>
    <style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style>
    <ul class="nav nav-tabs">
        <li><a href="use-cases-CF1.html">Content</a></li>
        <li><a href="CF1-mapping.html">Mappings</a></li>
        <li class="active"><a href="CF1-1-json.html">JSON 1</a></li>
        <li><a href="CF1-2-json.html">JSON 2</a></li>
    </ul>
</html>

```json
    {
        "resourceType": "Bundle",
        "id": "Bundle-ClaimsForm1-1",
        "type": "transaction",
        "identifier": {
            "system": "http://nhdr.gov.ph/fhir/ValueSet-form-type",
            "value": "CF1"
        },
        "entry": [
            {
                "fullUrl": "urn:uuid:patient-1",
                "resource": {
                    "resourceType": "Patient",
                    "id": "Patient-1",
                    "meta": {
                        "profile": [
                            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
                        ]
                    },
                    "link": [
                        {
                            "other": {
                                "reference": "RelatedPerson/RelatedPerson-1"
                            },
                            "type": "refer"
                        }
                    ]
                },
                "request": {
                    "method": "POST",
                    "url": "Patient"
                }
            },
            {
                "fullUrl": "urn:uuid:relatedperson-1",
                "resource": {
                    "resourceType": "RelatedPerson",
                    "id": "RelatedPerson-1",
                    "meta": {
                        "profile": [
                            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-RelatedPerson"
                        ]
                    },
                    "identifier": [
                        {
                            "type": {
                                "coding": [
                                    {
                                        "code": "NIIP"
                                    }
                                ],
                                "text": "PhilHealth Identification Number"
                            },
                            "value": "PH54321"
                        }
                    ],
                    "patient": {
                        "reference": "Patient/Patient-1"
                    },
                    "name": [
                        {
                            "family": "Razal",
                            "given": [
                                "Emily Frances Lourdes",
                                "Aberin"
                            ],
                            "suffix": [
                                "Mrs."
                            ]
                        }
                    ],
                    "birthDate": "1971-02-11",
                    "address": [
                        {
                            "line": [
                                "Fordham Road"
                            ],
                            "extension": [
                                {
                                    "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay",
                                    "valueCoding": {
                                        "code": "0123456789",
                                        "display": "Blue Ridge"
                                    }
                                },
                                {
                                    "url": "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality",
                                    "valueCoding": {
                                        "code": "0123456",
                                        "display": "Quezon City"
                                    }
                                },
                                {
                                    "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Province",
                                    "valueCoding": {
                                        "code": "01234",
                                        "display": "Metro Manila"
                                    }
                                }
                            ],
                            "country": "PH",
                            "postalCode": "1110"
                        }
                    ],
                    "extension": [
                        {
                            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Sex",
                            "valueCode": "M"
                        }
                    ],
                    "telecom": [
                        {
                            "value": "912-00-00"
                        },
                        {
                            "value": "0927-000-0000"
                        },
                        {
                            "value": "earazal@email.com"
                        }
                    ]
                },
                "request": {
                    "method": "POST",
                    "url": "RelatedPerson"
                }
            },
            {
                "fullUrl": "urn:uuid:organization-1",
                "resource": {
                    "resourceType": "Organization",
                    "id": "Org-1",
                    "meta": {
                        "profile": [
                            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
                        ]
                    },
                    "identifier": [
                        {
                            "type": {
                                "coding": [
                                    {
                                        "code": "EN"
                                    }
                                ],
                                "text": "PhilHealth Employer Number (PEN)"
                            },
                            "value": "EN15243"
                        }
                    ],
                    "telecom": [
                        {
                            "value": "080-00-00"
                        }
                    ],
                    "name": "PhilHealth"
                },
                "request": {
                    "method": "POST",
                    "url": "Organization"
                }
            },
            {
                "fullUrl": "urn:uuid:questionnaire-1",
                "resource": {
                    "resourceType": "Questionnaire",
                    "id": "Questionnaire-1",
                    "meta": {
                        "profile": [
                            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
                        ]
                    },
                    "item": [
                        {
                            "linkId": "1",
                            "text": "Patient is the member?",
                            "type": "boolean"
                        }
                    ],
                    "status": "active"
                },
                "request": {
                    "method": "POST",
                    "url": "Questionnaire"
                }
            },
            {
                "fullUrl": "urn:uuid:questionnaireresponse-1",
                "resource": {
                    "resourceType": "QuestionnaireResponse",
                    "id": "QuestionnaireResponse-1",
                    "meta": {
                        "profile": [
                            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
                        ]
                    },
                    "questionnaire": "Questionnaire/Questionnaire-1",
                    "item": [
                        {
                            "linkId": "1",
                            "answer": [
                                {
                                    "valueBoolean": true
                                }
                            ]
                        }
                    ],
                    "status": "in-progress"
                },
                "request": {
                    "method": "POST",
                    "url": "QuestionnaireResponse"
                }
            }
        ]
    }
```