Profile: ProcedureCancerRadiotherapy
Parent: Procedure
Id: procedure-cancer-radiotherapy
Title: "Cancer Radiotherapy Procedure"
Description: "Procedure representing radiotherapy treatment in oncology"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

// ===================== IDENTIFIER =====================
* identifier 0..*


// ===================== STATUS =====================
* status 1..1


// ===================== CATEGORY =====================
* category 0..*
* category ^short = "Character of radiotherapy"
* category from CharacterRadiotherapyVS (required)


// ===================== CODE =====================
* code 0..1
* code ^short = "Type of radiation impact"
* code from ImpactTypeVS (required)


// ===================== SUBJECT =====================
* subject 1..1
* subject only Reference(CancerPatient)

* extension contains
    RadiotherapyModifiers named modifiers 0..1 and
    RadiopharmaceuticalDrug named radiopharmaceutical 0..1 and
    SingleDose named singleDose 0..1 and
    TotalDose named totalDose 0..1 and
    EquivalentDose named equivalentDose 0..1

* bodySite.extension contains IrradiationOrganText named organText 0..1
// ===================== BODY SITE =====================
* bodySite 0..*
* bodySite ^short = "Irradiation zone"
* bodySite from ImpactZoneVS (required)


// ===================== OCCURRENCE =====================
* occurrence[x] only Period
* occurrencePeriod 0..1


// ===================== PERFORMER =====================
* performer 0..*
* performer.actor only Reference(Organization)


// ===================== NOTE =====================
* note 0..*





Instance: procedure-cancer-radiotherapy-example
InstanceOf: ProcedureCancerRadiotherapy
Usage: #example
Description: "Example of radiotherapy procedure."

// * language = #en
* status = #completed


// ===================== CATEGORY =====================
* category[0] = $CancerCS#cancr0034.00001 "Preoperative"


// ===================== CODE =====================
* code = $CancerCS#cancr0035.00001 "Remote"


// ===================== SUBJECT =====================
* subject.reference = "Patient/cancer-patient-example"


// ===================== BODY SITE =====================
* bodySite[0] = $CancerCS#cancr0036.00001 "Primary focus"
* bodySite[0].extension[organText].valueString = "Left lung upper lobe"


// ===================== PERIOD =====================
* occurrencePeriod.start = "2026-01-05"
* occurrencePeriod.end = "2026-02-06"

* extension[modifiers].valueCodeableConcept = $CancerCS#cancr0037.00001 "Radioprotectors"
* extension[radiopharmaceutical].valueCodeableConcept = $CancerCS#cancr0041.00001 "Bromine-82"

* extension[singleDose].valueQuantity.value = 2
* extension[singleDose].valueQuantity.unit = "Gy"
* extension[singleDose].valueQuantity.system = "http://unitsofmeasure.org"
* extension[singleDose].valueQuantity.code = #Gy

* extension[totalDose].valueQuantity.value = 20
* extension[totalDose].valueQuantity.unit = "Gy"
* extension[totalDose].valueQuantity.system = "http://unitsofmeasure.org"
* extension[totalDose].valueQuantity.code = #Gy

* extension[equivalentDose].valueQuantity.value = 22
* extension[equivalentDose].valueQuantity.unit = "Gy"
* extension[equivalentDose].valueQuantity.system = "http://unitsofmeasure.org"
* extension[equivalentDose].valueQuantity.code = #Gy


// ===================== PERFORMER =====================
* performer[0].actor.reference = "Organization/hospital-1"