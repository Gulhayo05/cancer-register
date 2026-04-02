Profile: DiagnosticReportOperationCancer
Parent: DiagnosticReport
Id: diagnostic-report-operation-cancer
Title: "Cancer Surgical Operation Report"
Description: "Diagnostic report describing the course of a cancer surgical operation"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

* identifier 0..* MS

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/diagnostic-report-status (required)

* code 1..1 MS

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 0..1
* effective[x] only dateTime

* performer 0..*
* performer only Reference(Organization)

* result 0..*
* result only Reference(Observation)

* conclusion 0..1

* presentedForm 0..*


Instance: diagnostic-report-operation-cancer-example
InstanceOf: DiagnosticReportOperationCancer
Description: "Example diagnostic report for a cancer surgical operation"
Usage: #example

// * language = #en
* status = #final

* code = $CancerCS#cancr0022.00047 "Hartmann's operation"

* subject = Reference(Patient/cancer-patient-example)

* effectiveDateTime = "2026-02-15"

* performer = Reference(Organization/example-organization)

* conclusion = "Описание хода проведенной операции"
