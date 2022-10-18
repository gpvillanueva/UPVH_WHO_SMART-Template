Extension: FatherName
Id: FatherName
* ^url = "https://up.smilecdr.com:8000/StructureDefinition/2131"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Patient"
* url = "https://up.smilecdr.com:8000/StructureDefinition/2131" (exactly)
* value[x] only string

Extension: MotherName
Id: MotherName
* ^url = "https://up.smilecdr.com:8000/StructureDefinition/2132"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Patient"
* url = "https://up.smilecdr.com:8000/StructureDefinition/2132" (exactly)
* value[x] only string

Alias: $2131 = https://up.smilecdr.com:8000/StructureDefinition/2131
Alias: $2132 = https://up.smilecdr.com:8000/StructureDefinition/2132
Alias: $patient-nationality = http://hl7.org/fhir/StructureDefinition/patient-nationality

Profile: VHPatient2
Parent: Patient
Id: VHPatient2
Description: "VH Patient"
* ^url = "https://up.smilecdr.com:8000/StructureDefinition/2137"
* ^status = #draft
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $2131 named FatherName 0..1 and
    $2132 named MotherName 0..1 and
    $patient-nationality named myExtension 0..1
* extension[FatherName] ^isModifier = false
* extension[MotherName] ^isModifier = false
* extension[myExtension] ^isModifier = false
* identifier ..3
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^short = "All Identifiers"
* identifier contains
    patientCode 1..1 and
    uic 1..1 and
    philhealthNo 1..1
* identifier[patientCode].use = #usual (exactly)
* identifier[patientCode].use ^definition = "Required"
* identifier[patientCode].value 1..
* identifier[uic] ^short = "Patient UIC"
* identifier[uic] ^definition = "First two letters of mother's name + first two letters of father's name + Birth order + Birthdate(mm/dd/yyyy)"
* identifier[uic].use = #official (exactly)
* identifier[uic].use ^definition = "First two letters of mother's name + first two letters of father's name + Birth order + Birthdate(mm/dd/yyyy)"
* identifier[uic].value 1..
* identifier[philhealthNo] ^short = "philhealthNo"
* identifier[philhealthNo].use = #temp (exactly)
* identifier[philhealthNo].value 1..
* name 1..
* name.family 1..
* name.family ^definition = "Patient.name[0].family"
* name.given 1..
* name.given ^definition = "Patient.name[0].given[0]\r\nPatient.name[0].given[1]"
* name.suffix ^definition = "Patient.name[0].suffix"
* telecom.use = #work (exactly)
* address ..2
* address ^definition = "CurrentAddress[0]\r\nPermanentAddress[1]"
* address.use 1..
* address.use ^short = "use=home||old"
* address.use ^definition = "Current=home\r\nPermanent=old"
* address.type 1..
* address.type = #both (exactly)
* maritalStatus ^short = "Civil Status"
* maritalStatus ^definition = "Civil status"
* managingOrganization 1..


Profile: VHCEncounter
Parent: Encounter
Id: 2156
* ^meta.versionId = "2"
* ^meta.lastUpdated = "2022-10-03T16:05:09.644+00:00"
* ^status = #draft
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)
* class.system ^short = "Inpatient Encounter"
* class.code = #IMP (exactly)
* class.code ^short = "Fixed value is IMP"
* class.display = "Inpatient Encounter" (exactly)
* period 1..
* diagnosis 1..2
* diagnosis ^slicing.discriminator.type = #value
* diagnosis ^slicing.discriminator.path = "condition.reference"
* diagnosis ^slicing.rules = #open
* diagnosis contains
    HepB 0..2 and
    HepC 0..2
* location 1..1
* serviceProvider 1..


Profile: ConditionHepB
Parent: Condition
Id: 2158
Description: "Hepatitis B surface antigen condition"
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2022-10-18T06:58:43.612+00:00"
* ^status = #draft
* verificationStatus.coding ^code[0] = http://snomed.info/sct#165806002 "Hepatitis B surface antigen positive"
* verificationStatus.coding ^code[+] = http://snomed.info/sct#406010001 "Hepatitis B surface antigen negative"


Profile: ConditionHepC
Parent: Condition
Id: 2159
Description: "Hepatitis C antibody test positive"
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2022-10-18T06:59:48.150+00:00"
* ^status = #draft
* verificationStatus.coding ^code[0] = http://snomed.info/sct#314707006 "Hepatitis C antibody test negative"
* verificationStatus.coding ^code[+] = http://snomed.info/sct#314706002 "Hepatitis C antibody test positive"