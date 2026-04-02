Profile: ObservationTNMClassification
Parent: Observation
Id: observation-tnm-classification
Title: "Observation TNM Classification"
Description: "Observation used to classify tumor stage according to TNM classification and degree of lesion."

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

* identifier 0..* MS

* code 1..1 MS
* code from NameTestsVS (required)

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 0..1
* effective[x] only dateTime

* performer 0..* MS
* performer only Reference(Organization)

* component 0..*

* component.code 1..1
* component.code from TNMcomponentsVS (required)

* component.value[x] 0..1
* component.value[x] only CodeableConcept
* component.valueCodeableConcept from DegreeVS (required)

* interpretation 1..2
* interpretation from CancerStageVS (required)



Instance: observation-tnm-classification-example
InstanceOf: ObservationTNMClassification
Usage: #example
Description: "Example TNM tumor classification observation"

// * language = #en
* status = #final


* identifier[0].system = "https://dhp.uz/cancer/tnm"
* identifier[0].value = "TNM-001"

// ✅ CodeableConcept correct
* code = $CancerCS#cancr0013.00001 "IHC specific"

* subject = Reference(cancer-patient-example)

* effectiveDateTime = "2026-02-25"

* performer[0] = Reference(example-organization)

// ✅ component fixed
* component[0].code = $CancerCS#cancr0028.00001 "cT"
* component[0].valueCodeableConcept = $CancerCS#cancr0029.00001 "0"

// ✅ interpretation fixed
* interpretation[0] = $CancerCS#cancr0026.00001 "in situ"
* interpretation[1] = $CancerCS#cancr0021.00006 "S"

