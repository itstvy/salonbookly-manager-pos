*** Settings ***
Resource    ../../resources/common/common-settings.robot
Suite Setup    Access to POS

*** Test Cases ***

Verify the user sign in successfully when input correct SALON account
    [Tags]    Positive    UI
    Given the Salon tab is selected
    When user input correct Salon Email
    And user input correct Password
    Then user tap on Sign In button
    Sleep    5s
    And the user is on Checkout tab
    Set Element to Test Message    ${PAYMENT_SUCCESS_MESSAGE}

Verify the user checkout with CASH method successfully
    [Tags]    Positive    UI
    Given the user is on Checkout tab
    When user select Technician
    Then the system displays the Select Service screen
    And user select Service
    Then user tap on Payment button
    Sleep    5s
    And the system displays the Checkout Payment screen
    Then user select CASH method
    And the system displays the Payment by Cash screen
    And user tap on Begin Charge button in Payment by Cash screen
    Then the system navigate user to Payment Confirmed screen
    Then the system displays Payment successfully message
    When user tap on No Receipt button
    Then the system navigate user back to Checkout Tab
    Set Element to Test Message    ${PAYMENT_SUCCESS_MESSAGE}

Verify the user checkout with PAID EXTERNALLY method successfully
    [Tags]    Positive    UI
    Given the user is on Checkout tab
    And user select Technician
    Then the system displays the Select Service screen
    And user select Service
    Then user tap on Payment button
    Sleep    5s
    And the system displays the Checkout Payment screen
    And user select PAID EXTERNALLY method
    Then system navigate user to Tip screen
    When user tap on Skip the Tip button
    Then system displays the Payment by Paid Externally screen
    And user tap on Begin Charge button in Payment by Paid Externally screen
    Then the system navigate user to Payment Confirmed screen
    And the system displays Payment successfully message
    When user tap on No Receipt button
    Then the system navigate user back to Checkout Tab
    Set Element to Test Message    ${PAYMENT_SUCCESS_MESSAGE}

    