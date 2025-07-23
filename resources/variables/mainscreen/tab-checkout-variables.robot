*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Variables ***

#Locator
${CHANGE_POSITION_TEXT}    xpath=//android.view.View[@content-desc="Change position"]

${TECHNICIAN_CARD}    xpath=//android.view.View[contains(@content-desc, "${TECHNICIAN_NAME}")]

${SELECT_SERVICE_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="MAIN MENU > Services"]

${CHECKOUT_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="MAIN MENU > Checkout"]

${SERVICE_CARD}    xpath=//android.view.View[contains(@content-desc,"${SERVICE_NAME}") and contains(@content-desc,"${SERVICE_DURATION}")]

${SUBTOTAL}    xpath=//android.view.View[@content-desc="Subtotal"]

${PAYMENT_BUTTON}    xpath=//android.view.View[@content-desc="Payment"]

${CASH}    xpath=//android.view.View[@content-desc="Cash"]

${CREDIT_CARD}    xpath=//android.view.View[@content-desc="Credit Card"]

${PAID_EXTERNALLY}    xpath=//android.view.View[@content-desc="Paid Externally"]

${GIFT_CARD}    xpath=//android.view.View[@content-desc="Gift Card"]


#Data
${TECHNICIAN_NAME}    Mira

${SERVICE_NAME}    Classic Manicure

${SERVICE_DURATION}    30 mins


