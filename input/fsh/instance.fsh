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



Profile: VHCEncounter
Parent: Encounter
Id: 2156
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2022-10-30T19:17:19.503+00:00"
* ^meta.source = "#ZmxOp7ha00Z66ZSf"
* ^status = #draft
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)
* class.system ^short = "Inpatient Encounter"
* class.code = #IMP (exactly)
* class.code ^short = "Fixed value is IMP"
* class.display = "Inpatient Encounter" (exactly)
* diagnosis 2..2
* location 1..1
* serviceProvider 1..



Alias: $sct = http://snomed.info/sct

Profile: ConditionHepB
Parent: Condition
Id: 2158
Description: "Hepatitis B surface antigen test result"
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2022-10-31T01:48:22.211+00:00"
* ^meta.source = "#6KMSX4B4QW8oBiXc"
* ^status = #draft
* code 1..
* code.coding ^code[0] = $sct#165806002 "Hepatitis B surface antigen positive"
* code.coding ^code[+] = $sct#406010001 "Hepatitis B surface antigen negative"



Alias: $sct = http://snomed.info/sct

Profile: ConditionHepC
Parent: Condition
Id: 2159
Description: "Hepatitis C antibody test result"
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2022-10-30T17:46:56.857+00:00"
* ^meta.source = "#vOwJeyOWD3R38hI4"
* ^status = #draft
* code 1..
* code.coding 1..1
* code.coding ^code[0] = $sct#314706002 "Hepatitis C antibody test positive"
* code.coding ^code[+] = $sct#314707006 "Hepatitis C antibody test negative"



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: 2284
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-02-19T21:52:23.151+00:00"
* meta.source = "#UjpmLI0LhEsLa6fR"
* meta.profile = "https://up.smilecdr.com:8000/StructureDefinition/2283"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#11638-4 "[#]Births.still living"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueInteger = 5



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: 2281
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-02-19T21:28:35.097+00:00"
* meta.source = "#sFIXF5P8FnJeXneY"
* meta.profile = "https://up.smilecdr.com:8000/StructureDefinition/2279"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#11449-6 "Pregnancy status - Reported"
* subject = Reference(Patient/1814)
* valueCodeableConcept = $sct#77386006 "Pregnancy(true)"


Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Instance: 2295
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-02-20T10:06:28.839+00:00"
* meta.source = "#7hR7ej377Ht4H2ez"
* meta.profile = "https://up.smilecdr.com:8000/StructureDefinition/2294"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#341000119102 "Tattoo of skin"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueCodeableConcept = $sct#373066001 "Yes"



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Instance: 2317
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-02-20T18:24:18.459+00:00"
* meta.source = "#JFxgxYqNQpUACzEV"
* meta.profile = "https://up.smilecdr.com:8000/StructureDefinition/2316"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#53713009 "Works as prostitute"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueCodeableConcept = $sct#373066001 "Yes"

Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: 2319
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-02-20T18:40:30.205+00:00"
* meta.source = "#2SSc7UQgOt5xdIYA"
* meta.profile = "https://up.smilecdr.com:8000/StructureDefinition/2318"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#80438-5 "Past employer country [Location]"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueCodeableConcept = $sct#373066001 "Yes"



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: 2289
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-02-20T06:05:15.696+00:00"
* meta.source = "#NRMjUsip5rD9PWjl"
* meta.profile = "https://up.smilecdr.com:8000/StructureDefinition/2288"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#95492-5 "Injection drug use Lifetime"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueCodeableConcept = $sct#373066001 "Yes"


Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Instance: 2287
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-02-20T05:53:36.104+00:00"
* meta.source = "#IV5m4UaMVt1saHPW"
* meta.profile = "https://up.smilecdr.com:8000/StructureDefinition/2286"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#228400001 "Shares needles"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueCodeableConcept = $sct#373066001 "Yes"



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: 2299
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-02-20T10:56:56.307+00:00"
* meta.source = "#b2VHeqXZKp9eUQnB"
* meta.profile = "https://up.smilecdr.com:8000/StructureDefinition/2298"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#83315-2 "Sexual activity with a female in the past year"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueCodeableConcept = $sct#373066001 "Yes"



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: 2297
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-02-20T10:50:29.948+00:00"
* meta.source = "#ttTBULg8bQggl51j"
* meta.profile = "https://up.smilecdr.com:8000/StructureDefinition/2296"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#83316-0 "Sexual activity with a male in the past year"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueCodeableConcept = $sct#373066001 "Yes"



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Instance: 2312
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-02-20T18:09:13.286+00:00"
* meta.source = "#TGUjIyq9OOH4sl10"
* meta.profile = "hhttps://up.smilecdr.com:8000/StructureDefinition/2311"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $sct#788159003 "Client of prostitutes"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueCodeableConcept = $sct#373066001 "Yes"



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: 2291
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-02-20T09:44:57.780+00:00"
* meta.source = "#qoMm9hdi7LYA3I1E"
* meta.profile = "https://up.smilecdr.com:8000/StructureDefinition/2290"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#55217-4 "Stick or puncture with a needle or other object contaminated with blood"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueCodeableConcept = $sct#373066001 "Yes"



Alias: $sct = http://snomed.info/sct

Profile: FamilyMemberHistoryVHcase34
Parent: FamilyMemberHistory
Id: FamilyMemberHistoryVHcase34
* ^url = "https://example.org/fhir/StructureDefinition/FamilyMemberHistoryVHcase34"
* ^status = #draft
* relationship.coding.system = "https://terminology.hl7.org/CodeSystem/v3-RoleCode" (exactly)
* relationship.coding.code = #NMTH (exactly)
* relationship.coding.display = "natural mother" (exactly)
* deceased[x] only boolean
* condition ..2
* condition.code.coding ^code[0] = $sct#66071002 "Viral hepatitis type B (disorder)"
* condition.code.coding ^code[+] = $sct#50711007 "Viral hepatitis type C (disorder)"


Alias: $sct = http://snomed.info/sct

Profile: FamilyMemberHistoryVHcase35
Parent: FamilyMemberHistory
Id: FamilyMemberHistoryVHcase35
* ^url = "https://example.org/fhir/StructureDefinition/FamilyMemberHistoryVHcase35"
* ^status = #draft
* relationship.coding.system = "https://terminology.hl7.org/CodeSystem/v3-RoleCode" (exactly)
* relationship.coding.code = #SPS (exactly)
* relationship.coding.display = "spouse" (exactly)
* deceased[x] only boolean
* condition.code.coding ^code[0] = $sct#66071002 "Viral hepatitis type B (disorder)"
* condition.code.coding ^code[+] = $sct#50711007 "Viral hepatitis type C (disorder)"



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Profile: ObservationVHcase13
Parent: Observation
Id: ObservationVHcase13
* ^url = "https://example.org/fhir/StructureDefinition/ObservationVHcase13"
* ^status = #draft
* category 1..1
* category.coding 1..1
* category.coding ^code[0] = $observation-category#social-history "Social History"
* category.coding ^code[+] = $sct#161664006 "History of blood transfusion (situation)"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #social-history (exactly)
* category.coding.display = "Social History" (exactly)
* code.coding 1..1
* code.coding ^code[0] = $sct#109841003 "Liver cell carcinoma (disorder)"
* code.coding ^code[+] = $sct#288556008 "Before(attribute)"
* code.coding ^code[+] = $sct#50711007 "50711007"
* code.coding.system = "http://loinc.org" (exactly)
* code.coding.code = #76691-5 (exactly)
* code.coding.display = "Gender Identity" (exactly)
* subject 1..
* subject.type = "Patient" (exactly)
* value[x] 1..
* value[x] only string



Alias: $sct = http://snomed.info/sct

Profile: ObservationVHcase48
Parent: Observation
Id: ObservationVHcase48
* ^url = "https://example.org/fhir/StructureDefinition/ObservationVHcase48"
* ^status = #draft
* category 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #social-history (exactly)
* category.coding.display = "Social History" (exactly)
* code.coding 4..4
* code.coding ^code[0] = $sct#109841003 "Liver cell carcinoma (disorder)"
* code.coding ^code[+] = $sct#288556008 "Before(attribute)"
* code.coding ^code[+] = $sct#50711007 "50711007"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* subject 1..
* subject.type = "Patient" (exactly)
* value[x] 1..
* value[x] only CodeableConcept or boolean



Profile: ObservationVHcase49
Parent: Observation
Id: ObservationVHcase49
* ^url = "https://example.org/fhir/StructureDefinition/ObservationVHcase49"
* ^status = #draft
* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #social-history (exactly)
* category.coding.display = "Social History" (exactly)
* code.coding ..1
* code.coding.system = "http://snomed.info/sct" (exactly)
* code.coding.code = #161664006 (exactly)
* code.coding.display = "History of blood transfusion (situation)" (exactly)
* subject 1..
* subject.type = "Patient" (exactly)
* value[x] 1..
* value[x] only CodeableConcept or boolean


Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Profile: ObservationVHcase50
Parent: Observation
Id: ObservationVHcase50
* ^url = "https://example.org/fhir/StructureDefinition/ObservationVHcase50"
* ^status = #draft
* category 1..1
* category.coding 1..1
* category.coding ^code[0] = $observation-category#social-history "Social History"
* category.coding ^code[+] = $sct#161664006 "History of blood transfusion (situation)"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #social-history (exactly)
* category.coding.display = "Social History" (exactly)
* code.coding 1..1
* code.coding ^code[0] = $sct#109841003 "Liver cell carcinoma (disorder)"
* code.coding ^code[+] = $sct#288556008 "Before(attribute)"
* code.coding ^code[+] = $sct#50711007 "50711007"
* code.coding.system = "http://snomed.info/sct" (exactly)
* code.coding.code = #161693006 (exactly)
* code.coding.display = "History of renal dialysis (situation)" (exactly)
* subject 1..
* subject.type = "Patient" (exactly)
* value[x] 1..
* value[x] only CodeableConcept or boolean



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Profile: ObservationVHcase51
Parent: Observation
Id: ObservationVHcase51
* ^url = "https://example.org/fhir/StructureDefinition/ObservationVHcase51"
* ^status = #draft
* category 1..1
* category.coding 1..1
* category.coding ^code[0] = $observation-category#social-history "Social History"
* category.coding ^code[+] = $sct#161664006 "History of blood transfusion (situation)"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #social-history (exactly)
* category.coding.display = "Social History" (exactly)
* code.coding 1..1
* code.coding ^code[0] = $sct#109841003 "Liver cell carcinoma (disorder)"
* code.coding ^code[+] = $sct#288556008 "Before(attribute)"
* code.coding ^code[+] = $sct#50711007 "50711007"
* code.coding.system = "http://loinc.org" (exactly)
* code.coding.code = #45231-8 (exactly)
* code.coding.display = "HIV treatment prior to enrollment" (exactly)
* subject 1..
* subject.type = "Patient" (exactly)
* value[x] 1..
* value[x] only CodeableConcept or boolean



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Profile: ObservationVHcase55
Parent: Observation
Id: ObservationVHcase55
* ^url = "https://example.org/fhir/StructureDefinition/ObservationVHcase55"
* ^status = #draft
* category 1..1
* category.coding 1..1
* category.coding ^code[0] = $observation-category#social-history "Social History"
* category.coding ^code[+] = $sct#161664006 "History of blood transfusion (situation)"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #social-history (exactly)
* category.coding.display = "Social History" (exactly)
* code.coding 1..1
* code.coding ^code[0] = $sct#109841003 "Liver cell carcinoma (disorder)"
* code.coding ^code[+] = $sct#288556008 "Before(attribute)"
* code.coding ^code[+] = $sct#50711007 "50711007"
* code.coding.system = "http://snomed.info/sct" (exactly)
* code.coding.code = #243789007 (exactly)
* code.coding.display = "Administration of vaccine product containing only Hepatitis A virus antigen (procedure)" (exactly)
* subject 1..
* subject.type = "Patient" (exactly)
* value[x] 1..
* value[x] only CodeableConcept or boolean



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct

Profile: ObservationVHcase56
Parent: Observation
Id: ObservationVHcase56
* ^url = "https://example.org/fhir/StructureDefinition/ObservationVHcase56"
* ^status = #draft
* category 1..1
* category.coding 1..1
* category.coding ^code[0] = $observation-category#social-history "Social History"
* category.coding ^code[+] = $sct#161664006 "History of blood transfusion (situation)"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #social-history (exactly)
* category.coding.display = "Social History" (exactly)
* code.coding 1..1
* code.coding ^code[0] = $sct#109841003 "Liver cell carcinoma (disorder)"
* code.coding ^code[+] = $sct#288556008 "Before(attribute)"
* code.coding ^code[+] = $sct#50711007 "50711007"
* code.coding.system = "http://snomed.info/sct" (exactly)
* code.coding.code = #16584000 (exactly)
* code.coding.display = "Administration of vaccine product containing only Hepatitis B virus antigen (procedure)" (exactly)
* subject 1..
* subject.type = "Patient" (exactly)
* value[x] 1..
* value[x] only string



Alias: $snomed = https://www.snomed.org

Profile: VHcaresplenomegaly
Parent: Condition
Id: VHcaresplenomegaly
* ^url = "https://example.org/fhir/StructureDefinition/vhcaresplenomegaly"
* ^status = #draft
* code = $snomed#404684003 "Clinical finding" (exactly)
* code ^fixedCodeableConcept.coding[1] = $snomed#16294009 "Splenomegaly Disorder"



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcaretotalBilirubin
Parent: Observation
Id: VHcaretotalBilirubin
* ^url = "https://example.org/fhir/StructureDefinition/VHcaretotalBilirubin"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#1975-2 "Bilirubin.total [Mass/volume] in Serum or Plasma" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcaretransientElastography
Parent: Observation
Id: VHcaretransientElastography
* ^url = "https://example.org/fhir/StructureDefinition/VHcaretransientElastography"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#77615-3 "Liver stiffness by US.transient elastography" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareweight
Parent: Observation
Id: VHcareweight
* ^url = "https://example.org/fhir/StructureDefinition/VHcareweight"
* ^status = #draft
* category.coding = $observation-category#vital-signs "Vital Signs" (exactly)
* code = $loinc#29463-7 "Body weight" (exactly)
* subject.reference 1..
* value[x] 1..
* value[x] only Quantity



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcarealbumin
Parent: Observation
Id: VHcarealbumin
* ^url = "https://example.org/fhir/StructureDefinition/VHcarealbumin"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#1751-7 "Albumin [Mass/volume] in Serum or Plasma" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareALT
Parent: Observation
Id: VHcareALT
* ^url = "https://example.org/fhir/StructureDefinition/VHcareALT"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#77144-4 "Alanine aminotransferase [Enzymatic activity/volume] in Serum, Plasma or Blood" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareaminotransferaseScore
Parent: Observation
Id: VHcareaminotransferaseScore
* ^url = "https://example.org/fhir/StructureDefinition/VHcareaminotransferaseScore"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#86465-2 "AST to platelet ratio index in Serum and Blood by calculation" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareAntiHCV
Parent: Observation
Id: VHcareAntiHCV
* ^url = "https://example.org/fhir/StructureDefinition/VHcareAntiHCV"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#95237-4 "Hepatitis C virus Ab [Interpretation] in Serum or Plasma" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only CodeableConcept or boolean



Alias: $snomed = https://www.snomed.org

Profile: VHcarecoagulopathy
Parent: Condition
Id: VHcarecoagulopathy
* ^url = "https://example.org/fhir/StructureDefinition/vhcarecoagulopathy"
* ^status = #draft
* code = $snomed#404684003 "Clinical finding" (exactly)
* code ^fixedCodeableConcept.coding[1] = $snomed#18165001 "Blood Coagulation Disorder"



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcarechildTurcottePugh
Parent: Observation
Id: VHcarechildTurcottePugh
* ^url = "https://example.org/fhir/StructureDefinition/VHcarechildTurcottePugh"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#98152-2 "Total score [Child-Pugh]" (exactly)
* code ^fixedCodeableConcept.coding[1] = $loinc#41806-1 "CT Abdomen"
* code ^fixedCodeableConcept.coding[+] = $loinc#24556-3 "MRI abdomen study"
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity


Alias: $icd = https://icd.who.int/

Profile: VHcareAscites
Parent: Condition
Id: VHcareAscites
* ^url = "https://example.org/fhir/StructureDefinition/vhcareAscites"
* ^status = #draft
* code = $icd#R18 "Ascites" (exactly)



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareAST
Parent: Observation
Id: VHcareAST
* ^url = "https://example.org/fhir/StructureDefinition/VHcareAST"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#1920-8 "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity



Alias: $icd = https://icd.who.int/

Profile: VHcarefatigue
Parent: Condition
Id: VHcarefatigue
* ^url = "https://example.org/fhir/StructureDefinition/vhcarefatigue"
* ^status = #draft
* code = $icd#R53.82 "Chronic Fatigue, unspecified" (exactly)



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcarefibrosis
Parent: Observation
Id: VHcarefibrosis
* ^url = "https://example.org/fhir/StructureDefinition/VHcarefibrosis"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#98488-0 "Liver fibrosis score in Serum Calculated by FIB4" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareHCVRNAQuali
Parent: Observation
Id: VHcareHCVRNAQuali
* ^url = "https://example.org/fhir/StructureDefinition/VHcareHCVRNAQuali"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#10676-5 "Hepatitis C virus RNA [Units/volume] (viral load) in Serum or Plasma by Probe with amplification" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only CodeableConcept or boolean



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareHBVDNA
Parent: Observation
Id: VHcareHBVDNA
* ^url = "https://example.org/fhir/StructureDefinition/VHcareHBVDNA"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#47216-7 "Hepatitis B virus DNA [#/volume] (viral load) in Serum or Plasma by Probe and target amplification method detection limit = 200 copies/ml" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareHBsAg
Parent: Observation
Id: VHcareHBsAg
* ^url = "https://example.org/fhir/StructureDefinition/VHcareHBsAg"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#5195-3 "Hepatitis B virus surface Ag [Presence] in Serum" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only CodeableConcept or boolean



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareHBeAg
Parent: Observation
Id: VHcareHBeAg
* ^url = "https://example.org/fhir/StructureDefinition/VHcareHBeAg"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#39007-0 "Hepatitis B virus e Ag [Presence] in Specimen" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only CodeableConcept or boolean



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareheight
Parent: Observation
Id: VHcareheight
* ^url = "https://example.org/fhir/StructureDefinition/VHcareheight"
* ^status = #draft
* category.coding = $observation-category#vital-signs "Vital Signs" (exactly)
* code = $loinc#8302-2 "Body height" (exactly)
* subject.reference 1..
* value[x] 1..
* value[x] only Quantity



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareImaging
Parent: Observation
Id: VHcareImaging
* ^url = "https://example.org/fhir/StructureDefinition/VHcareImaging"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#28614-6 "Liver stiffness by US.transient elastography" (exactly)
* code ^fixedCodeableConcept.coding[1] = $loinc#41806-1 "CT Abdomen"
* code ^fixedCodeableConcept.coding[+] = $loinc#24556-3 "MRI abdomen study"
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only CodeableConcept



Alias: $snomed = https://www.snomed.org

Profile: VHcarehepatomegaly
Parent: Condition
Id: VHcarehepatomegaly
* ^url = "https://example.org/fhir/StructureDefinition/vhcarehepatomegaly"
* ^status = #draft
* code = $snomed#404684003 "Clinical finding" (exactly)
* code ^fixedCodeableConcept.coding[1] = $snomed#80515008 "Large Liver Disorder"



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareHCVRNAQuanti
Parent: Observation
Id: VHcareHCVRNAQuanti
* ^url = "https://example.org/fhir/StructureDefinition/VHcareHCVRNAQuanti"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#10676-5 "Hepatitis C virus RNA [Units/volume] (viral load) in Serum or Plasma by Probe with amplification" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity



Alias: $sct = http://snomed.info/sct

Profile: VHcarehepBInfection
Parent: Condition
Id: VHcarehepBInfection
* ^url = "https://example.org/fhir/StructureDefinition/vhcarehepBInfection"
* ^status = #draft
* code = $sct#186626002 "Acute hepatitis B with delta-agent (coinfection) without hepatic coma" (exactly)




Profile: VHcareotherSignAndSymptoms
Parent: Condition
Id: VHcareotherSignAndSymptoms
* ^url = "https://example.org/fhir/StructureDefinition/vhcareotherSignAndSymptoms"
* ^status = #draft
* note 1..1
* note ^short = "This is for vh-care:part3:otherSignAndSymptoms"
* note ^definition = "Please specify Sign and Symptoms not included on the deafault list"




Alias: $snomed = https://www.snomed.org

Profile: VHhcarejaundice
Parent: Condition
Id: VHhcarejaundice
* ^url = "https://example.org/fhir/StructureDefinition/vhcarejaundice"
* ^status = #draft
* code = $snomed#404684003 "Clinical finding" (exactly)
* code ^fixedCodeableConcept.coding[1] = $snomed#18165001 "Jaundice"



Profile: VHcareotherInfection
Parent: Condition
Id: VHcareotherInfection
* ^url = "https://example.org/fhir/StructureDefinition/vhcareotherInfection"
* ^status = #draft
* note 1..1
* note ^short = "This is for vh-care:part3:otherInfection"
* note ^definition = "Please specify other infections not included on the deafault list"



Alias: $snomed = https://www.snomed.org

Profile: VHcarepalmarErythema
Parent: Condition
Id: VHcarepalmarErythema
* ^url = "https://example.org/fhir/StructureDefinition/vhcarepalmarErythema"
* ^status = #draft
* code = $snomed#404684003 "Clinical finding" (exactly)
* code ^fixedCodeableConcept.coding[1] = $snomed#56940005 "Palmar erythema"



Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcareplateletCount
Parent: Observation
Id: VHcareplateletCount
* ^url = "https://example.org/fhir/StructureDefinition/VHcareplateletCount"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#26515-7 "Platelets [#/volume] in Blood" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity




Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: VHcarePTINR
Parent: Observation
Id: VHcarePTINR
* ^url = "https://example.org/fhir/StructureDefinition/VHcarePTINR"
* ^status = #draft
* category.coding = $observation-category#laboratory "Laboratory" (exactly)
* code = $loinc#5902-2 "Prothrombin time (PT)" (exactly)
* subject.reference 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity




Alias: $icd = https://icd.who.int/

Profile: VHcarepruritus
Parent: Condition
Id: VHcarepruritus
* ^url = "https://example.org/fhir/StructureDefinition/vhcarepruritus"
* ^status = #draft
* code = $icd#L29 "Pruritus" (exactly)


