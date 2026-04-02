Profile: EncounterCancer
Parent: Encounter
Id: encounter-cancer
Title: "Cancer Encounter"
Description: "Encounter representing patient visit/admission for cancer care"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

// ===================== IDENTIFIER =====================
* identifier 0..*
* identifier ^short = "Business identifier for encounter"


// ===================== CLASS =====================
* class 0..*
* class ^short = "Type of encounter (e.g. inpatient, outpatient)"
* class from TypeTreatmentVS (required)


// ===================== SUBJECT =====================
* subject 1..1
* subject ^short = "Patient receiving care"
* subject only Reference(CancerPatient)


// ===================== SUBJECT STATUS =====================
* subjectStatus 0..1
* subjectStatus ^short = "Patient condition status (e.g. alive)"
* subjectStatus from PatientConditionVS (required)


// ===================== EPISODE OF CARE =====================
* episodeOfCare 0..*
* episodeOfCare only Reference(EpisodeOfCareCancer)


// ===================== BASED ON =====================
* basedOn 0..*
* basedOn only Reference(ServiceRequest)


// ===================== SERVICE PROVIDER =====================
* serviceProvider 0..1
* serviceProvider only Reference(Organization)


// ===================== PERIOD =====================
* actualPeriod 0..1
* actualPeriod.start 0..1
* actualPeriod.start ^short = "Start date of encounter"

* actualPeriod.end 0..1
* actualPeriod.end ^short = "End date of encounter"


// ===================== PARTICIPANT =====================
* participant 0..*
* participant.actor only Reference(Patient)


// ===================== DIAGNOSIS =====================
* diagnosis 0..*
* diagnosis.condition 0..1
* diagnosis.condition only CodeableReference(ConditionCancer)

// ===================== TYPE =====================
* type 0..*
* type ^short = "Encounter type"
* type from TypeTreatmentVS (required)



Instance: encounter-cancer-example
InstanceOf: EncounterCancer
Title: "Cancer Encounter Example"
Description: "Example of oncology encounter"
Usage: #example
// * language = #en

* status = #completed "Completed"
// ===================== CLASS =====================
* class[0].coding[0].system = $CancerCS
* class[0].coding[0].code = #cancr0009.00002
* class[0].coding[0].display = "Treated on an outpatient basis"


// ===================== SUBJECT =====================
* subject = Reference(Patient/cancer-patient-example)

// ===================== SUBJECT STATUS =====================
* subjectStatus = $CancerCS#cancr0044.00001 "Alive"


// ===================== EPISODE =====================
* episodeOfCare[0] = Reference(EpisodeOfCare/episode-of-care-cancer-example)

// ===================== ORGANIZATION =====================
* serviceProvider = Reference(Organization/hospital-1)

// ===================== PERIOD =====================
* actualPeriod.start = "2026-03-18"
* actualPeriod.end = "2026-03-25"


// ===================== PARTICIPANT =====================
* participant[0].actor = Reference(Patient/cancer-patient-example)

// ===================== DIAGNOSIS =====================
* diagnosis[0].condition = Reference(Condition/condition-cancer-example)

// ===================== TYPE =====================
* type[0].coding[0].system = $CancerCS
* type[0].coding[0].code = #cancr0009.00002
* type[0].coding[0].display = "Treated on an outpatient basis"



Instance: example-practitioner-role
InstanceOf: PractitionerRole
Description: "Example instance of a practitioner role for a cancer encounter"
Usage: #example

* practitioner = Reference(Practitioner/example-practitioner)
* organization = Reference(Organization/example-organization)