Profile: ObservationMorphology
Parent: Observation
Id: observation-morphology
Title: "Morphological Examination Observation"
Description: "Observation representing morphological (histological) examination of tumor"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

// ===================== IDENTIFIER =====================
* identifier 0..*
* identifier ^short = "Morphological examination identifier"


// ===================== CODE =====================
* code 1..1
* code ^short = "Type of morphological examination"
* code from NameTestsVS (required)


// ===================== SUBJECT =====================
* subject 1..1
* subject only Reference(CancerPatient)
* subject ^short = "Patient under examination"


// ===================== EFFECTIVE =====================
* effective[x] only dateTime
* effectiveDateTime 0..1
* effectiveDateTime ^short = "Date of examination"


// ===================== PERFORMER =====================
* performer 0..*
* performer only Reference(Organization)
* performer ^short = "Laboratory or organization"


// ===================== BODY SITE =====================
* bodySite 0..1
* bodySite ^short = "Anatomical location of lesion"


// ===================== BODY SITE EXTENSION (SIDE) =====================
* bodySite.extension contains SideOfLesion named side 0..1

* bodySite.extension[side].value[x] only CodeableConcept
* bodySite.extension[side].valueCodeableConcept from SideOfLesionVS (required)


// ===================== METHOD =====================
* method 0..1
* method ^short = "Method of confirmation (e.g. histology)"
* method from MethodOfConfirmationVS (required)



Instance: observation-morphology-example
InstanceOf: ObservationMorphology
Usage: #example
Description: "Example observation for tumor morphology."

// * language = #en
* status = #final

// ===================== IDENTIFIER =====================
* identifier[0].value = "1235-1084-26"


// ===================== CODE =====================
* code = $CancerCS#cancr0013.00002 "IHC non-specific"


// ===================== SUBJECT =====================
* subject.reference = "Patient/cancer-patient-example"


// ===================== EFFECTIVE =====================
* effectiveDateTime = "2026-02-01T11:00:00+05:00"

* performer[0] = Reference(Organization/example-organization)

// ===================== PERFORMER =====================
* performer[0].reference = "Organization/lab-1"


// ===================== BODY SITE =====================
* bodySite.text = "Лёгкое"

// Side of lesion
* bodySite.extension[side].valueCodeableConcept = $CancerCS#cancr0019.00003 "Right"


// ===================== METHOD =====================
* method = $CancerCS#cancr0018.00001 "Histology"