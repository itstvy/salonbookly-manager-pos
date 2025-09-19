*** Settings ***
Resource    ../../resources/common/common-settings.robot

*** Keywords ***
user access to the Manager screen
    Wait Until Element Is Visible    ${MANAGER_VIEW_BUTTON}
    Click Element    ${MANAGER_VIEW_BUTTON}
    Sleep    5s
    Wait Until Element Is Visible    ${SALON}

