*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Variables ***
${CLIENTS_TAB_TITLE}    xpath=//android.view.View[@content-desc="Clients"]
${NOTIFY_CLIENTS_TAB_TITLE}    xpath=//android.view.View[@content-desc="Notify Clients"]
${SEARCH_CLIENT_FIELD}    xpath=//android.widget.EditText[normalize-space(@hint)="Search by Name, Email, Phone Number"]
${CREATE_CLIENT_BUTTON}    xpath=//android.view.View[@content-desc="Create Client"]
${FILTER_CLIENT_TYPE_BUTTON}    xpath=//android.widget.Button[contains(@content-desc,"Online Clients")]
${FILTER_VIP_STATUS_BUTTON}    xpath=//android.widget.Button[contains(@content-desc,"VIP Status")]
${FILTER_CLIENT_DATE_OF_BIRTH_BUTTON}    xpath=//android.widget.Button[contains(@content-desc,"Date of Birth")]