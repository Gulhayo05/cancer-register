Profile: MedicationAdministrationCancer
Parent: MedicationAdministration
Id: medicationadministration-cancer
Title: "Cancer Medication Administration"
Description: "Administration of anticancer drugs (chemotherapy, etc.)"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

// ===================== IDENTIFIER =====================
* identifier 0..*
* identifier ^short = "Business identifier for medication administration"


// ===================== BASED ON =====================
* basedOn 0..*
* basedOn only Reference(CarePlan)
* basedOn ^short = "Treatment plan reference"


// ===================== MEDICATION =====================
* medication only CodeableReference(Medication)
* medication ^short = "Anticancer drug"
* medication 1..1 MS
* medication from NameDrugVS (required)


// ===================== SUBJECT =====================
* subject 1..1
* subject only Reference(CancerPatient)
* subject ^short = "Patient receiving medication"


// ===================== OCCURRENCE =====================
* occurence[x] 1..1 MS
* occurence[x] only dateTime


// ===================== DOSAGE =====================
* dosage 0..1
* dosage ^short = "Dosage details"

// ---- Dose (Quantity) ----
* dosage.dose 0..1
* dosage.dose ^short = "Dose amount"

// ---- Unit extension ----
* dosage.dose.extension contains DoseUnit named unit 0..1
* dosage.dose.extension[unit].value[x] only CodeableConcept
* dosage.dose.extension[unit].valueCodeableConcept from UnitDoseVS (required)

// ===================== ROUTE / METHOD =====================
* dosage.method 0..1
* dosage.method ^short = "Method of dosage"
* dosage.method from DrugAdministrationVS (required)



Instance: medication-administration-cancer-example
InstanceOf: MedicationAdministrationCancer
Title: "Chemotherapy Example"
Description: "Example of chemotherapy administration"
Usage: #example
// * language = #en


* status = #completed

* identifier[0].system = "https://dhp.uz/cancer/chemotherapy"
* identifier.value = "MedicationAdministrationCancerChemotherapy-001"

* medication.concept = $CancerCS#cancr0038.00001 "L.Asparginase"

* subject = Reference(Patient/cancer-patient-example)

* occurenceDateTime = "2025-10-10"

* dosage.text = "Cyclophosphamide IV infusion"

* dosage.dose.value = 20
* dosage.dose.system = "https://terminology.dhp.uz/CodeSystem/cancer-codesystem"
* dosage.dose.code = #cancr0042.00006
* dosage.dose.unit = "mg/mL"

* dosage.dose.extension[unit].valueCodeableConcept = $CancerCS#cancr0042.00006 "mg/ml"

* dosage.method = $CancerCS#cancr0040.00004 "Intravesical"



