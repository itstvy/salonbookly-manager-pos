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

Generate Random US Phone Number
    ${valid_first_number}=    Random Int    min=2    max=9
    ${rest_number}=    Generate Random String    9    [NUMBERS]
    ${valid_phonenumber}=    Catenate    SEPARATOR=    ${valid_first_number}    ${rest_number}
    [RETURN]    ${valid_phonenumber}

Input Random US Phone Number
    ${phone_number}=    Generate Random US Phone Number
    Input number    ${phone_number}
    [RETURN]    ${phone_number}

Input number
    [Arguments]    ${number}
    ${digits}=    Split String To Characters    ${number}
    FOR    ${digit}    IN    @{digits}
        Run Keyword If    '${digit}' == '0'    Click Element    ${NUMERIC_KEYPAD_0}
        ...    ELSE IF    '${digit}' == '1'    Click Element    ${NUMERIC_KEYPAD_1}
        ...    ELSE IF    '${digit}' == '2'    Click Element    ${NUMERIC_KEYPAD_2}
        ...    ELSE IF    '${digit}' == '3'    Click Element    ${NUMERIC_KEYPAD_3}
        ...    ELSE IF    '${digit}' == '4'    Click Element    ${NUMERIC_KEYPAD_4}
        ...    ELSE IF    '${digit}' == '5'    Click Element    ${NUMERIC_KEYPAD_5}
        ...    ELSE IF    '${digit}' == '6'    Click Element    ${NUMERIC_KEYPAD_6}
        ...    ELSE IF    '${digit}' == '7'    Click Element    ${NUMERIC_KEYPAD_7}
        ...    ELSE IF    '${digit}' == '8'    Click Element    ${NUMERIC_KEYPAD_8}
        ...    ELSE IF    '${digit}' == '9'    Click Element    ${NUMERIC_KEYPAD_9}
    END

Generate Random First Name
    ${first_name}=    First Name
    [RETURN]    ${first_name}

Generate Random Last Name
    ${last_name}=    Last Name
    [RETURN]    ${last_name}

Generate Email with Yopmail
    ${first_name}=    First Name
    ${user_name}=    Replace String Using Regexp    ${first_name}    [^A-Za-z0-9]    _
    ${user_name}=    Convert To Lowercase    ${user_name}
    ${email}=    Catenate    SEPARATOR=@    ${user_name}    yopmail.com
    [RETURN]    ${email}

Generate Random Address
    ${street_address}=    Street Address
    ${city}=    City
    ${state}=    State
    ${full_address}=    Catenate    SEPARATOR=    ${street_address}    ${city}    ${state}
    [RETURN]    ${full_address}

Input Random Data in Create Client form
    [Arguments]    ${first_name_locator}    ${last_name_locator}    ${email_locator}    ${address_locator}
    ${first_name_data}=    Generate Random First Name
    ${last_name_data}=    Generate Random Last Name
    ${email_data}=    Generate Email with Yopmail
    ${address_data}=    Generate Random Address
    Click Element    ${first_name_locator}
    Input Text    ${first_name_locator}    ${first_name_data}
    
    Click Element    ${last_name_locator}
    Input Text    ${last_name_locator}    ${last_name_data}

    Click Element    ${email_locator}
    Input Text    ${email_locator}    ${email_data}
    Hide Keyboard

    Click Element    ${address_locator}
    Input Text    ${address_locator}    ${address_data}

    [RETURN]    ${first_name_data}    ${last_name_data}    ${email_data}    ${address_data}
