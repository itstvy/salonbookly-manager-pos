*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Keywords ***
#Main screen - Checkout tab elements
the user is on Checkout tab
    Wait Until Element Is Visible    ${CHANGE_POSITION_TEXT}

the system navigate user back to Checkout Tab
    Wait Until Element Is Visible    ${CHANGE_POSITION_TEXT}
    
user select Technician
    Wait Until Element Is Visible    ${TECHNICIAN_CARD}
    Click Element    ${TECHNICIAN_CARD}

the system displays the Select Service screen
    Wait Until Element Is Visible    ${SELECT_SERVICE_TITLE}

user select Service
    Wait Until Element Is Visible    ${SERVICE_CARD}
    Click Element    ${SERVICE_CARD}

#Add Client keyword
user press on Add Client button
    Wait Until Element Is Visible    ${ADD_CLIENT_BUTTON}
    Click Element    ${ADD_CLIENT_BUTTON}

user should see the Select Client modal
    Wait Until Element Is Visible    ${SELECT_CLIENT_TITLE}
    Wait Until Element Is Visible    ${SEARCH_CLIENT_FIELD}

user proceed to input exist client's phone number
    Click Element    ${SEARCH_CLIENT_FIELD}
    Input number    ${EXIST_CLIENT_PHONE_NUMBER}
    Click Element    ${NUMERIC_KEYPAD_DONE}

user should see the Search Result of correct Client
    Wait Until Element Is Visible    ${SEARCH_RESULT_TITLE}    10s
    Wait Until Element Is Visible    ${SUBMIT_BUTTON_TO_ADD_CLIENT}

user press on Submit button to add client
    Click Element    ${SUBMIT_BUTTON_TO_ADD_CLIENT}
    Wait Until Element Is Visible    ${REMOVE_CLIENT_BUTTON}

user proceed to add exist client successfully
    user press on Add Client button
    user should see the Select Client modal
    user proceed to input exist client's phone number
    user should see the Search Result of correct Client
    user press on Submit button to add client

#Add New Client
user proceed to input not exist client's phone number
    Click Element    ${SEARCH_CLIENT_FIELD}
    Input Random US Phone Number
    Click Element    ${NUMERIC_KEYPAD_DONE}

user should see the validation text when input not exist client'sphone number
    Wait Until Element Is Visible    ${CLIENT_NOT_EXIST_VALIDATION_TEXT}

user press on "Create New Client" button
    Wait Until Element Is Visible    ${ADD_NEW_CLIENT_BUTTON}
    Click Element    ${ADD_NEW_CLIENT_BUTTON}

user should see the Select Contact form
    Wait Until Element Is Visible    ${SELECT_CONTACT_FORM_TITLE}
    Element Should Be Visible    ${CLIENT_FIRST_NAME_FIELD}
    Element Should Be Visible    ${CLIENT_LAST_NAME_FIELD}
    Element Should Be Visible    ${CLIENT_EMAIL_FIELD}
    Element Should Be Visible    ${CLIENT_ADDRESS_FIELD}

user input valid data in all required fields in Select Contact form
    Input Random Data in Create Client form    ${CLIENT_FIRST_NAME_FIELD}    ${CLIENT_LAST_NAME_FIELD}    ${CLIENT_EMAIL_FIELD}    ${CLIENT_ADDRESS_FIELD}

user press on "Submit" button to create new client
    Click Element    ${SUBMIT_ADD_NEW_CLIENT_BUTTON}
    Wait Until Element Is Visible    ${REMOVE_CLIENT_BUTTON}

user proceed to add new client successfully
    user press on Add Client button
    user should see the Select Client modal
    user proceed to input not exist client's phone number
    user should see the validation text when input not exist client'sphone number
    user press on "Create New Client" button
    user should see the Select Contact form
    user input valid data in all required fields in Select Contact form
    user press on "Submit" button to create new client

the system display correct Subtotal Amount
    Wait Until Element Is Visible    ${SUBTOTAL_AMOUNT}

user tap on Payment button
    Wait Until Element Is Visible    ${PAYMENT_BUTTON}
    Click Element    ${PAYMENT_BUTTON}
    Sleep    3s

#Checkout Payment
the system displays the Checkout Payment screen
    Wait Until Element Is Visible    ${PAYMENT_CHECKOUT_TITLE}

user select CASH method
    Wait Until Element Is Visible    ${CASH}
    Click Element    ${CASH}

user select CREDIT CARD method
    Wait Until Element Is Visible    ${CREDIT_CARD}
    Click Element    ${CREDIT_CARD}

user select PAID EXTERNALLY method
    Wait Until Element Is Visible    ${PAID_EXTERNALLY}
    Click Element    ${PAID_EXTERNALLY}
    Sleep    3s

user select GIFT CARD method
    Wait Until Element Is Visible    ${GIFT_CARD}
    Click Element    ${GIFT_CARD}

#CASH
the system displays the Payment by Cash screen
    Wait Until Element Is Visible    ${PAYMENT_BY_CASH_TITLE}

user tap on Begin Charge button in Payment by Cash screen
    Wait Until Element Is Visible    ${CASH_BEGIN_CHARGE_BUTTON}
    Click Element    ${CASH_BEGIN_CHARGE_BUTTON}
    Sleep    5s

#TIP ON PAID EXTERNALLY
system navigate user to Tip screen
    Wait Until Element Is Visible    ${TIPS_SCREEN_TITLE}

user tap on Skip the Tip button
    Wait Until Element Is Visible    ${SKIP_TIP_BUTTON}
    Click Element    ${SKIP_TIP_BUTTON}

system displays the Payment by Paid Externally screen
    Wait Until Element Is Visible    ${PAID_EXTERNALLY_TEXT}

user tap on Begin Charge button in Payment by Paid Externally screen
    Wait Until Element Is Visible    ${PAID_EXTERNALLY_BEGIN_CHARGE_BUTTON}
    Click Element    ${PAID_EXTERNALLY_BEGIN_CHARGE_BUTTON}
    Sleep    5s

#PAID SCREEN
the system navigate user to Payment Confirmed screen
    Wait Until Element Is Visible    ${PAYMENT_IS_CONFIRMED}

the system displays Payment successfully message
    Wait Until Element Is Visible    ${PAYMENT_SUCCESS_MESSAGE}
    
user tap on No Receipt button
    Wait Until Element Is Visible    ${NO_RECEIPT_BUTTON}
    Click Element    ${NO_RECEIPT_BUTTON}
    Sleep    5s

   