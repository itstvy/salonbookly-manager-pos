*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Keywords ***
#Main screen - Checkout tab elements
the user is on Checkout tab
    Element Should Be Visible    ${CHANGE_POSITION_TEXT}

the system navigate user back to Checkout Tab
    Element Should Be Visible    ${CHANGE_POSITION_TEXT}
    
user select Technician
    Element Should Be Visible    ${TECHNICIAN_CARD}
    Click Element    ${TECHNICIAN_CARD}

the system displays the Select Service screen
    Element Should Be Visible    ${SELECT_SERVICE_TITLE}

user select Service
    Element Should Be Visible    ${SERVICE_CARD}
    Click Element    ${SERVICE_CARD}

the system display correct Subtotal Amount
    Element Should Be Visible    ${SUBTOTAL_AMOUNT}

user tap on Payment button
    Element Should Be Visible    ${PAYMENT_BUTTON}
    Click Element    ${PAYMENT_BUTTON}
    Sleep    5s

#Checkout Payment
the system displays the Checkout Payment screen
    Element Should Be Visible    ${PAYMENT_CHECKOUT_TITLE}

user select CASH method
    Element Should Be Visible    ${CASH}
    Click Element    ${CASH}

user select CREDIT CARD method
    Element Should Be Visible    ${CREDIT_CARD}
    Click Element    ${CREDIT_CARD}

user select PAID EXTERNALLY method
    Element Should Be Visible    ${PAID_EXTERNALLY}
    Click Element    ${PAID_EXTERNALLY}
    Sleep    3s

user select GIFT CARD method
    Element Should Be Visible    ${GIFT_CARD}
    Click Element    ${GIFT_CARD}

#CASH
the system displays the Payment by Cash screen
    Element Should Be Visible    ${PAYMENT_BY_CASH_TITLE}

user tap on Begin Charge button in Payment by Cash screen
    Element Should Be Visible    ${CASH_BEGIN_CHARGE_BUTTON}
    Click Element    ${CASH_BEGIN_CHARGE_BUTTON}
    Sleep    5s

#TIP ON PAID EXTERNALLY
system navigate user to Tip screen
    Element Should Be Visible    ${TIPS_SCREEN_TITLE}

user tap on Skip the Tip button
    Element Should Be Visible    ${SKIP_TIP_BUTTON}
    Click Element    ${SKIP_TIP_BUTTON}

system displays the Payment by Paid Externally screen
    Element Should Be Visible    ${PAID_EXTERNALLY_TEXT}

user tap on Begin Charge button in Payment by Paid Externally screen
    Element Should Be Visible    ${PAID_EXTERNALLY_BEGIN_CHARGE_BUTTON}
    Click Element    ${PAID_EXTERNALLY_BEGIN_CHARGE_BUTTON}
    Sleep    5s

#PAID SCREEN
the system navigate user to Payment Confirmed screen
    Element Should Be Visible    ${PAYMENT_IS_CONFIRMED}

the system displays Payment successfully message
    Element Should Be Visible    ${PAYMENT_SUCCESS_MESSAGE}
    
user tap on No Receipt button
    Element Should Be Visible    ${NO_RECEIPT_BUTTON}
    Click Element    ${NO_RECEIPT_BUTTON}
    Sleep    5s

   