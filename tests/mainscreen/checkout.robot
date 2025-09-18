*** Settings ***
Resource    ../../resources/common/common-settings.robot
Suite Setup    Access to POS

*** Test Cases ***

Verify the user checkout with CASH method successfully
    [Tags]    Positive    UI
    Given the user is on Checkout tab
    When user select Technician
    Then user select Service    2
    And user proceed to add exist client successfully
    Then user tap on Payment button
    Sleep    5s
    And the system displays the Checkout Payment screen
    Then user select CASH method
    And the system displays the Payment by Cash screen
    And user tap on Begin Charge button in Payment by Cash screen
    Then the system displays Payment successfully message
    Then the system navigate user to Payment Confirmed screen
    When user tap on No Receipt button
    Then the system navigate user back to Checkout Tab
    

Verify the user checkout with PAID EXTERNALLY method successfully
    [Tags]    Positive    UI
    Given the user is on Checkout tab
    When user select Technician
    Then user select Service    2
    And user proceed to add new client successfully
    Then user tap on Payment button
    Sleep    5s
    And the system displays the Checkout Payment screen
    And user select PAID EXTERNALLY method
    Then system navigate user to Tip screen
    When user tap on Skip the Tip button
    Then system displays the Payment by Paid Externally screen
    And user tap on Begin Charge button in Payment by Paid Externally screen
    And the system displays Payment successfully message
    Then the system navigate user to Payment Confirmed screen
    When user tap on No Receipt button
    Then the system navigate user back to Checkout Tab

    