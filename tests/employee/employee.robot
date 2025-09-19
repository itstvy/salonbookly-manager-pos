*** Settings ***
Resource    ../../resources/common/common-settings.robot
Suite Setup    Access to POS

*** Test Cases ***
# Verify the system displays correct UI, layout of Employee list screen 
#     Given the user is on Checkout tab
#     When user access to the Manager screen
#     When user press on Employee menu
#     Then system displays correct UI, layout Employee list screen

Verify the system displays correct UI, layout Employee Creation From
    Given user is on Employee list screen
    When user press on "Create An Employee" button
    Then system displays correct UI, layout Employee Creation screen

Verify the system displays validation text when user input data less than 2 characters in First Name field
    When user input data less than 2 characters in First Name field 
    Then system displays validation text when First Name field has fewer 2 chararcters


# Verify the system create employee 
#     Given user in on Employee Creation screen
#     And user proceed to upload employee avatar
#     Then Scroll Screen Down    1
#     And user proceed to input valid data in all required fields in Employee Creation screen



     