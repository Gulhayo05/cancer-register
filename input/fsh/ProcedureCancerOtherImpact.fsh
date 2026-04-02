Profile: ProcedureCancerOtherImpact
Parent: Procedure
Id: procedure-cancer-other
Title: "Cancer Other Procedure"
Description: "Procedure representing other types of cancer-related interventions"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

// ===================== IDENTIFIER =====================
* identifier 0..*
* identifier ^short = "Business identifier for procedure"


// ===================== STATUS =====================
* status 1..1
* status ^short = "Procedure status (preparation | in-progress | completed)"
* status = #completed 


// ===================== CODE =====================
* code 0..1
* code ^short = "Type of intervention"
* code from OtherImpactVS (required)


// ===================== SUBJECT =====================
* subject 1..1
* subject only Reference(CancerPatient)
* subject ^short = "Patient receiving intervention"


// ===================== OCCURRENCE =====================
* occurrence[x] only Period
* occurrencePeriod 0..1

* occurrencePeriod.start 0..1
* occurrencePeriod.start ^short = "Start date of intervention"

* occurrencePeriod.end 0..1
* occurrencePeriod.end ^short = "End date of intervention"


// ===================== PERFORMER =====================
* performer 0..*
* performer.actor 1..1
* performer.actor only Reference(Organization)
* performer.actor ^short = "Organization performing procedure"



Instance: procedure-cancer-other-impact-example
InstanceOf: ProcedureCancerOtherImpact
Title: "Other Cancer Procedure Example"
Description: "Example of non-surgical cancer intervention"
Usage: #example


// ===================== STATUS =====================
// * language = #en
* status = #completed


// ===================== CODE =====================
* code.coding[0].system = $CancerCS
* code.coding[0].code = #cancr0043.00001
* code.coding[0].display = "Hyperthermia"


// ===================== SUBJECT =====================
* subject.reference = "Patient/cancer-patient-example"


// ===================== PERIOD =====================
* occurrencePeriod.start = "2026-01-05"
* occurrencePeriod.end = "2026-02-06"


// ===================== PERFORMER =====================
* performer[0].actor.reference = "Organization/hospital-1"


