*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Keywords ***
the Salon tab is selected
    Element Should Be Visible    ${SALON_TAB_SELECTED}
    Sleep    2s

user input correct Salon Email
    Element Should Be Visible    ${USERNAME_FIELD}
    Click Element    ${USERNAME_FIELD}
    Input Text    ${USERNAME_FIELD}    ${SALON_EMAIL}
    Click Element    ${SIGN_IN_TITLE}

user input correct Password
    Element Should Be Visible    ${PASSWORD_FIELD}
    Click Element    ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${SALON_PASSWORD}
    

user tap on Sign In button
    Click Element    ${SIGN_IN_TITLE}
    Element Should Be Visible    ${SIGN_IN_BUTTON}
    Click Element    ${SIGN_IN_BUTTON}
    Sleep    5s