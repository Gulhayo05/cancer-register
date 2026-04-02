Profile: ObservationIHCSpecific
Parent: Observation
Id: observation-ihc-specific
Title: "Observation IHC Specific"
Description: "Specific immunohistochemistry (IHC) hormone test observation used to detect presence or absence of tumor process."

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

* identifier 0..* MS

* code 1..1 MS
* code from NameTestsVS (required)

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 0..1
* effective[x] only dateTime

* performer 0..* MS
* performer only Reference(Organization)

* component 0..*

* component.code 1..1
* component.code from IHCHormoneVS (required)

* component.value[x] 0..1
* component.value[x] only Quantity or CodeableConcept

* component.valueQuantity.unit 0..1

* component.valueCodeableConcept from IHCHormoneResultVS (required)

* interpretation 0..*
* interpretation from CancerResultVS (required)

* hasMember 0..*
* hasMember only Reference(Observation)



Instance: example-ihc-specific-example
InstanceOf: ObservationIHCSpecific
Usage: #example
Description: "Example IHC estrogen hormone test"

// * language = #en
* status = #final

* code =  $CancerCS#cancr0013.00001 "IHC specific"

* subject = Reference(Patient/cancer-patient-example)
* performer = Reference(Organization/lab-1)

* effectiveDateTime = "2026-02-01"



* component[0].code = $CancerCS#cancr0012.00001 "Estrogen"

* component[0].valueQuantity.value = 20
* component[0].valueQuantity.unit = "%"


* component[1].code = $CancerCS#cancr0012.00001 "Estrogen"

* component[1].valueCodeableConcept = $CancerCS#cancr0001.00002 "Weak (+)" 


* interpretation[0] = $CancerCS#cancr0002.00001 "detected"
    