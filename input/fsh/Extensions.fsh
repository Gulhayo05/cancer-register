Invariant: uzcore-gender-other-1
Description: "The differentiation of the gender indication 'other' may only be filled if the gender 'other' is specified."
* severity = #error
* expression = "%resource.gender = 'other'"

Invariant: uzcore-gender-other-2
Description: "gender 'other' implies differentiation of the gender indication 'other'."
* severity = #error
* expression = "gender.exists() and gender = 'other' implies gender.extension.exists()"

Extension: GenderOtherUZ
Id: gender-other
Title: "Differentiation of the administrative gender 'other'"
Description: "Extension for more precise differentiation of the administrative gender 'other', aligned with German base profiles representation of the same concept."
Context: Patient.gender, RelatedPerson.gender, Person.gender, Practitioner.gender, Patient.contact.gender
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/gender-other"
* ^status = #draft
* ^experimental = true
* ^date = "2025-03-12"

* value[x] 1..1
* value[x] only Coding
* value[x] from gender-other-vs (required)
* value[x] obeys uzcore-gender-other-1

// ===================== MANAGING ORGANIZATION ATTACHMENT =====================
Extension: ManagingOrganizationAttachment
Id: managing-organization-attachment
Title: "Managing organization attachment date"
Description: "Date when the patient was attached to the managing organization. In Uzbekistan, patients can only change their managing organization once a year."
Context: EpisodeOfCare
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"
* ^experimental = true
* value[x] 1..
* value[x] only date


// ===================== MORPHOLOGY =====================
Extension: Morphology
Id: morphology
Title: "Tumor Morphology Extension"
Description: "Morphological classification of tumor"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/morphology"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Condition"

* value[x] only CodeableConcept


// ===================== DIAGNOSIS SOURCE =====================
Extension: DiagnosisSource
Id: diagnosis-source
Title: "Diagnosis Source Extension"
Description: "Source of diagnostic information"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/diagnosis-source"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Condition"

* value[x] only CodeableConcept


// ===================== DETECTION CONDITION =====================
Extension: DetectionCondition
Id: detection-condition
Title: "Detection Condition Extension"
Description: "Condition under which disease is detected"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/detection-condition"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Condition"

* value[x] only CodeableConcept


// ===================== ICCC3 GROUP =====================
Extension: ICCC3Group
Id: iccc3-group
Title: "ICCC-3 Group Extension"
Description: "Grouped classification of childhood cancer (ICCC-3)"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/iccc3-group"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Condition"

* value[x] only CodeableConcept


// ===================== ICCC3 =====================
Extension: ICCC3
Id: iccc3
Title: "ICCC-3 Classification Extension"
Description: "Classification of childhood cancer (ICCC-3)"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/iccc3"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Condition"

* value[x] only CodeableConcept


// ===================== SIDE OF LESION =====================
Extension: SideOfLesion
Id: side-of-lesion
Title: "Side of Lesion Extension"
Description: "Side of the body where lesion is located"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/side-of-lesion"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Observation.bodySite"

* value[x] only CodeableConcept


// ===================== GRADE =====================
Extension: GradeDifferentiation
Id: grade-differentiation
Title: "Tumor Grade Extension"
Description: "Degree of tumor differentiation"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/grade-differentiation"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Condition"

* value[x] only CodeableConcept


// ===================== CHARACTER TREATMENT =====================
Extension: CharacterTreatment
Id: character-treatment
Title: "Character of Treatment Extension"
Description: "Characteristics of treatment provided"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/character-treatment"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* value[x] only CodeableConcept


// ===================== SPECIAL TREATMENT =====================
Extension: SpecialTreatment
Id: special-treatment
Title: "Special Treatment Type Extension"
Description: "Type of special or advanced treatment"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/special-treatment"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* value[x] only CodeableConcept


// ===================== DOSE UNIT =====================
Extension: DoseUnit
Id: dose-unit
Title: "Dose Unit Extension"
Description: "Unit used to measure dose"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/dose-unit"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "MedicationAdministration.dosage.dose"

* value[x] only CodeableConcept


// ===================== RADIOTHERAPY MODIFIERS =====================
Extension: RadiotherapyModifiers
Id: radiotherapy-modifiers
Title: "Radiotherapy Modifiers Extension"
Description: "Modifiers applied to radiotherapy procedures"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/radiotherapy-modifiers"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Procedure"

* value[x] only CodeableConcept


// ===================== RADIOPHARMACEUTICAL DRUG =====================
Extension: RadiopharmaceuticalDrug
Id: radiopharmaceutical-drug
Title: "Radiopharmaceutical Drug Extension"
Description: "Radiopharmaceutical drug used in treatment"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/radiopharmaceutical-drug"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Procedure"

* value[x] only CodeableConcept


// ===================== IRRADIATION ORGAN TEXT =====================
Extension: IrradiationOrganText
Id: irradiation-organ-text
Title: "Irradiation Organ Text Extension"
Description: "Text description of irradiated organ"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/irradiation-organ-text"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Procedure.bodySite"

* value[x] only string


// ===================== SINGLE DOSE =====================
Extension: SingleDose
Id: radiotherapy-single-dose
Title: "Radiotherapy Single Dose Extension"
Description: "Single dose administered during radiotherapy"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/radiotherapy-single-dose"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Procedure"

* value[x] only Quantity


// ===================== EQUIVALENT DOSE =====================
Extension: EquivalentDose
Id: radiotherapy-equivalent-dose
Title: "Radiotherapy Equivalent Dose Extension"
Description: "Equivalent dose in radiotherapy"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/radiotherapy-equivalent-dose"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Procedure"

* value[x] only Quantity


// ===================== TOTAL DOSE =====================
Extension: TotalDose
Id: radiotherapy-total-dose
Title: "Radiotherapy Total Dose"
Description: "Total dose administered during radiotherapy"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/radiotherapy-total-dose"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Procedure"

* value[x] only Quantity