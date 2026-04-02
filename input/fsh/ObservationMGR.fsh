Profile: ObservationMGR
Parent: Observation
Id: observation-mgr
Title: "Molecular Genetic Research Observation"
Description: "Observation for molecular genetic testing to detect genetic variants"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

// ===================== IDENTIFIER =====================
* identifier 0..*
* identifier ^short = "Business identifier for molecular genetic research"


// ===================== CODE =====================
* code 1..1
* code ^short = "Type of molecular genetic test"
* code from NameTestsVS (required)


// ===================== SUBJECT =====================
* subject 1..1
* subject only Reference(CancerPatient)
* subject ^short = "Patient undergoing molecular genetic testing"


// ===================== EFFECTIVE =====================
* effective[x] only dateTime
* effectiveDateTime 0..1
* effectiveDateTime ^short = "Date and time of the test"


// ===================== PERFORMER =====================
* performer 0..*
* performer only Reference(Organization)
* performer ^short = "Laboratory performing the test"


// ===================== METHOD =====================
* method 0..1
* method ^short = "Research method (e.g. PCR)"
* method from ResearchMethodVS (required)


// ===================== COMPONENT =====================
* component 0..*

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains geneMarker 1..*

// Marker (gene)
* component[geneMarker].code 1..1
* component[geneMarker].code from MGRMarkerVS (required)
* component[geneMarker].code ^short = "Gene or marker tested (e.g. ACD)"

// Mutation result
* component[geneMarker].value[x] only CodeableConcept
* component[geneMarker].valueCodeableConcept 0..1
* component[geneMarker].valueCodeableConcept from GeneticDisorderVS (required)
* component[geneMarker].valueCodeableConcept ^short = "Detected genetic variant or mutation"


// ===================== INTERPRETATION =====================
* interpretation 0..*
* interpretation from CancerResultVS (required)
* interpretation ^short = "Interpretation of genetic test result"


// ===================== HAS MEMBER =====================
* hasMember 0..*
* hasMember only Reference(Observation)
* hasMember ^short = "Related genetic observations"



Instance: observation-mgr-example
InstanceOf: ObservationMGR
Usage: #example
Description: "Example observation for metastasis grading."


* status = #final
// * language = #en

// ===================== CODE =====================
* code = $CancerCS#cancr0013.00001


// ===================== SUBJECT =====================
* subject.reference = "Patient/cancer-patient-example"


// ===================== EFFECTIVE =====================
* effectiveDateTime = "2026-02-01T10:00:00+05:00"

* performer[0] = Reference(Organization/example-organization)

// ===================== METHOD =====================
* method = $CancerCS#cancr0004.00001 "FISH"


// ===================== COMPONENT =====================
* component[geneMarker].code = $CancerCS#cancr0005.00001 "ABCB11 ATP-Binding Cassette Sub-Family B Member 11) Protein, bile acid transporter in the liver"
* component[geneMarker].valueCodeableConcept = $CancerCS#cancr0006.00001 "Mutation"


// ===================== INTERPRETATION =====================
* interpretation[0] = $CancerCS#cancr0002.00001 "detected"