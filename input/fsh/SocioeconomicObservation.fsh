Profile: SocioeconomicObservation
Parent: Observation
Id: socioeconomic-observation
Title: "Socioeconomic Observation"
Description: "Observation capturing education level and profession of a patient"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

// ===================== CODE =====================
* code MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains socioeconomicType 1..1 MS
* code.coding[socioeconomicType].system = $sct
* code.coding[socioeconomicType] from SocioeconomicObservationCodesVS (required)

// ===================== VALUE =====================
* value[x] only CodeableConcept

* valueCodeableConcept from EducationVS (extensible)

// -------- Additional Binding: Profession --------
* valueCodeableConcept ^binding.additional[+].purpose = #required
* valueCodeableConcept ^binding.additional[=].valueSet = Canonical(ProfessionVS)
* valueCodeableConcept ^binding.additional[=].usage.code = $sct#14679004
* valueCodeableConcept ^binding.additional[=].usage.valueCodeableConcept = $sct#14679004 "Occupation"

// -------- Additional Binding: Education --------
* valueCodeableConcept ^binding.additional[+].purpose = #required
* valueCodeableConcept ^binding.additional[=].valueSet = Canonical(EducationVS)
* valueCodeableConcept ^binding.additional[=].usage.code = $sct#105421008
* valueCodeableConcept ^binding.additional[=].usage.valueCodeableConcept = $sct#105421008 "Educational achievement"

// ===================== SUBJECT =====================
* subject 1..1
* subject only Reference(CancerPatient)

// ===================== EFFECTIVE =====================
* effective[x] only dateTime
* effectiveDateTime 1..1



// =====================================================
// ===================== INSTANCES ======================
// =====================================================

// ---------- EDUCATION OBSERVATION ----------
Instance: example-education-instance
InstanceOf: SocioeconomicObservation
Description: "Example education status"
Usage: #example

// * language = #en
* status = #final

* code.coding[socioeconomicType].system = $sct
* code.coding[socioeconomicType].code = #105421008
* code.coding[socioeconomicType].display = "Educational achievement"

* subject = Reference(cancer-patient-example)
* performer = Reference(cancer-patient-example)

* valueCodeableConcept = $CancerCS#cancr0030.00001 "Basic"

* effectiveDateTime = "2025-06-11"


// ---------- PROFESSION OBSERVATION ----------
Instance: example-profession-instance
InstanceOf: SocioeconomicObservation
Description: "Example profession observation"
Usage: #example

* language = #en
* status = #final

* code.coding[socioeconomicType].system = $sct
* code.coding[socioeconomicType].code = #14679004
* code.coding[socioeconomicType].display = "Occupation"

* subject = Reference(cancer-patient-example)
* performer = Reference(cancer-patient-example)

* valueCodeableConcept = $CancerCS#cancr0031.00002 "Miner"

* effectiveDateTime = "2025-06-11"