Profile: ProcedureCancerSurgicalOperation
Parent: Procedure
Id: procedure-cancer-surgical-operation
Title: "Cancer Surgical Procedure"
Description: "Procedure representing surgical or interventional cancer treatment"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en


// ===================== IDENTIFIER =====================
* identifier 0..*
* identifier ^short = "Business identifier for procedure"


// ===================== PART OF =====================
* partOf 0..*
* partOf only Reference(Procedure)
* partOf ^short = "Parent procedure (if part of a larger procedure)"


// ===================== CATEGORY =====================
* category 0..*
* category ^short = "Character of operation (e.g. radical)"
* category from CharacterOperationsVS (required)


// ===================== CODE =====================
* code 0..1
* code ^short = "Name of operation"
* code from NameOperationsVS (required)


// ===================== SUBJECT =====================
* subject 1..1
* subject ^short = "Patient undergoing procedure"
* subject only Reference(CancerPatient)


// ===================== OCCURRED =====================
* occurrence[x] only dateTime
* occurrenceDateTime 0..1
* occurrenceDateTime ^short = "Date of procedure"


// ===================== NOTE =====================
* note 0..*
* note ^short = "Description of operation"


// ===================== FOCAL DEVICE =====================
* focalDevice 0..*
* focalDevice.action 0..1
* focalDevice.action ^short = "Type of operation (e.g. laparoscopic)"
* focalDevice.action from TypeOperationsVS (required)


// ===================== PERFORMER =====================
* performer 0..*
* performer.actor 1..1
* performer.actor only Reference(Organization)
* performer.actor ^short = "Organization performing procedure"



Instance: procedure-cancer-surgical-operation-example
InstanceOf: ProcedureCancerSurgicalOperation
Title: "Cancer Operation Example"
Description: "Example of cancer surgery"
Usage: #example

// * language = #en

* status = #completed
// ===================== CATEGORY =====================
* category[0].coding[0].system = $CancerCS
* category[0].coding[0].code = #cancr0032.00001
* category[0].coding[0].display = "Radical"


// ===================== CODE =====================
* code.coding[0].system = $CancerCS
* code.coding[0].code = #cancr0022.00001
* code.coding[0].display = "simple amputation of the mammary gland"


// ===================== SUBJECT =====================
* subject.reference = "Patient/cancer-patient-example"


// ===================== DATE =====================
* occurrenceDateTime = "2026-03-20"


// ===================== NOTE =====================
* note[0].text = "Operation completed successfully"


// ===================== TYPE (FOCAL DEVICE ACTION) =====================
* focalDevice[0].manipulated = Reference(Device/surgical-tool-1)
* focalDevice[0].action = $CancerCS#cancr0033.00001 "Laparoscopic"



// ===================== PERFORMER =====================
* performer[0].actor.reference = "Organization/hospital-1"

Instance: surgical-tool-1
InstanceOf: Device
Description: "Example of a surgical tool device."
* status = #active
* type = $CancerCS#cancr0033.00001 "Laparoscopic"