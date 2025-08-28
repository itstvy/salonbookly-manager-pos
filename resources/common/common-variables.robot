*** Settings ***
Resource    ../../resources/common/common-settings.robot
*** Variables ***
#Connect to POS and Provide Salonbookly information
${REMOTE_URL}        http://127.0.0.1:4723
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    11
${DEVICE_NAME}     POS       
${UDID}            192.168.31.181:44999
${APP_PACKAGE}     com.bizbookly.manager.dev
${APP_ACTIVITY}    com.bizbookly.manager.MainActivity
${AUTOMATION_NAME}    UiAutomator2