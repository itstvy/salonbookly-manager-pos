*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Keywords ***
user access to the Client list
    Wait Until Element Is Visible    ${CLIENTS_TAB_BUTTON}
    Click Element    ${CLIENTS_TAB_BUTTON}
    Wait Until Element Is Visible    ${CLIENTS_TAB_TITLE}
    Wait Until Element Is Visible    ${NOTIFY_CLIENTS_TAB_TITLE}