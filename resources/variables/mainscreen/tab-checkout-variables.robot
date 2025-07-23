*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Variables ***

#Messages
${PAYMENT_SUCCESS_MESSAGE}    xpath=//android.view.View[normalize-space(@content-desc)="Proceed payment successfully"]

#Data
${TECHNICIAN_NAME}    Mira
${SERVICE_NAME}    Classic Manicure
${SERVICE_DURATION}    30 mins

#Elements in Checkout tab
${CHANGE_POSITION_TEXT}    xpath=//android.view.View[@content-desc="Change position"]
${TECHNICIAN_CARD}    xpath=//android.view.View[contains(@content-desc, "${TECHNICIAN_NAME}")]

#Elements in Select Services screen
${SELECT_SERVICE_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="MAIN MENU > Services"]
${SERVICE_CARD}    xpath=//android.view.View[contains(@content-desc,"${SERVICE_NAME}") and contains(@content-desc,"${SERVICE_DURATION}")]
${SUBTOTAL}    xpath=//android.view.View[@content-desc="Subtotal"]
${PAYMENT_BUTTON}    xpath=//android.view.View[@content-desc="Payment"]

#Elements in Payment Checkout screen (Input balance due)
${PAYMENT_CHECKOUT_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="MAIN MENU > Checkout"]
${CASH}    xpath=//android.view.View[@content-desc="Cash"]
${CREDIT_CARD}    xpath=//android.view.View[@content-desc="Credit Card"]
${PAID_EXTERNALLY}    xpath=//android.view.View[@content-desc="Paid Externally"]
${GIFT_CARD}    xpath=//android.view.View[@content-desc="Gift Card"]

#Elements in Payment by CASH screen
${PAYMENT_BY_CASH_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="Back Payment by Cash"]
${BEGIN_CHARGE_BUTTON}    xpath=//android.view.View[@content-desc="Begin Charge"]


#Elements in Payment Confirmed screen
${PAYMENT_IS_CONFIRMED}    xpath=//android.view.View[normalize-space(@content-desc)="Your payment is confirmed!"]
${NO_RECEIPT_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="No receipt"]
${EMAIL_BUTTON}    xpath=//android.view.View[@content-desc="Email"]
${SMS_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Text (SMS)"]
${PRINT_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Print"]

#Elements in Send Receipt through EMAIL method
${SEND_RECEIPT_EMAIL_SCREEN_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="Send Receipt"]
${CLOSE_SEND_RECEIPT_EMAIL_SCREEN_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Close"]
${PREVIEW_RECEIPT_PDF_BUTTOM}    xpath=//android.view.View[normalize-space(@content-desc)="Preview the receipt PDF"]



