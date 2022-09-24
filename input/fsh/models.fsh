Logical: ViralHepatitisCaseReportFormModel
Title: "Viral Hepatitis Case Report Form Logical Model"
Description: "Viral Hepatitis Case Report Form Logical Model"
* ConsultDate 1..1 dateTime "Consult Date (MM/DD/YYYY)"
* PatientCode 1..1 Identifier "Patient Code" "Patient Identifier"
* TestingFacilityName 1..1 Reference "Testing Facility Name" "The location where the encounter takes place."
* ContactNo 0..* ContactPoint "Contact Number" "Contact number of the Patient"
* FacilityAddress 1..1 Address "Facility Address" "Physical location where the encounter takes place"
* ClientType 1..1 code "Client Type" "Walk-in, Referrakm, and In-patient" 
* TestedPositiveForHepatitisB 0..1 BackboneElement "If patient tested positive for Hepatitis B"
* TestedPositiveForHepatitisC 0..1 BackboneElement "If patient tested positive for Hepatitis C"
* DateofBaselineHBsAgTest 0..1 dateTime "Date of Baseline HBsAgTest (MM/DD/YYYY)"
* DateofBaselineAnti-HCVTest 0..1 dateTime "Date of Baseline Anti-HCV test (MM/DD/YYYY)"
* FirstName 0..* HumanName "First Name" "First Name of the Patient"
* MiddleName 0..* HumanName "Middle Name" "Middle Name of the Patient"
* LastName 1..1 HumanName "Last Name" "Last Name of the Patient"
* Suffix 0..* HumanName "Suffix" "Suffix of the Patient"
* UniqueIdentifierCode 1..1 id "Unique Identifier Code for the patient" "First two letters of mother's name, First two letters of father's name, birth order, and Birthdate (MM/FF/BO/MM/DD/YYYY)"
  * FirstTwoLetterOfMothersName 1..1 id "First two letters of mother's name" "Format - AA/XX/XX/XX/XX/XXXX"
  * FirstTwoLetterOfFathersName 1..1 id "First two letters of father's name" "Format - XX/AA/XX/XX/XX/XXXX"
  * BirthOrder 1..1 integer "Birth Order" "Format - XX/XX/##/XX/XX/XXXX"
  * BirthDate 1..1 date "Birth Date" "Format - XX/XX/XX/MM/DD/YYYY"
* SexAssignedAtBirth 0..1 code "Sex Assigned at Birth"
* SelfIdentity 0..1 code "Patient Self Identity"
* IsShePregnant 0..* code "If female, is she pregnant?"
  * IsShePregnant 0..* CodeableConcept "If female, is she pregnant?"
* NumberOfChildren 0..* integer "Number of Children"
* CivilStatus 0..* CodeableConcept "Civil Status"
* Nationality 0..* CodeableConcept "Nationality"
* AgeInYears 1..1 Age "Age of Patient in Years"
* PhilHealthNo 1..1 Identifier "PhilHealth Number of the Patient"
* CurrentAddressCityMunicipality 1..* Address "Current City/Municipality Address of the Patient"
* CurrentAddressProvince 1..* Address "Current Province Address of the Patient"
* CurrentAddressRegion 1..* Address "Current Region Address of the Patient"
* PermanentAddressCityMunicipality 1..* Address "Permanent City/Municipality Address of the Patient"
* PermanentAddressProvince 1..* Address "Permanent Province Address of the Patient"
* PermanentAddressRegion 1..* Address "Permanent Region Address of the Patient"
* DidTheClientsMotherTestPositiveForHepatitisB 1..1 BackboneElement "History of Client's mother for Hepatitis B" "Did the client's mother test positive for Hepatitis B?"
* DidTheClientsMotherTestPositiveForHepatitisC 1..1 BackboneElement "History of Client's mother for Hepatitis C" "Did the client's mother test positive for Hepatitis C?"
* DidTheClientsSpouseOrPartnerTestPositiveForHepatitisB 1..1 BackboneElement "History of Client's Spouse/Partner for Hepatitis B" "Did the client's spouse/partner test positive for Hepatitis B?"
* DidTheClientsSpouseOrPartnerTestPositiveForHepatitisC 1..1 BackboneElement "History of Client's Spouse/Partner for Hepatitis C" "Did the client's spouse/partner test positive for Hepatitis C?"
* DoesTheClientHaveHistoryOfSharingNeedleAndOrSyringeWithOthers 1..1 CodeableConcept "History of client of using/sharing needle or syringe with others" "Does the client have history of sharing needle and/or syringe with others?"
* DoesTheClientHaveHistoryOfInjectingDrugs 1..1 CodeableConcept "Does the client have history of injecting drugs?"
* HasTheClientBeenAccidentallyPrickedByObjectContaminatedWithBlood 1..1 CodeableConcept "Has the client been accidentally pricked by needles/sharps or other objects contaminated with blood?"
* DidTheClientReceiveATattoo 1..1 CodeableConcept "Did the client receive a tattoo?"
* WasThereAHistoryInThePastYearOfSexualIntercourseWithAMale 1..1 CodeableConcept "Was there a history(past year) of sexual intercourse with a male?"
* WasThereAHistoryInThePastYearOfSexualIntercourseWithAFemale 1..1 CodeableConcept "Was there a history(past year) of sexual intercourse with a female?"
* DoesTheClientPayInCashOrInKindForSex 1..1 CodeableConcept "Does the client pay (in cash or in kind) for sex?"
* DoesTheClientAcceptPaymentInCashOrInKindInExchangeForSex 1..1 CodeableConcept "Does the client accept payment (in cash or in kind) in exchange for sex?"
* WasThereAHistoryOfEmploymentAbroadInThePast 1..1 CodeableConcept "Was there a history of employment abroad in the past?"
* IsThereAFamilyHistoryOfHCCOrPrimaryLiverCancer 1..1 BackboneElement "History of Client's family on Hepatocellular Carcinoma (HCC)/Primary Liver Cancer" "Is there a family history of Hepatocellular Carcinoma (HCC)/primary liver cancer?"
* DoesTheClientHaveHCCPriorToHepatitisBAndOrHepatitisCDiagnosis 1..1 CodeableConcept "Client's History of having Hepatocellular Carcinoma" "Does the client have hepatocellular carcinoma prior to Hepatitis B and/or Hepatitis C diagnosis?"
* DoesTheClientHaveHistoryOfReceivingBloodOrBloodProducts 1..1 CodeableConcept "Client's History of Receiving Blood or Blood Products" "Does the client have history of receiving blood/blood products?"
* DoesTheClientHaveHistoryOfUndergoingHemodialysis 1..1 CodeableConcept "Client's History of undergoing hemodialysis" "Does the client have history of undergoing hemodialysis?"
* WasThereAHistoryOfBeingVaccinatedForHepatitisA 1..1 CodeableConcept "Client's History of Being Vaccinated for Hepatitis A" "Was there a history of being vaccinated for Hepatitis A?"
* WasThereAHistoryOfBeingVaccinatedForHepatitisB 1..1 CodeableConcept "Client's History of Being Vaccinated for Hepatitis B" "Was there a history of being vaccinated for Hepatitis B?"
* DoesTheClientHaveHistoryOfHIVTreatmentPriorToEnrollment 1..1 CodeableConcept "Client's History of Undergoing HIV Treatment Prior to Enrollment" "Does the client have history of HIV treatment prior to enrollment?"
* HIVIfTheClientHasHistoryOfTakingAntiretroviralDrugForHIV 1..1 BackboneElement "The Client has history of testing positive for HIV prior to the baseline diagnosis of viral hepatitis" "Did the client tested positive for HIV prior to baseline diagnosis of hepatitis?"
  * NoYesHIVMedsTaken 1..1 BackboneElement "List of Antiretroviral Drugs for HIV Taken" "If the client has history of taking antiretroviral drugs, please specify the drug(s) used"
* HepatitisBIfTheClientHasHistoryOfTakingAntiviralDrugForHepB 1..1 BackboneElement "The Client has history of testing positive for Hepatitis B prior to the baseline diagnosis of viral hepatitis" "Did the client tested positive for Hepatitis B prior to baseline diagnosis of hepatitis?"
  * NoYesHepatitisBMedsTaken 1..1 BackboneElement "List of Antiviral Drugs for Hepatitis B Taken" "If the client has history of taking antiviral drugs for Hepatitis B, please specify the drug(s) used"
* HepatitisCIfTheClientHasHistoryOfTakingAntiviralDrugForHepC 1..1 BackboneElement "The Client has history of testing positive for Hepatitis C prior to the baseline diagnosis of viral hepatitis" "Did the client tested positive for Hepatitis C prior to baseline diagnosis of hepatitis?"
  * NoYesHepatitisCMedsTaken 1..1 BackboneElement "List of Antiviral Drugs for Hepatitis C Taken" "If the client has history of taking antiviral drugs for Hepatitis C, please specify the drug(s) used"



Logical: ViralHepatitisCareFormModel
Title: "Viral Hepatitis Care Form Logical Model"
Description: "Viral Hepatitis Care Form Information model"

* ConsultDate 1..1 dateTime "Consult Date (MM/DD/YYYY)"
* PatientCode 1..1 Identifier "Patient Code" "Patient Identifier"
* FacilityName 1..1 Reference "Testing Facility Name" "The location where the encounter takes place."
* UniqueIdentifierCode 1..1 id "Unique Identifier Code for the patient" "First two letters of mother's name, First two letters of father's name, birth order, and Birthdate (MM/FF/BO/MM/DD/YYYY)"
* TestedPositiveForHepatitisB 0..1 BackboneElement "If patient tested positive for Hepatitis B"
* TestedPositiveForHepatitisC 0..1 BackboneElement "If patient tested positive for Hepatitis C"
* FirstName 0..* HumanName "First Name" "First Name of the Patient"
* MiddleName 0..* HumanName "Middle Name" "Middle Name of the Patient"
* LastName 1..1 HumanName "Last Name" "Last Name of the Patient"
* Suffix 0..* HumanName "Suffix" "Suffix of the Patient"
* SexAssignedAtBirth 0..1 code "Sex Assigned at Birth"
* AgeInYears 1..1 Age "Age of Patient in Years"
* WeightInKg 1..1 CodeableConcept "Patient weight in kg" "What is the weigh of the patient in kg?"
* HeightInCM 1..1 CodeableConcept "Patient heigh in CM" "What is the height of the patient in cm?"
* IsShePregnant 0..* code "If female, is she pregnant?"
  * IsShePregnant 0..* CodeableConcept "If female, is she pregnant?"
* Nationality 0..* CodeableConcept "Nationality"
* Jaundice 1..1 CodeableConcept "Signs and symptoms of Jaundice" "Does the patient show signs and symptoms of Jaundice?"
* Coagulopathy 1..1 CodeableConcept "Signs and symptoms of Coagulopathy" "Does the patient show signs and symptoms of Coagulopathy?"
* Ascites 1..1 CodeableConcept "Signs and symptoms of Ascites" "Does the patient show signs and symptoms of Ascites?" 
* VaricealHemorrhage 1..1 CodeableConcept "Signs and symptoms of Variceal Hemorrhage" "Does the patient show signs and symptoms of Variceal Hemorrhage?"
* HepaticEncephalopathy 1..1 CodeableConcept "Signs and symptoms of Hepatic Encephalopathy" "Does the patient show signs and symptoms of Hepatic Encephalopathy?"
* Hepatomegaly 1..1 CodeableConcept "Signs and symptoms of Hepatomegaly" "Does the patient show signs and symptoms of Hepatomegaly?"
* Splenomegaly 1..1 CodeableConcept "Signs and symptoms of Splenomegaly" "Does the patient show signs and symptoms of Splenomegaly?"
* Pruritus 1..1 CodeableConcept "Signs and symptoms of Pruritus" "Does the patient show signs and symptoms of Pruritus?"
* Fatigue 1..1 CodeableConcept "Signs and symptoms of Fatigue" "Does the patient show signs and symptoms of Fatigue?"
* SpiderAngiomata 1..1 CodeableConcept "Signs and symptoms of  Spider Angiomata" "Does the patient show signs and symptoms of Spider Angiomata?"
* PalmarErythema 1..1 CodeableConcept "Signs and symptoms of Palmar Erythema" "Does the patient show signs and symptoms of Palmar Erythema?"
* Other 1..1 CodeableConcept "Other signs and symptoms" "Does the patient show other signs and symptoms not included in the list?"
* HBsAgDateDone 1..1 dateTime "Date when the HBsAG Test was done"
* HBsAgResult 1..1 CodeableConcept "HBsAG Test Result (Positive or Negative)"
* HBeAgDateDone 1..1 dateTime "Date when the HBeAG Test was done"
* HBeAgResult 1..1 CodeableConcept "HBeAg Test Result (Positive or Negative)"
* AntiHCVDateDone 1..1 dateTime "Date when the Anti-HCV Test was done"
* AntiHCVResult 1..1 CodeableConcept "AntiHCV Test Result (Reactive or Non-reactive)"
* HCVRNAQualitativeDateDone 1..1 dateTime "Date when the HCV-RNA (Quali) Test was done"
* HCVRNAQualitativeResult 1..1 CodeableConcept "HCV-RNA (Quali) Test Result (Positive or Negative)"
* HCVRNAQuantitativeDateDone 1..1 dateTime "Date when the HCV-RNA (Quanti) IU/mL Test was done"
* HCVRNAQuantitativeResult 1..1 CodeableConcept "HCV-RNA (Quali) Test Result (IU/mL)"
* HBVDNADateDone 1..1 dateTime "Date when the HBV DNA (IU/mL) Test was done"
* HBVDNAResult 1..1 CodeableConcept " HBV DNA Test Result (IU/mL)"
* ASTSGOTDateDone 1..1 dateTime "Date when the AST (SGOT) (IU/L) Test was done"
* ASTSGOTResult 1..1 CodeableConcept "AST (SGOT) Test Result (IU/L)"
* ALTSGPTDateDone 1..1 dateTime "Date when the ALT (SGPT) (IU/L) Test was done"
* ALTSGPTResult 1..1 CodeableConcept "ALT (SGPT) Test Result (IU/L) "
* TotalBilirubinDateDone 1..1 dateTime "Date when the Total Bilirubin (mg/dL) Test was done"
* TotalBilirubinResult 1..1 CodeableConcept "Total Bilirubin Test Result (mg/dL)"
* AlbuminDateDone 1..1 dateTime "Date when the Albumin Test was done"
* AlbuminResult 1..1 CodeableConcept "Albumin Test Result (g/dL)"
* PlateletCountDateDone 1..1 dateTime "Date when the Platelet Count Test was done"
* PlateletCountResult 1..1 CodeableConcept "Platelet Count Test Result (10*9/L)"
* PTINRDateDone 1..1 dateTime "Date when the PT INR Test was done"
* PTINRResult 1..1 CodeableConcept "PT INR Test Result (sec)"
* AminotransferaseOrPlateletRatioIndexScoreDateDone 1..1 dateTime "Date when the Test for Aminotransferase / Platelet Ratio Index Score was done"
* AminotransferaseOrPlateletRatioIndexScoreResult 1..1 CodeableConcept "Aminotransferase / Platelet Ratio Index Score Test Result"
* Fibrosis4orFIB4ScoreDateDone 1..1  dateTime "Date when the Test for Fibrosis 4 / FIB-4 was done"
* Fibrosis4orFIB4ScoreResult 1..1 CodeableConcept "Fibrosis 4 / FIB-4 Test Result"
* TransientElastographyDateDone 1..1  dateTime "Date when the Transient Elastography Test was done"
* TransientElastographyResult 1..1 CodeableConcept "Transient Elastography Test Result"
* ImagingUTZCTMRIDateDone 1..1  dateTime "Date when the Test for Imaging (UTZ/CT/MRI) was done"
* ImagingUTZCTMRIDateResult 1..1 CodeableConcept "Imaging Test Result (UTZ/CT/MRI)"
* ChildTurcottePughClassScoreDateDone 1..1 dateTime "Date when the Child-Turcotte-Pugh Class Score was done"
* ChildTurcottePughClassScoreResult 1..1 CodeableConcept "ChildTurcotte Pugh Class Score Test Result"

  