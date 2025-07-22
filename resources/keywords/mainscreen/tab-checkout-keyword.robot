*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Keywords ***
the Change Position is visible
    Element Should Be Visible    ${CHANGE_POSITION_TEXT}