*** Settings ***
Resource    ../../resources/common/common-settings.robot
Suite Setup    Access to POS

*** Test Cases ***

Verify the user sign in successfully when input correct SALON account
    Given the Salon tab is selected
    When user input correct Salon Email
    And user input correct Password
    Then user tap on Sign In button
    Sleep    5s
    And the user is on Checkout tab

Verify the user checkout with CASH method successfully
    Given the user is on Checkout tab
    And user select Technician
    Then the system displays the Select Service screen
    And user select Service
    Then user tap on Payment button
    Sleep    5s
    And the system displays the Checkout Payment screen
    Then user select CASH method
    And the system dispays the Payment by Cash screen
    And user tap on Begin Charge button
    Then the system navigate user to Payment Confirmed screen
    Then the system displays Payment successfully message
    When user tap on No Receipt button
    Then the system navigate user back to Checkout Tab

