ValueSet: ICD10VS
Id: icd10-vs
Title: "ICD-10 Cancer Diagnosis"
Description: "Primary cancer diagnosis codes (ICD-10)"
* ^language = #en
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/icd10-vs"
* ^status = #draft
* ^experimental = true

* include codes from system $icd-10 where code regex "^C[0-9]{2}(\\.[0-9])?$"


// * include codes from system $icd-10-vs
// * include codes from system $icd-10
