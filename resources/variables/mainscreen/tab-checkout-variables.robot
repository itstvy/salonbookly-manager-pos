*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Variables ***

#Messages
${PAYMENT_SUCCESS_MESSAGE}    xpath=//android.view.View[normalize-space(@content-desc)="Proceed payment successfully"]

#Data
${TECHNICIAN_NAME}    Mira
${SERVICE_NAME}    Lip Wax
${SERVICE_DURATION}    15 mins
${REAL_SUBTOTAL_AMOUNT}
${REAL_TAX_AMOUNT}
${REAL_BALANCE_DUE}

#Elements in Checkout tab
${CHANGE_POSITION_TEXT}    xpath=//android.view.View[normalize-space(@content-desc)="Change position"]
${CHANGE_TECHNICIAN_POSITION_BUTTON_ON}    xpath=//android.view.View[@content-desc="On"]
${CHANGE_TECHNICIAN_POSITION_BUTTON_OFF}    xpath=//android.view.View[@content-desc="Off"]
${REMOTE_SCREEN_ICON_BUTTON}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[5]
${PRINT_ICON_BUTTON}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[6]
${NOTIFICATION_ICON_BUTTON}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[7]
${TECHNICIAN_CARD}    xpath=//android.view.View[contains(@content-desc, "${TECHNICIAN_NAME}")]
${CURRENT_SESSION_MANAGER_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Current session Manager"]
${MANAGER_VIEW_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Manager View"]
${SIGN_OUT_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Sign Out"]

#Elements of bottom navigation bar
${CHECKOUT_TAB_BUTTON}    xpath=//android.view.View[@content-desc="Checkout"]
${TRANSACTIONS_TAB_BUTTON}    xpath=//android.view.View[@content-desc="Transactions"]
${CLIENTS_TAB_BUTTON}    xpath=//android.view.View[@content-desc="Client"]
${TICKET_TAB_BUTTON}    xpath=//android.view.View[@content-desc="Tickets"]
${GIFT_CARD_TAB_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Gift Card"]
${WAITING_SERVICES_TAB_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Waiting Services"]
${APPOINTMENTS_TAB_BUTTON}    xpath=//android.view.View[@content-desc="Appointments"]
${CHECK_IN_TAB_BUTTON}    xpath=//android.view.View[@content-desc="Check-in"]

#Elements in Select Services screen
${SELECT_SERVICE_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="MAIN MENU > Services"]
${SEARCH_SERVICE_FIELD}    xpath=//android.widget.EditText[normalize-space(@hint)="Search by Service Name"]
${CHANGE_SERVICE_POSITION_ON}    xpath=//android.view.View[@content-desc="On"]
${CHANGE_SERVICE_POSITION_ON}    xpath=//android.view.View[@content-desc="Off"]

${SERVICE_CARD}    xpath=//android.view.View[contains(@content-desc,"${SERVICE_NAME}") and contains(@content-desc,"${SERVICE_DURATION}")]
${ADD_CLIENT_BUTTON}    xpath=(//android.view.View[@content-desc="Client"])[1]
${DISCOUNT_BUTTON}    xpath=(//android.view.View[@content-desc="Discount"])[2][@enabled='true']
${HOLD_TICKET_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Hold Ticket"]
${ADD_TECHNICIAN_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Add Technician"]
${ADD_GIFT_CARD_BUTTON}    xpath=(//android.view.View[normalize-space(@content-desc)="Gift Card"])[1]
${DISCARD_BUTTON}    xpath=//android.view.View[@content-desc="Discard"]
${ALL_CATEGORIES_BUTTON}    xpath=//android.view.View[contains(@content-desc,"All Categories")]

${SUBTOTAL_AMOUNT}    xpath=(//android.view.View[@content-desc="${REAL_SUBTOTAL_AMOUNT}"])[1]
${TAX_AMOUNT}    xpath=(//android.view.View[@content-desc="${REAL_TAX_AMOUNT}"])[2]
${BALANCE_DUE_AMOUNT}    xpath=(//android.view.View[@content-desc="${REAL_BALANCE_DUE}"])[3]
${PAYMENT_BUTTON}    xpath=//android.view.View[@content-desc="Payment"][@enabled='true']

#Elements in Select Discount modal
${SELECT_DISCOUNT_MODAL_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="Select Discount"]
${CLOSE_SELECT_DISCOUNT_MODAL_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Select Discount"]/android.view.View[1]
${QUICK_DISCOUNT_OPTION}    xpath=//android.view.View[normalize-space(@content-desc)="Quick discount"]/android.view.View[@selected='false']
${APPLY_VOUCHER_OPTION}    xpath=//android.view.View[normalize-space(@content-desc)="Apply Voucher"]/android.view.View[@selected='false']
${PERCENTAGE_TAB_SELECTED}    xpath=//android.view.View[@content-desc="Percentage"][@selected='true']
${FIXED_AMOUNT_TAB_SELECTED}    xpath=//android.view.View[normalize-space(@content-desc)="Fixed amount"][@selected='true']


#Elements in Payment Checkout screen (Input balance due)
${PAYMENT_CHECKOUT_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="MAIN MENU > Checkout"]
${CASH}    xpath=//android.view.View[@content-desc="Cash"]
${CREDIT_CARD}    xpath=//android.view.View[@content-desc="Credit Card"]
${PAID_EXTERNALLY}    xpath=//android.view.View[@content-desc="Paid Externally"]
${GIFT_CARD}    xpath=//android.view.View[@content-desc="Gift Card"]

#Elements in Payment by CASH screen
${PAYMENT_BY_CASH_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="Back Payment by Cash"]
${CASH_BEGIN_CHARGE_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Begin Charge"]

#Elements in Payment by CREDIT CARD screen
${PAYMENT_BY_CREDIT_CARD_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="Back Payment by card"]
${CREDIT_CARD_BEGIN_CHARGE_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Begin Charge"]

#Elements in Payment by PAID EXTERNALLY screen
${PAYMENT_BY_PAID_EXTERNALLY_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="Back Paid Externally"]
${PAID_EXTERNALLY_TEXT}    xpath=//android.view.View[normalize-space(@content-desc)="Paid Externally"]
${PAID_EXTERNALLY_BEGIN_CHARGE_BUTTON}    xpath=//android.view.View[@content-desc="Begin Charge"]

#Elements in Payment by Gift Card screen
${APPLY_GIFT_CARD_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="Back Apply Gift Card"]
${GIFT_CARD_CODE_FIELD}    xpath=//android.widget.EditText[normalize-space(@hint)='Enter gift card code']
${APPLY_GIFT_CARD_CODE_BUTTON}    xpath=//android.view.View[@content-desc="Apply"]
${GIFT_CARD_APPLIED_SECTION_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="GIFT CARD APPLIED"]
${REMOVE_GIFT_CARD_BUTTON}    xpath=//android.view.View[@content-desc="Remove Gift Card"]
${SUBMIT_APPLY_GIFT_CARD_BUTTON}    xpath=//android.view.View[@content-desc="Submit"]

#Elements in Tips screen
${TIPS_SCREEN_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="Back Tips"]
${TIP_10}    xpath=//android.view.View[starts-with(@content-desc,'10%')]
${TIP_20}    xpath=//android.view.View[starts-with(@content-desc,'20%')]
${TIP_50}    xpath=//android.view.View[starts-with(@content-desc,'50%')]

#Elements in Custom Amount Tip screen
${CUSTOM_AMOUNT_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Custom Amount"]
${CUSTOM_AMOUNT_FORM_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="CUSTOM AMOUNT Tips amount"]
${CUSTOM_AMOUNT_FIELD}    xpath=//android.view.View[normalize-space(@content-desc)="CUSTOM AMOUNT Tips amount"]/android.view.View[2]
${CLEAR_CUSTOM_AMOUNT_BUTTON}    xpath=//android.view.View[@content-desc="Clear"]
${CLOSE_CUSTOM_AMOUNT_FORM_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="CUSTOM AMOUNT Tips amount"]/android.view.View[1]
${SUBMIT_CUSTOM_AMOUNT_BUTTON}    xpath=//android.view.View[@content-desc="Submit"]
${SKIP_TIP_BUTTON}    xpath=//android.view.View[@content-desc="Skip"]

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
${CLIENT_RECIPIENTS_ON}    xpath=//android.view.View[@content-desc='Send Receipt']/android.view.View[2]/android.view.View[4][@checkable='true']
${CLIENT_RECIPIENTS_OFF}    xpath=//android.view.View[@content-desc='Send Receipt']/android.view.View[2]/android.view.View[4][@checkable='false']




