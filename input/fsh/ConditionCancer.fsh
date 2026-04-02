Profile: ConditionCancer
Parent: Condition
Id: condition-cancer
Title: "Cancer Condition"
Description: "Cancer diagnosis with ICD-10, ICD-O, ICCC-3 and clinical attributes"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #uz

* identifier 0..*
* identifier ^short = "Business identifier for cancer diagnosis"


* code 1..1
* code ^short = "Primary cancer diagnosis (ICD-10)"
* code from ICD10VS (extensible)


* bodySite 0..*
* bodySite ^short = "Tumor topography (ICD-O topography)"
* bodySite from ICDTopographyVS (required)

* extension contains Morphology named morphology 0..1
* extension[morphology].value[x] only CodeableConcept
* extension[morphology].valueCodeableConcept from ICD10MorphologyVS (required)


// ===================== GRADE (DIFFERENTIATION) =====================
* extension contains GradeDifferentiation named grade 0..1

* extension[grade].value[x] only CodeableConcept
* extension[grade].valueCodeableConcept from DegreeDifferentiationVS  (required)


// ===================== DIAGNOSIS SOURCE =====================
* extension contains DiagnosisSource named diagnosisSource 0..1

* extension[diagnosisSource].value[x] only CodeableConcept
* extension[diagnosisSource].valueCodeableConcept from DiagnosisSourceVS (required)


// ===================== DETECTION CONDITION =====================
* extension contains DetectionCondition named detectionCondition 0..1

* extension[detectionCondition].value[x] only CodeableConcept
* extension[detectionCondition].valueCodeableConcept from DetectionConditionVS (required)


// ===================== ICCC-3 GROUP =====================
* extension contains ICCC3Group named iccc3Group 0..1

* extension[iccc3Group].value[x] only CodeableConcept
* extension[iccc3Group].valueCodeableConcept from ICCC3VS (required)


// ===================== ICCC-3 CODE =====================
* extension contains ICCC3 named iccc3 0..1

* extension[iccc3].value[x] only CodeableConcept
* extension[iccc3].valueCodeableConcept from ICCC3VS  (required)

// ===================== SUBJECT =====================
* subject 1..1
* subject only Reference(CancerPatient)


// ===================== ONSET =====================
* onset[x] only dateTime
* onsetDateTime 0..1
* onsetDateTime ^short = "Date of diagnosis"


// ===================== RECORDED DATE =====================
* recordedDate 0..1
* recordedDate ^short = "Date when diagnosis was recorded"


// ===================== RECORDER =====================
* participant 0..*
* participant.actor 1..1
* participant.actor only Reference(Organization)

* note 0..*

Instance: condition-cancer-example
InstanceOf: ConditionCancer
Usage: #example
Description: "Example of a patient diagnosed with CNS cancer including morphology, grade, and detection details"
// * language = #en


* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active

// ===================== CODE =====================
// * code = $icd-10#A00 "Cholera"
* code = $icd-10#C71.0 "Cerebrum, except lobes and ventricles"


// ===================== BODY SITE =====================
* bodySite[0] = $CodeSystemICD3topography#C710 "cerebrum NOS"


// ===================== SUBJECT =====================
* subject.reference = "Patient/cancer-patient-example"


// ===================== DATES =====================
* onsetDateTime = "2026-01-15"
* recordedDate = "2026-01-16"


// ===================== RECORDER =====================
* participant.actor = Reference(Organization/hospital-1)

// ===================== MORPHOLOGY =====================
* extension[morphology].valueCodeableConcept = $CodeSystemICD3morphology#8000 "Malignant neoplasm NOS"

// ===================== GRADE =====================
* extension[grade].valueCodeableConcept = $CancerCS#cancr0015.00001 "G1 (Highly differentiated)"


// ===================== DIAGNOSIS SOURCE =====================
* extension[diagnosisSource].valueCodeableConcept = $CancerCS#cancr0017.00001 "Medical history (outpatient card) of the branch of the Republican Center for Oncology and Radiology"


// ===================== DETECTION =====================
* extension[detectionCondition].valueCodeableConcept = $CancerCS#cancr0020.00001 "Identified in the Onconazorat office"


// ===================== ICCC =====================
* extension[iccc3Group].valueCodeableConcept = $CodeSystemICCC3#III "CNS and miscellaneous intracranial and intraspinal neoplasms"
* extension[iccc3].valueCodeableConcept = $CodeSystemICCC3#III.c.2 "PNET"