ValueSet: CancerBodyLocationVS
Id: cancer-body-location-vs
Title: "Cancer Body Location ValueSet"
Description: "Value set for cancer body locations used in the Uzbekistan healthcare system, with Uzbek and Russian designations."

* insert IntegrationsValueSet(cancer-body-location-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CancerBodyLocationCS)

* include codes from system $sct