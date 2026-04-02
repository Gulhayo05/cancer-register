Profile: ObservationIHCnonspecific
Parent: Observation
Id: observation-ihc-nonspecific
Title: "IHC Nonspecific Observation"
Description: "Observation for nonspecific immunohistochemistry (IHC) tests in oncology"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

// ===================== IDENTIFIER =====================
* identifier 0..*
* identifier ^short = "Business identifier for the laboratory test"


// ===================== CODE =====================
* code 1..1
* code ^short = "Type of laboratory test (e.g. IHC nonspecific)"
* code from NameTestsVS (required)


// ===================== SUBJECT =====================
* subject 1..1
* subject ^short = "Patient who is the subject of the test"
* subject only Reference(CancerPatient)


// ===================== EFFECTIVE =====================
* effective[x] only dateTime
* effectiveDateTime 1..1
* effectiveDateTime ^short = "Date and time when the test was performed"


// ===================== PERFORMER =====================
* performer 0..*
* performer ^short = "Organization or laboratory performing the test"
* performer only Reference(Organization)


// ===================== VALUE =====================
* value[x] 0..1
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "Antibody or biomarker tested (e.g. CD3)"

* valueCodeableConcept from IHCNameAntibodyVS (extensible)


// ===================== INTERPRETATION =====================
* interpretation 0..*
* interpretation ^short = "Interpretation of test result (e.g. positive, negative)"
* interpretation from CancerResultVS (required)


// ===================== HAS MEMBER =====================
* hasMember 0..*
* hasMember ^short = "Related or grouped laboratory observations"
* hasMember only Reference(Observation)


Instance: observation-ihc-nonspecific-example
InstanceOf: ObservationIHCnonspecific
Title: "IHC Nonspecific Observation Example"
Description: "Example of nonspecific IHC test with antibody and result"
Usage: #example
// * language = #en

* status = #final

// ===================== CODE =====================
* code.coding[0].system = $CancerCS
* code.coding[0].code = #cancr0013.00001
* code.coding[0].display = "IHC specific"


// ===================== SUBJECT =====================
* subject.reference = "Patient/cancer-patient-example"


// ===================== EFFECTIVE =====================
* effectiveDateTime = "2026-02-25T10:00:00+05:00"


// ===================== PERFORMER =====================
* performer[0].reference = "Organization/lab-1"


// ===================== VALUE (ANTIBODY) =====================
* valueCodeableConcept.coding[0].system = $CancerCS
* valueCodeableConcept.coding[0].code = #cancr0003.00001
* valueCodeableConcept.coding[0].display = "pS2 (TFF1, Trefoil Factor 1)"


// ===================== INTERPRETATION =====================
* interpretation[0].coding[0].system = $CancerCS
* interpretation[0].coding[0].code = #cancr0002.00001
* interpretation[0].coding[0].display = "detected"