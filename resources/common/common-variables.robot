*** Settings ***
Library    ../../venv/Lib/site-packages/robot/libraries/String.py
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

#Element of Salonbookly
#Phone number Keypad
${PHONE_NUMBER_INPUT_MODAL_TITLE}    xpath=//android.view.View[@content-desc="PHONE NUMBER"]
${NUMERIC_KEYPAD_1}    xpath=//android.view.View[@content-desc="1"]
${NUMERIC_KEYPAD_2}    xpath=//android.view.View[@content-desc="2"]
${NUMERIC_KEYPAD_3}    xpath=//android.view.View[@content-desc="3"]
${NUMERIC_KEYPAD_4}    xpath=//android.view.View[@content-desc="4"]
${NUMERIC_KEYPAD_5}    xpath=//android.view.View[@content-desc="5"]
${NUMERIC_KEYPAD_6}    xpath=//android.view.View[@content-desc="6"]
${NUMERIC_KEYPAD_7}    xpath=//android.view.View[@content-desc="7"]
${NUMERIC_KEYPAD_8}    xpath=//android.view.View[@content-desc="8"]
${NUMERIC_KEYPAD_9}    xpath=//android.view.View[@content-desc="9"]
${NUMERIC_KEYPAD_0}    xpath=//android.view.View[@content-desc="0"]
${NUMERIC_KEYPAD_CLEAR}    xpath=//android.view.View[@content-desc="Clear"]
${NUMERIC_KEYPAD_CANCEL}    xpath=//android.view.View[@content-desc="Cancel"]
${NUMERIC_KEYPAD_DONE}    xpath=//android.view.View[@content-desc="Done"]


    