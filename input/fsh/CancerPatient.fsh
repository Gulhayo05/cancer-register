Profile: CancerPatient
Parent: Patient
Id: cancer-patient
Title: "Cancer Patient"
Description: "Patient profile for oncology use"

* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^language = #en

// ===================== EXTENSIONS =====================
* extension ^short = "Additional demographic details such as nationality and citizenship"
* extension contains
    patient-nationality named nationality 0..1 MS and
    patient-citizenship named citizenship 0..1 MS


* extension[nationality] ^short = "Patient nationality"
* extension[citizenship] ^short = "Patient citizenship"
* extension[nationality].extension[code].valueCodeableConcept from NationalityVS (required)
* extension[citizenship].extension[code].valueCodeableConcept from CitizenshipVS (required)


// ===================== IDENTIFIER SLICING =====================
* identifier ^short = "Patient identifiers such as national ID, passport, and health card"
* identifier 1..* MS
  * extension contains data-absent-reason named data-absent-reason 0..1 MS
* identifier.use ^short = "Purpose of the identifier"
* identifier.use from IdentifierUseVS (required)
* identifier.type ^short = "Type of identifier"
* identifier.type from IdentifierTypeVS (required)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Ways a patient can be identified"
* identifier ^slicing.ordered = false

* identifier contains
    nationalId 0..1 MS and
    passportLocal 0..1 MS and
    healthCardId 0..1 MS


// =====================================================
// ===================== NATIONAL ID ===================
// =====================================================

* identifier[nationalId] ^short = "National unique identifier (e.g. PINFL)"
  * system 1..1 MS
  * system ^short = "Identifier system for national ID"
  * system = $national-id

  * type 1..1 MS
  * type = $identifier-type#NI "National unique individual identifier"
  * use = #official
  * value 1..1 MS

// =====================================================
// ===================== PASSPORT ======================
// =====================================================
* identifier[passportLocal] ^short = "Local passport number"
  * system 1..1 MS
  * system = $passport-local
  * type 1..1 MS
  * type = $identifier-type#PPN "Passport number"
  * use = #official
  * value 1..1 MS

// =====================================================
// ===================== HEALTH CARD ===================
// =====================================================
* identifier[healthCardId]
  * system 1..1 MS
  * system = $healthcard
  * type 1..1 MS
  * type = $identifier-type#HC "Health card number"
  * use = #official
  * value 1..1 MS


// ===================== NAME =====================
* name ^short = "Patient's full name"
* insert HumanName


// ===================== TELECOM =====================
* telecom 0..*
* telecom ^short = "Contact details (phone, email, etc.)"
* telecom.system 1..1
* telecom.system ^short = "Type of contact (phone, email)"
* telecom.value ^short = "Contact value"
* telecom.use ^short = "Purpose of contact"


// ===================== GENDER =====================
* gender 0..1 MS
* gender ^short = "Administrative gender of the patient"
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)

* gender.extension contains GenderOtherUZ named genderOther 0..1
* gender.extension[genderOther] ^short = "Additional gender information when gender is 'other'"
* gender obeys uzcore-gender-other-2


// ===================== BIRTH DATE =====================
* birthDate 1..1 MS
* birthDate ^short = "Date of birth of the patient"



// ===================== ADDRESS =====================
// Discriminator on country value to separate UZ vs international
* address ^short = "Patient addresses (Uzbekistan and international)"

* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "country"
* address ^slicing.rules = #open
* address ^slicing.description = "Uzbekistan address vs international address"
* address ^slicing.ordered = false

* address contains
    uzAddress 0..* MS and
    i18nAddress 0..* MS

// Uzbekistan address: country fixed to "UZ"
* address[uzAddress] ^short = "Address within Uzbekistan"
* address[uzAddress].country 1..1 MS
* address[uzAddress].country = "UZ"
* address[uzAddress].district MS
* address[uzAddress].city MS

// International address: country must be a non-UZ ISO 3166-1 alpha-2 code
* address[i18nAddress] ^short = "International address outside Uzbekistan"
* address[i18nAddress].country 1..1 MS
* address[i18nAddress].country from ISO3166_2SansUZ (required)


// ===================== GENERAL =====================
* active MS
* active ^short = "Whether this patient record is active"


Instance: cancer-patient-example
InstanceOf: CancerPatient
Title: "Cancer Patient Example"
Description: "Example cancer patient with identifiers and demographics"
Usage: #example
// * language = #en

// ---------- NATIONAL ID ----------
* identifier[nationalId]
  * value = "30211975910033"

// ---------- PASSPORT ----------
* identifier[passportLocal]
  * value = "AC1234567"

// ---------- HEALTH CARD ----------
* identifier[healthCardId]
  * value = "01234567890123"


// ===================== EXTENSIONS =====================
* extension[nationality].extension[code].valueCodeableConcept = $nationality-cs#161 "Uzbeks"
* extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#UZ "Uzbekistan"


// ===================== NAME =====================
* name
  * use = #official
  * text = "Tolibjon Akmalovich Tolibov"
  * family = "Tolibov"
  * given = "Tolibjon"
  * suffix = "Akmalovich"


// ===================== TELECOM =====================
* telecom[0].system = #phone
* telecom[0].value = "+998901234567"
* telecom[0].use = #mobile


// ===================== GENDER =====================
* gender = #male


// ===================== BIRTH DATE =====================
* birthDate = "1990-01-01"


// ===================== ACTIVE =====================
* active = true


// ===================== ADDRESS =====================
* address[uzAddress]
  * use = #temp
  * type = #physical
  * line = "Apt. 12, Bldg. 13, Quarter 2"
  * country = "UZ"
  * district = "1703206"
  * city = "22070011"

* address[i18nAddress]
  * use = #temp
  * type = #physical
  * line = "123 Baker Street"
  * country = "GB"
  * period.start = "2000-10-16"




Instance: cancer-patient-gender-other-example
InstanceOf: CancerPatient
Title: "Cancer Patient Example - Gender Other"
Description: "Example cancer patient using the gender-other extension"
Usage: #example

// ---------- NATIONAL ID ----------
* identifier[nationalId].value = "30211975910034"

// ---------- PASSPORT ----------
* identifier[passportLocal].value = "BC9876543"

// ---------- HEALTH CARD ----------
* identifier[healthCardId].value = "98765432101234"


// ===================== EXTENSIONS =====================
* extension[nationality].extension[code].valueCodeableConcept = $nationality-cs#161 "Uzbeks"
* extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#UZ "Uzbekistan"


// ===================== NAME =====================
* name
  * use = #official
  * text = "Samir Alimuhamedov"
  * family = "Aliimuhamedov"
  * given = "Samir"


// ===================== TELECOM =====================
* telecom[0].system = #phone
* telecom[0].value = "+998901112233"
* telecom[0].use = #mobile


// ===================== GENDER =====================
* gender = #other
* gender.extension[genderOther].valueCoding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/gender-other-cs"
* gender.extension[genderOther].valueCoding.code = #regis0007.00005
* gender.extension[genderOther].valueCoding.display = "Changed gender to male"


// ===================== BIRTH DATE =====================
* birthDate = "1995-05-10"


// ===================== ACTIVE =====================
* active = true


// ===================== ADDRESS =====================
* address[uzAddress]
  * use = #home
  * type = #physical
  * line = "House 14, Street 5"
  * country = "UZ"
  * district = "1703206"
  * city = "22070011"