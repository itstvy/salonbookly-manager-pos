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

Verify the user select Technician and Service successfully
    Given the user is on Checkout tab
    And user select Technician
    Then the system displays the Select Service screen
    And user select Service
    And the system display correct Subtotal Amount
    Then user tap on Payment button
    Sleep    5s
    And the system displays the Checkout screen

