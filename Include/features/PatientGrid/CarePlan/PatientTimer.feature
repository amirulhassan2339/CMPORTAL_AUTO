Feature: Patient Timer

  Background: 
    Given I navigate to patient grid

  @Regression_PatientGrid_Billable
  Scenario Outline: Verify Patient Timer Feature While User Is On Patient Grid_Billable
    When I search <Patient> using global search
    And I verify patient is selected
    * I click on patient timer button
    Then I should see patient <Patient> as patient_name in timer popup
    * I should see current date
    When I click on start timer button
    And I click on notes tab
    * I click on plus notes button
    * I <Enter_Notes> notes
    * I click on save btn
    * I click on minimize button
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on care plan tab
    And I click on add new care plan button
    * I click on basedonpatientmedicalrecord
    * I enter title <Title>
    * I click on save and close button
    * I click on minimize button
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on notes tab
    And I click on plus form
    * I click on telephonic outreach
    * I enter telephonic outreach <DateTime> as datetime
    * I enter telephonic outreach <Follow_Up_Plan> as follow up planss
    * I click on minimize button
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on assessment
    Then I should not see patient timer popup
    When I click on add
    And I click on other assessment tempelate
    * I click Asthma
    * I click on procced
    * I enter the <AssesmentTitle> as the assessmenttitle
    * I click billable radio button
    * I enter <CPTCode> as cpt code
    * I enter the <AssesmentComment> as the assessmentcomment
    * I click save button
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on appointment tab
    * I click on add button to appointment adding
    * I enter appointment <Reason> as reason
    * I enter appointment <Time> as timess
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on Clinical tab
    * I should not see patient timer popup
    * I click on Problem List	tab
    * I should not see patient timer popup
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on Clinical tab
    * I should not see patient timer popup
    * I click on Medication	tab
    * I should not see patient timer popup
    When I click on medication Add button
    And I enter <Source_Type> in medication source type field
    * I enter <Name> in medication name field
    * I click on medication Save All button
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on encounter tab button to land on enconter section
    * I should not see patient timer popup
    When I click on add encounter button of a patient
    And I enter <Source> in patient encounter source field
    * I enter <Billable> in patient encounter billable chckbox
    * I enter <StartDate> in patient encounter start date field
    * I click on patient save button to save encounter
    * I click on patient timer button again
    * I click on stop timer button
    * I verify Non_billable checkbox is checked
    * I enter <Comment> as comment in timer popup
    * I click on update button
    Then I should see success message <TimerSucessMessage> of timer
    * I click on history tab
    * I should see patient timer history

    Examples: 
      | Patient          | TimerSucessMessage                                     | Comment | Diagnosis | Title          | SucessMessage                           | Enter_Notes                                                               | Code_Name                                                 | Start_Date | Severity | Type      | Status | Rank      | Source_Type | Name                                                              | Frequency     | Route            | Start_Date | Prescribed_By | CPOE | eSent | Drug_Formulacy | Directions                  | Source | Billable | Encounter                                               | StartDate            | EndDate              | ServingFacility | Disposition | Disfacility   | Location | POS            | VisitType  | NoteType      | ApptProvider | RendringProvider | RefrenceProvider | AssesmentTitle     | CPTCode   | AssesmentComment                                                           | DateTime          | Provider | Duration | Follow_Up_Plan | Reason    | Time        |
      | Dermo505, Mac505 | successPatient Time has been updated successfully.Hide | Test    | T79.5xxA  | TestingPatient | successCare Plan Saved SuccessfullyHide | Lorem Ipsum is simply dummy text of the printing and typesetting industry | Cholera due to Vibrio cholerae 01, biovar cholerae::A00.0 |   01072021 | Moderate | Condition | Active | Principal | MMSL        | Humulin R U-500 KwikPen 500unit/ml Solution for Injection::100034 | 3 times a day | Auricular (otic) |   12102020 | Mason, Elijah | Yes  | Yes   | Yes            | As per the doctor recommend | C4     | Yes      | Observation care, typically 30 minutes are spent::99218 | 12192020 01:30:00 AM | 12072021 01:30:00 AM | MHPN3           | SNF         | Charlie SNF 1 | pakistan | Allergy clinic | Telehealth | Referral Note | aaaa, aa     | Mason, Elijah    | A JAFFER         | Assessment Testing | Test Code | Lorem Ipsum is simply dummy text of the printing and typesetting industry. | 03152021 03:20 AM | mason,   | 10:15:20 | Education      | Back pain | 08:30:00 AM |

  @Regression_PatientWorkFlowBox_Billable
  Scenario Outline: Verify Patient Timer Feature While User Is On Patient Work Flow Box_Billable
    When I search <Patient> using global search
    And I select the patient
    * I click on patient timer button_WFB
    Then I should see patient <Patient> as patient_name in timer popup
    * I should see current date
    When I click on start timer button
    And I click on notes tab
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on plus notes button
    And I <Enter_Notes> notes
    * I click on save btn
    * I click on minimize button
    * I click on patient timer button again_WFB
    * I click on care plan tab
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on add new care plan button
    And I click on basedonpatientmedicalrecord
    * I enter title <Title>
    * I click on save and close button
    * I click on minimize button
    * I click on patient timer button again_WFB
    * I click on minimize button
    * I click on notes tab
    * I click on plus form
    * I click on telephonic outreach
    * I enter telephonic outreach <DateTime> as datetime
    * I enter telephonic outreach <Follow_Up_Plan> as follow up planss
    * I click on patient timer button again_WFB
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on assessment
    * I click on add
    * I click on other assessment tempelate
    * I click Asthma
    * I click on procced
    * I enter the <AssesmentTitle> as the assessmenttitle
    * I click billable radio button
    * I enter <CPTCode> as cpt code
    * I enter the <AssesmentComment> as the assessmentcomment
    * I click save button
    * I click on patient timer button again_WFB
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on Clinical tab
    * I click on Problem List	tab
    * I click on problem Add button
    * I enter <Code_Name> in problem name field
    * I enter <Start_Date> in problem start date field
    * I click on patient timer button again_WFB
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on Clinical tab
    * I click on Medication	tab
    * I click on medication Add button
    * I enter <Source_Type> in medication source type field
    * I enter <Name> in medication name field
    * I click on medication Save All button
    * I click on patient timer button again_WFB
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on encounter tab button to land on enconter section
    * I click on add encounter button of a patient
    * I enter <Source> in patient encounter source field
    * I enter <StartDate> in patient encounter start date field
    * I click on patient save button to save encounter
    * I click on patient timer button again_WFB
    * I click on stop timer button
    * I verify Non_billable checkbox is checked
    * I enter <Comment> as comment in timer popup
    * I click on update button
    Then I should see success message <TimerSucessMessage> of timer
    * I click on history tab
		* I should see patient timer history_WFB
    Examples: 
      | Patient          | TimerSucessMessage                                     | Comment | Diagnosis | Title          | SucessMessage                           | Enter_Notes                                                               | Code_Name                                                 | Start_Date | Severity | Type      | Status | Rank      | Source_Type | Name                                                              | Frequency     | Route            | Start_Date | Prescribed_By | CPOE | eSent | Drug_Formulacy | Directions                  | Source | Billable | Encounter                                               | StartDate            | EndDate              | ServingFacility | Disposition | Disfacility   | Location | POS            | VisitType  | NoteType      | ApptProvider | RendringProvider | RefrenceProvider | AssesmentTitle     | CPTCode   | AssesmentComment                                                           | DateTime          | Provider | Duration | Follow_Up_Plan | Reason    | Time        |
      | Dermo505, Mac505 | successPatient Time has been updated successfully.Hide | Test    | T79.5xxA  | TestingPatient | successCare Plan Saved SuccessfullyHide | Lorem Ipsum is simply dummy text of the printing and typesetting industry | Cholera due to Vibrio cholerae 01, biovar cholerae::A00.0 |   01072021 | Moderate | Condition | Active | Principal | MMSL        | Humulin R U-500 KwikPen 500unit/ml Solution for Injection::100034 | 3 times a day | Auricular (otic) |   12102020 | Mason, Elijah | Yes  | Yes   | Yes            | As per the doctor recommend | C4     | Yes      | Observation care, typically 30 minutes are spent::99218 | 12192020 01:30:00 AM | 12072021 01:30:00 AM | MHPN3           | SNF         | Charlie SNF 1 | pakistan | Allergy clinic | Telehealth | Referral Note | aaaa, aa     | Mason, Elijah    | A JAFFER         | Assessment Testing | Test Code | Lorem Ipsum is simply dummy text of the printing and typesetting industry. | 03152021 03:20 AM | mason,   | 10:15:20 | Education      | Back pain | 08:30:00 AM |

  @Regression_PatientGrid_NonBillable
  Scenario Outline: Verify Patient Timer Feature While User Is On Patient Grid_NonBillable
    When I search <Patient> using global search
    And I verify patient is selected
    * I click on patient timer button
    Then I should see patient <Patient> as patient_name in timer popup
    * I should see current date
    When I click on start timer button
    And I click on notes tab
    * I click on plus notes button
    * I <Enter_Notes> notes
    * I click on save btn
    * I click on minimize button
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on care plan tab
    And I click on add new care plan button
    * I click on basedonpatientmedicalrecord
    * I enter title <Title>
    * I click on save and close button
    * I click on minimize button
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on notes tab
    And I click on plus form
    * I click on telephonic outreach
    * I enter telephonic outreach <DateTime> as datetime
    * I enter telephonic outreach <Follow_Up_Plan> as follow up planss
    * I click on minimize button
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on assessment
    Then I should not see patient timer popup
    When I click on add
    And I click on other assessment tempelate
    * I click Asthma
    * I click on procced
    * I enter the <AssesmentTitle> as the assessmenttitle
    * I click billable radio button
    * I enter <CPTCode> as cpt code
    * I enter the <AssesmentComment> as the assessmentcomment
    * I click save button
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on appointment tab
    * I click on add button to appointment adding
    * I enter appointment <Reason> as reason
    * I enter appointment <Time> as timess
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on Clinical tab
    * I should not see patient timer popup
    * I click on Problem List	tab
    * I should not see patient timer popup
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on Clinical tab
    * I should not see patient timer popup
    * I click on Medication	tab
    * I should not see patient timer popup
    When I click on medication Add button
    And I enter <Source_Type> in medication source type field
    * I enter <Name> in medication name field
    * I click on medication Save All button
    * I click on patient timer button again
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on encounter tab button to land on enconter section
    * I should not see patient timer popup
    When I click on add encounter button of a patient
    And I enter <Source> in patient encounter source field
    * I enter <Billable> in patient encounter billable chckbox
    * I enter <StartDate> in patient encounter start date field
    * I click on patient save button to save encounter
    * I click on patient timer button again
    * I click on stop timer button
    * I verify Non_billable checkbox is checked
    * I enter <Comment> as comment in timer popup
    * I click on update button
    Then I should see success message <TimerSucessMessage> of timer
    * I click on history tab
    * I should see patient timer history

    Examples: 
      | Patient          | TimerSucessMessage                                     | Comment | Diagnosis | Title          | SucessMessage                           | Enter_Notes                                                               | Code_Name                                                 | Start_Date | Severity | Type      | Status | Rank      | Source_Type | Name                                                              | Frequency     | Route            | Start_Date | Prescribed_By | CPOE | eSent | Drug_Formulacy | Directions                  | Source | Billable | Encounter                                               | StartDate            | EndDate              | ServingFacility | Disposition | Disfacility   | Location | POS            | VisitType  | NoteType      | ApptProvider | RendringProvider | RefrenceProvider | AssesmentTitle     | CPTCode   | AssesmentComment                                                           | DateTime          | Provider | Duration | Follow_Up_Plan | Reason    | Time        |
      | Dermo505, Mac505 | successPatient Time has been updated successfully.Hide | Test    | T79.5xxA  | TestingPatient | successCare Plan Saved SuccessfullyHide | Lorem Ipsum is simply dummy text of the printing and typesetting industry | Cholera due to Vibrio cholerae 01, biovar cholerae::A00.0 |   01072021 | Moderate | Condition | Active | Principal | MMSL        | Humulin R U-500 KwikPen 500unit/ml Solution for Injection::100034 | 3 times a day | Auricular (otic) |   12102020 | Mason, Elijah | Yes  | Yes   | Yes            | As per the doctor recommend | C4     | Yes      | Observation care, typically 30 minutes are spent::99218 | 12192020 01:30:00 AM | 12072021 01:30:00 AM | MHPN3           | SNF         | Charlie SNF 1 | pakistan | Allergy clinic | Telehealth | Referral Note | aaaa, aa     | Mason, Elijah    | A JAFFER         | Assessment Testing | Test Code | Lorem Ipsum is simply dummy text of the printing and typesetting industry. | 03152021 03:20 AM | mason,   | 10:15:20 | Education      | Back pain | 08:30:00 AM |

  @Regression_PatientWorkFlowBox_NonBillable
  Scenario Outline: Verify Patient Timer Feature While User Is On Patient Work Flow Box_NonBillable
    When I search <Patient> using global search
    And I select the patient
    * I click on patient timer button_WFB
    Then I should see patient <Patient> as patient_name in timer popup
    * I should see current date
    When I click on start timer button
    And I click on notes tab
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on plus notes button
    And I <Enter_Notes> notes
    * I click on save btn
    * I click on minimize button
    * I click on patient timer button again_WFB
    * I click on care plan tab
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on add new care plan button
    And I click on basedonpatientmedicalrecord
    * I enter title <Title>
    * I click on save and close button
    * I click on minimize button
    * I click on patient timer button again_WFB
    * I click on minimize button
    * I click on notes tab
    * I click on plus form
    * I click on telephonic outreach
    * I enter telephonic outreach <DateTime> as datetime
    * I enter telephonic outreach <Follow_Up_Plan> as follow up planss
    * I click on patient timer button again_WFB
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on assessment
    * I click on add
    * I click on other assessment tempelate
    * I click Asthma
    * I click on procced
    * I enter the <AssesmentTitle> as the assessmenttitle
    * I click billable radio button
    * I enter <CPTCode> as cpt code
    * I enter the <AssesmentComment> as the assessmentcomment
    * I click save button
    * I click on patient timer button again_WFB
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on Clinical tab
    * I click on Problem List	tab
    * I click on problem Add button
    * I enter <Code_Name> in problem name field
    * I enter <Start_Date> in problem start date field
    * I click on patient timer button again_WFB
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on Clinical tab
    * I click on Medication	tab
    * I click on medication Add button
    * I enter <Source_Type> in medication source type field
    * I enter <Name> in medication name field
    * I click on medication Save All button
    * I click on patient timer button again_WFB
    Then I should see patient <Patient> as patient_name in timer popup
    When I click on minimize button
    And I click on encounter tab button to land on enconter section
    * I click on add encounter button of a patient
    * I enter <Source> in patient encounter source field
    * I enter <StartDate> in patient encounter start date field
    * I click on patient save button to save encounter
    * I click on patient timer button again_WFB
    * I click on stop timer button
    * I verify Non_billable checkbox is checked
    * I enter <Comment> as comment in timer popup
    * I click on update button
    Then I should see success message <TimerSucessMessage> of timer
    * I click on history tab
		* I should see patient timer history_WFB
    Examples: 
      | Patient          | TimerSucessMessage                                     | Comment | Diagnosis | Title          | SucessMessage                           | Enter_Notes                                                               | Code_Name                                                 | Start_Date | Severity | Type      | Status | Rank      | Source_Type | Name                                                              | Frequency     | Route            | Start_Date | Prescribed_By | CPOE | eSent | Drug_Formulacy | Directions                  | Source | Billable | Encounter                                               | StartDate            | EndDate              | ServingFacility | Disposition | Disfacility   | Location | POS            | VisitType  | NoteType      | ApptProvider | RendringProvider | RefrenceProvider | AssesmentTitle     | CPTCode   | AssesmentComment                                                           | DateTime          | Provider | Duration | Follow_Up_Plan | Reason    | Time        |
      | Dermo505, Mac505 | successPatient Time has been updated successfully.Hide | Test    | T79.5xxA  | TestingPatient | successCare Plan Saved SuccessfullyHide | Lorem Ipsum is simply dummy text of the printing and typesetting industry | Cholera due to Vibrio cholerae 01, biovar cholerae::A00.0 |   01072021 | Moderate | Condition | Active | Principal | MMSL        | Humulin R U-500 KwikPen 500unit/ml Solution for Injection::100034 | 3 times a day | Auricular (otic) |   12102020 | Mason, Elijah | Yes  | Yes   | Yes            | As per the doctor recommend | C4     | Yes      | Observation care, typically 30 minutes are spent::99218 | 12192020 01:30:00 AM | 12072021 01:30:00 AM | MHPN3           | SNF         | Charlie SNF 1 | pakistan | Allergy clinic | Telehealth | Referral Note | aaaa, aa     | Mason, Elijah    | A JAFFER         | Assessment Testing | Test Code | Lorem Ipsum is simply dummy text of the printing and typesetting industry. | 03152021 03:20 AM | mason,   | 10:15:20 | Education      | Back pain | 08:30:00 AM |
