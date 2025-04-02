CodeSystem: PSGCCS
Id: PSGCCS
Title: "PSGC Codes"
Description: "Placeholder version of PSGC codes to avoid long build times in local development."
* insert HierarchyValues
* ^experimental = false
* ^caseSensitive = true
* ^url = "https://nhdr.gov.ph/fhir/CodeSystem/PSGCCS"
* ^status = #active
* ^content = #complete
* ^language = #en-US
* #_Region "Region"
* #_Region ^property[0].code = #notSelectable
* #_Region ^property[=].valueBoolean = true
* #_Region ^property[+].code = #status
* #_Region ^property[=].valueCode = #active
* #_Province "Province"
* #_Province ^property[0].code = #notSelectable
* #_Province ^property[=].valueBoolean = true
* #_Province ^property[+].code = #status
* #_Province ^property[=].valueCode = #active
* #_City "City"
* #_City ^property[0].code = #notSelectable
* #_City ^property[=].valueBoolean = true
* #_City ^property[+].code = #status
* #_City ^property[=].valueCode = #active
* #_Barangay "Barangay"
* #_Barangay ^property[0].code = #notSelectable
* #_Barangay ^property[=].valueBoolean = true
* #_Barangay ^property[+].code = #status
* #_Barangay ^property[=].valueCode = #active

* #1 "REGION I" "Region I"
* insert ApplyRegion(1)
* #1028 "ILOCOS NORTE" "Ilocos Norte"
* insert ApplyProvince(1028)
* #102801 "ADAMS" "Adams"
* insert ApplyCity(102801)
* #102801001 "ADAMS" "Adams"
* insert ApplyBarangay(102801001)