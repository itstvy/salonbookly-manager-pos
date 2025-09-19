*** Settings ***
Resource    ../../resources/common/common-settings.robot

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

#Elements of Header in Manager screen
${NOTIFICATIONS_ICON}    

#Element of Manager Menu
${MENU}    xpath=//android.widget.ScrollView
${SALON}    xpath=//android.view.View[@content-desc="SALON"]
${MARKETPLACE}    xpath=//android.view.View[@content-desc="MARKETPLACE"]
${CRM}    xpath=//android.view.View[@content-desc="CRM"]
${HRM}    xpath=//android.view.View[@content-desc="HRM"]
${SETTINGS}    xpath=//android.view.View[@content-desc="SETTINGS"]

${CREATE_TICKET_MENU}    xpath=//android.widget.ScrollView/android.view.View[2]/android.view.View/android.view.View[@content-desc="Create Ticket"]
${TICKET_SUMMARY_MENU}    xpath=//android.widget.ScrollView/android.view.View[2]/android.view.View/android.view.View[@content-desc="Ticket Summary"]
${CUSTOMER_CHECK_IN_MENU}    xpath=//android.widget.ScrollView/android.view.View[2]/android.view.View/android.view.View[@content-desc="Customer Check-in"]
${WAITING_SERVICES_MENU}    xpath=//android.widget.ScrollView/android.view.View[2]/android.view.View/android.view.View[@content-desc="Waiting Services"]
${APPOINTMENTS_MENU}    xpath=//android.widget.ScrollView/android.view.View[2]/android.view.View/android.view.View[@content-desc="Appointments"]
${WEB_APPOINTMENTS_MENU}    xpath=//android.widget.ScrollView/android.view.View[2]/android.view.View/android.view.View[@content-desc="Web Appointments"]
${SERVICE_MENU}    xpath=//android.widget.ScrollView/android.view.View[2]/android.view.View/android.view.View[@content-desc="Service"]
${REPORT_MENU}    xpath=//android.widget.ScrollView/android.view.View[2]/android.view.View/android.view.View[@content-desc="Report"]
${TECHNICIAN_SETTLEMENT_MENU}    xpath=//android.widget.ScrollView/android.view.View[2]/android.view.View/android.view.View[@content-desc="Technician Settlement"]

${MARKETPLACE_MENU}    xpath=//android.widget.ScrollView/android.view.View[3]/android.view.View/android.view.View[@content-desc="Marketplace"]
${SUPPLY_ORDER_MENU}    xpath=//android.widget.ScrollView/android.view.View[3]/android.view.View/android.view.View[@content-desc="Supply Order"]
${INVENTORY_MENU}    xpath=//android.widget.ScrollView/android.view.View[3]/android.view.View/android.view.View[@content-desc="Inventory"]

${CLIENTS_MENU}    xpath=//android.widget.ScrollView/android.view.View[4]/android.view.View/android.view.View[@content-desc="Clients"]
${GIFT_CARD_MENU}    xpath=//android.widget.ScrollView/android.view.View[4]/android.view.View/android.view.View[@content-desc="Gift Card"]
${VOUCHER_MENU}    xpath=//android.widget.ScrollView/android.view.View[4]/android.view.View/android.view.View[@content-desc="Voucher"]
${LOYALTY_SETTING}    xpath=//android.widget.ScrollView/android.view.View[4]/android.view.View/android.view.View[@content-desc="Loyalty Setting"]

${TECHNICIAN_MENU}    xpath=//android.widget.ScrollView/android.view.View[5]/android.view.View/android.view.View[@content-desc="Technicians"]
${TECHNICIAN_CHECK_IN_MENU}    xpath=//android.widget.ScrollView/android.view.View[5]/android.view.View/android.view.View[@content-desc="Check-in History"]
${TURN_STATUS_MENU}    xpath=//android.widget.ScrollView/android.view.View[5]/android.view.View/android.view.View[@content-desc="Turn Status"]
${SKILL_PRESET_MENU}    xpath=//android.widget.ScrollView/android.view.View[5]/android.view.View/android.view.View[@content-desc="Skill Preset"]
${EMPLOYEE_MENU}    xpath=//android.widget.ScrollView/android.view.View[5]/android.view.View/android.view.View[@content-desc="Employee"]
${ROLE_PERMISSIONS_MENU}    xpath=//android.widget.ScrollView/android.view.View[5]/android.view.View/android.view.View[@content-desc="Role Permissions"]
${PRESET_ROLE_TYPE_MENU}    xpath=//android.widget.ScrollView/android.view.View[5]/android.view.View/android.view.View[@content-desc="Preset Role Type"]
${CONFIGURE_PERMISSIONS_MENU}    xpath=//android.widget.ScrollView/android.view.View[5]/android.view.View/android.view.View[@content-desc="Configure Permissions"]

${NOTIFICATIONS_MENU}    xpath=//android.widget.ScrollView/android.view.View[6]/android.view.View/android.view.View[@content-desc="Notifications"]
${SALON_SETTINGS_MENU}    xpath=//android.widget.ScrollView/android.view.View[6]/android.view.View/android.view.View[@content-desc="Salon Settings"]
${BILLING_MENU}    xpath=//android.widget.ScrollView/android.view.View[6]/android.view.View/android.view.View[@content-desc="Billing"]



