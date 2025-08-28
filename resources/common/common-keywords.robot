*** Settings ***
Resource    ../../resources/common/common-settings.robot

*** Keywords ***
Access to POS
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    device=${UDID}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    automationName=${AUTOMATION_NAME}
    Sleep    5s

#Set Test Message
Set Element to Test Message
    [Arguments]    ${element}    ${append}=True
    Set Test Message    Success Message: ${element}
    # Set Test Message    Payment Confirm: ${element}    append=${append}