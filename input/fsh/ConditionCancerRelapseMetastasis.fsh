Profile: ConditionCancerRelapseMetastasis
Parent: Condition
Id: condition-cancer-relapse-metastasis
Title: "Cancer Relapse / Metastasis Condition"
Description: "Condition representing relapse, remission, or metastasis of cancer"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

// ===================== IDENTIFIER =====================
* identifier 0..*
* identifier ^short = "Business identifier for relapse/metastasis condition"


// ===================== CLINICAL STATUS =====================
* clinicalStatus 1..1 MS
* clinicalStatus ^short = "Current clinical status (active, relapse, remission, resolved)"
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)


// ===================== CODE =====================
* code 1..1 MS
* code ^short = "Type of oncological process (relapse, metastasis, remission)"
* code from ClinicalStatusVS (required)


// ===================== BODY SITE =====================
* bodySite 0..*
* bodySite ^short = "Anatomical location of lesion"
* bodySite from AnatomicalLocationVS (required)


// ===================== SUBJECT =====================
* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Patient with condition"


// ===================== ONSET =====================
* onset[x] only dateTime
* onset[x] MS
* onsetDateTime ^short = "Date when relapse/metastasis was identified"


// ===================== NOTE =====================
* note 0..*
* note ^short = "Additional description of affected area"

Instance: condition-cancer-relapse-example
InstanceOf: ConditionCancerRelapseMetastasis
Title: "Cancer Relapse Example"
Description: "Example of cancer relapse with metastasis"
Usage: #example

// * language = #en
// ===================== CLINICAL STATUS =====================
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active


// ===================== CODE =====================
* code = $CancerCS#cancr0007.00001 "inactive"


// ===================== SUBJECT =====================
* subject = Reference(Patient/cancer-patient-example)


// ===================== BODY SITE =====================
* bodySite[0] = $CancerCS#cancr0008.00001 "Lymph nodes"


// ===================== ONSET =====================
* onsetDateTime = "2026-02-10"


// ===================== NOTE =====================
* note[0].text = "Metastasis detected in bone tissue"