*** Settings ***
Resource    ../../resources/common/common-settings.robot
Suite Setup    Access to POS
# Suite Teardown    Close Application
*** Test Cases ***
Verify the user sign in successfully when input correct SALON account
    Given the Salon tab is selected
    When user input correct Salon Email
    And user input correct Password
    Then user tap on Sign In button
    Sleep    5s
    And the user is on Checkout tab