Profile: EpisodeOfCareCancer
Parent: EpisodeOfCare
Id: episode-of-care-cancer
Title: "Cancer Treatment EpisodeOfCare"
Description: "Episode of care representing cancer treatment course"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

// ===================== IDENTIFIER =====================
* identifier 0..*
* identifier ^short = "Business identifier for treatment episode"


// ===================== TYPE =====================
* type 0..*
* type ^short = "Type of treatment (e.g. inpatient, outpatient)"
* type from TypeTreatmentVS (required)


// ===================== PATIENT =====================
* patient 1..1
* patient ^short = "Patient receiving treatment"
* patient only Reference(Patient)


// ===================== MANAGING ORGANIZATION =====================
* managingOrganization 0..1
* managingOrganization only Reference(Organization)
* managingOrganization ^short = "Organization managing the cancer treatment episode"


// ===================== PERIOD =====================
* period 0..1
* period.start 0..1
* period.start ^short = "Treatment start date"

* period.end 0..1
* period.end ^short = "Treatment end date"


// ===================== EXTENSIONS =====================
* extension contains 
    CharacterTreatment named characterTreatment 0..1 and
    SpecialTreatment named specialTreatment 0..1 and
    //re-check it is correct or not
    ManagingOrganizationAttachment named managingOrganizationAttachment 0..1
* extension[managingOrganizationAttachment].value[x] only date
* extension[managingOrganizationAttachment] ^short = "Date when patient was attached to managing organization"

// ===================== CHARACTER OF TREATMENT =====================
* extension[characterTreatment].value[x] only CodeableConcept
* extension[characterTreatment].valueCodeableConcept ^short = "Character of treatment (e.g. radical)"
* extension[characterTreatment].valueCodeableConcept from CharacterTreatmentVS (required)


// ===================== SPECIAL TREATMENT =====================
* extension[specialTreatment].value[x] only CodeableConcept
* extension[specialTreatment].valueCodeableConcept ^short = "Type of special treatment (e.g. surgery)"
* extension[specialTreatment].valueCodeableConcept from SpecialTreatmentVS (required)




Instance: episode-of-care-cancer-example
InstanceOf: EpisodeOfCareCancer
Title: "Cancer Treatment Example"
Description: "Example of cancer treatment episode"
Usage: #example
// * language = #en

* status = #active
// ===================== TYPE =====================
* type[0].coding[0].system = $CancerCS
* type[0].coding[0].code = #cancr0009.00002
* type[0].coding[0].display = "Treated on an outpatient basis"


// ===================== PATIENT =====================
* patient.reference = "Patient/cancer-patient-example"


// ===================== ORGANIZATION =====================
* managingOrganization.reference = "Organization/hospital-1"
* extension[managingOrganizationAttachment].valueDate = "2026-01-15"

// ===================== PERIOD =====================
* period.start = "2026-02-12"
* period.end = "2026-03-12"


// ===================== CHARACTER =====================
* extension[characterTreatment].valueCodeableConcept.coding[0].system = $CancerCS
* extension[characterTreatment].valueCodeableConcept.coding[0].code = #cancr0010.00002
* extension[characterTreatment].valueCodeableConcept.coding[0].display = "Radical"


// ===================== SPECIAL TREATMENT =====================
* extension[specialTreatment].valueCodeableConcept.coding[0].system = $CancerCS
* extension[specialTreatment].valueCodeableConcept.coding[0].code = #cancr0011.00002
* extension[specialTreatment].valueCodeableConcept.coding[0].display = "Surgical"