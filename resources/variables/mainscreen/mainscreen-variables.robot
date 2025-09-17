*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Variables ***
#Elements of Header in Main screen
${CHANGE_POSITION_TEXT}    xpath=//android.view.View[normalize-space(@content-desc)="Change position"]
${CHANGE_TECHNICIAN_POSITION_BUTTON_ON}    xpath=//android.view.View[@content-desc="On"]
${CHANGE_TECHNICIAN_POSITION_BUTTON_OFF}    xpath=//android.view.View[@content-desc="Off"]
${REMOTE_SCREEN_ICON_BUTTON}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[5]
${PRINT_ICON_BUTTON}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[6]
${NOTIFICATION_ICON_BUTTON}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[7]
${CURRENT_SESSION_MANAGER_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Current session Manager"]
${MANAGER_VIEW_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Manager View"]
${SIGN_OUT_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Sign Out"]

#Elements of bottom navigation bar at Main Screen
${CHECKOUT_TAB_BUTTON}    xpath=//android.view.View[@content-desc="Checkout"]
${TRANSACTIONS_TAB_BUTTON}    xpath=//android.view.View[@content-desc="Transactions"]
${CLIENTS_TAB_BUTTON}    xpath=//android.view.View[@content-desc="Client"]
${TICKET_TAB_BUTTON}    xpath=//android.view.View[@content-desc="Tickets"]
${GIFT_CARD_TAB_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Gift Card"]
${WAITING_SERVICES_TAB_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Waiting Services"]
${APPOINTMENTS_TAB_BUTTON}    xpath=//android.view.View[@content-desc="Appointments"]
${CHECK_IN_TAB_BUTTON}    xpath=//android.view.View[@content-desc="Check-in"]