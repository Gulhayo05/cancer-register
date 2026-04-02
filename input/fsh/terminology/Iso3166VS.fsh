ValueSet: Iso3166VS
Id: iso-3166-2-vs
Title: "ISO 3166 Country Codes"
Description: "Country codes"
* ^language = #en
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/iso-3166-2-vs"
* ^status = #draft
* ^experimental = true

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-supplement"
* ^extension[0].valueCanonical = "https://terminology.dhp.uz/fhir/core/CodeSystem/iso3166-two-letter-cs"

* include codes from system urn:iso:std:iso:3166