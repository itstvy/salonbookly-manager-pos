*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Variables ***

#Messages
${PAYMENT_SUCCESS_MESSAGE}    xpath=//android.view.View[normalize-space(@content-desc)="Proceed payment successfully"]

#Data
${TECHNICIAN_NAME}    Tyla
${SERVICE_NAME}    Classic Manicure
${SERVICE_DURATION}    10 mins
${REAL_SUBTOTAL_AMOUNT}
${REAL_TAX_AMOUNT}
${REAL_BALANCE_DUE}
${EXIST_CLIENT_PHONE_NUMBER}    6668882525

#Select Technician & Services
${TECHNICIAN_CARD}    xpath=//android.view.View[contains(@content-desc," Min")]
${SELECT_SERVICE_TITLE}    xpath=//android.view.View[normalize-space(@content-desc)="MAIN MENU > Services"]
${SEARCH_SERVICE_FIELD}    xpath=//android.widget.EditText[normalize-space(@hint)="Search by Service Name"]
${CHANGE_SERVICE_POSITION_ON}    xpath=//android.view.View[@content-desc="On"]
${CHANGE_SERVICE_POSITION_OFF}    xpath=//android.view.View[@content-desc="Off"]
${ALL_CATEGORIES_BUTTON}    xpath=//android.view.View[contains(@content-desc,"All Categories")]
${SERVICE_CARD}    xpath=//android.view.View[contains(@content-desc," mins") and contains(@content-desc,"$")]
${SERVICE_LIST}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[8]
${SERVICE_CARDS}    xpath=//android.view.View[contains(@content-desc,"mins")]

#Element in Add Client at Cart
${ADD_CLIENT_BUTTON}    xpath=(//android.view.View[@content-desc="Client"])[1]
${SELECT_CLIENT_TITLE}    xpath=//android.view.View[contains(@content-desc,"SELECT CLIENT")]
${SEARCH_PN_FIELD}    xpath=//android.view.View[normalize-space(@hint)="Phone Number"][@clickable='false']
${SEARCH_RESULT_TITLE}    xpath=//android.view.View[@content-desc="Search Result"]
${SUBMIT_BUTTON_TO_ADD_CLIENT}    xpath=//android.view.View[@content-desc="Submit"]
${REMOVE_CLIENT_BUTTON}    xpath=//android.view.View[@content-desc="Remove"]
${CLIENT_NOT_EXIST_VALIDATION_TEXT}    xpath=//android.widget.ImageView[contains(@content-desc,"Not a member yet.")]
${ADD_NEW_CLIENT_BUTTON}    xpath=//android.view.View[@content-desc="Create New Client"]

#Element in Create new Client form at Cart
${SELECT_CONTACT_FORM_TITLE}    xpath=//android.view.View[@content-desc="SELECT CONTACT"]
${CLIENT_FIRST_NAME_FIELD}    xpath=//android.widget.EditText[normalize-space(@hint)="First Name"]
${CLIENT_LAST_NAME_FIELD}    xpath=//android.widget.EditText[normalize-space(@hint)="Last Name"]
${CLIENT_EMAIL_FIELD}    xpath=//android.widget.EditText[normalize-space(@hint)="Email"]
${CLIENT_DATE_OF_BIRTH_FIELD}    xpath=//android.view.View[normalize-space(@hint)="Date of Birth"]
${DATE_OF_BIRTH_TITLE_MODAL}    xpath=//android.view.View[@content-desc="Date of Birth"]
${CLIENT_BUSINESS_NAME_FIELD}    xpath=//android.widget.EditText[normalize-space(@hint)="Business name"]
${CLIENT_ADDRESS_FIELD}    xpath=//android.widget.EditText[normalize-space(@hint)="Address"]
${CANCEL_ADD_NEW_CLIENT_BUTTON}    xpath=//android.view.View[@content-desc="Cancel"]
${SUBMIT_ADD_NEW_CLIENT_BUTTON}    xpath=//android.view.View[@content-desc="Submit"]


#Element in Discount modal
${DISCOUNT_BUTTON}    xpath=(//android.view.View[@content-desc="Discount"])[2][@enabled='true']
${HOLD_TICKET_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Hold Ticket"]
${ADD_TECHNICIAN_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Add Technician"]
${ADD_GIFT_CARD_BUTTON}    xpath=(//android.view.View[normalize-space(@content-desc)="Gift Card"])[1]
${DISCARD_BUTTON}    xpath=//android.view.View[@content-desc="Discard"]

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




