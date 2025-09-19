*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Keywords ***
#Argument 
Input Random Data in Create Employee form
    [Arguments]    ${first_name_locator}    ${last_name_locator}    ${nick_name_locator}    ${email_locator}    ${address_locator}    ${state_locator}    ${city_locator}    ${zipcode_locator}    ${pin_code_locator}    ${income_type_locator}    ${income_type_option}    ${pay_rate_locator}    ${zipcode_miami}=43125    ${pin_code_data}=1111    ${pay_rate_salary_data}=220000

    ${first_name_data}=    Generate Random First Name
    ${last_name_data}=    Generate Random Last Name
    ${nick_name_data}=    Generate Random Nick Name
    ${email_data}=    Generate Email with Yopmail
    ${address_data}=    Generate Random Address

    Click Element    ${first_name_locator}
    Input Text    ${first_name_locator}    ${first_name_data}
    Hide Keyboard
    
    Click Element    ${last_name_locator}
    Input Text    ${last_name_locator}    ${last_name_data}
    Hide Keyboard

    Click Element    ${nick_name_locator}
    Input Text    ${nick_name_locator}    ${nick_name_data}
    Hide Keyboard

    Click Element    ${pin_code_locator}
    Click Element    ${NUMERIC_KEYPAD_CLEAR}
    Input number    ${pin_code_data}
    Click Element    ${NUMERIC_KEYPAD_DONE}

    Click Element    ${email_locator}
    Input Text    ${email_locator}    ${email_data}
    Hide Keyboard

    Click Element    ${address_locator}
    Input Text    ${address_locator}    ${address_data}
    Hide Keyboard
    
    Click Element    locator=${state_locator}
    Input Text    locator=${state_locator}    text=Florida
    Hide Keyboard

    Click Element    locator=${city_locator}
    Input Text    locator=${city_locator}    text=Miami
    Hide Keyboard

    Click Element    ${zipcode_locator}
    Input number    ${zipcode_miami}
    Click Element    ${NUMERIC_KEYPAD_DONE}

    Click Element    ${income_type_locator}
    Click Element    ${income_type_option}

    Click Element    ${pay_rate_locator}
    Input number    ${pay_rate_salary_data}
    Click Element    ${NUMERIC_KEYPAD_DONE}
    RETURN    ${first_name_data}    ${last_name_data}    ${nick_name_data}    ${email_data}    ${address_data}

user is on Manager Screen
    Wait Until Element Is Visible    ${SALON}

user press on Employee menu
    Click Element    ${SALON}
    Click Element    ${HRM}
    Click Element    ${EMPLOYEE_MENU}

system displays correct UI, layout Employee list screen
    Wait Until Element Is Visible    ${CREATE_AN_EMPLOYEE_BUTTON}

user is on Employee list screen
    Wait Until Element Is Visible    ${CREATE_AN_EMPLOYEE_BUTTON}
    Wait Until Element Is Visible    ${SEARCH_EMPLOYEE_FIELD}

user press on "Create An Employee" button
    Click Element    ${CREATE_AN_EMPLOYEE_BUTTON}

system displays correct UI, layout Employee Creation screen
    Wait Until Element Is Visible    ${BACK_TO_EMPLOYEE_LIST_BUTTON}
    Wait Until Element Is Visible    ${SELECT_FILE_BUTTON}

user in on Employee Creation screen
    Wait Until Element Is Visible    ${BACK_TO_EMPLOYEE_LIST_BUTTON}
    Wait Until Element Is Visible    ${SELECT_FILE_BUTTON}

user press on "Select File" button
    Click Element    ${SELECT_FILE_BUTTON}
    Sleep    2s

user press on "Gallery" button
    Wait Until Element Is Visible    ${GALLERY_BUTTON_IN_EMPLOYEE}
    Click Element    ${GALLERY_BUTTON_IN_EMPLOYEE}
    Sleep    2s

user press on "3 dau gach" button
    Wait Until Element Is Visible    ${3_LINES_BUTTON}
    Click Element    ${3_LINES_BUTTON}
    Sleep    2s

user press on "Downloads" button
    Wait Until Element Is Visible    ${DOWNLOADS_BUTTON}
    Click Element    ${DOWNLOADS_BUTTON}
    Sleep    2s

user select employee image
    Wait Until Element Is Visible    ${EMPLOYEE_IMAGE}
    Click Element    ${EMPLOYEE_IMAGE}
    Sleep    2s
    Wait Until Element Is Visible    ${APPLY_IMAGE_BUTTON}
    Click Element    ${APPLY_IMAGE_BUTTON}
    Sleep    5s
    Wait Until Element Is Visible    ${REMOVE_IMAGE}

# Lệnh push image từ PC lên POS: adb push "C:\ci\assets\photo.jpg" /sdcard/Download/photo.jpg
# Lệnh kiểm tra push ảnh thành công: adb shell ls -l /sdcard/Download/photo.jpg
# Nếu POS có image rồi thì khỏi push image cũng được
#Push ảnh xong rồi thì upload ảnh như thao tác bình thường

user proceed to upload employee avatar
    user press on "Select File" button
    user press on "Gallery" button
    user press on "3 dau gach" button
    user press on "Downloads" button
    user select employee image

user proceed to input valid data in all required fields in Employee Creation screen
    Input Random Data in Create Employee form    ${EMPLOYEE_FIRST_NAME_FIELD}    
    ...    ${EMPLOYEE_LAST_NAME_FIELD}    
    ...    ${EMPLOYEE_NICK_NAME_FIELD}    
    ...    ${EMPLOYEE_EMAIL_FIELD}    
    ...    ${EMPLOYEE_ADDRESS_FIELD}    
    ...    ${EMPLOYEE_STATE_FIELD}    
    ...    ${EMPLOYEE_CITY_FIELD}    
    ...    ${EMPLOYEE_ZIPCODE_FIELD}    
    ...    ${EMPLOYEE_LOGIN_PIN_CODE_FIELD}    
    ...    ${EMPLOYEE_INCOME_TYPE_FIELD}    
    ...    ${INCOME_TYPE_SALARY_OPTION}    
    ...    ${EMPLOYEE_PAY_RATE_FIELD}
    Input Data in Phone Number field    ${EMPLOYEE_PHONE_NUMBER_FIELD}
    Input Valid Data in Password and Confirm Password fields    ${EMPLOYEE_PASS_WORD_FIELD}    ${EMPLOYEE_RE_ENTER_PASSWORD_FIELD}

user press on "Add" button
    Wait Until Element Is Visible    ${EMPLOYEE_SUBMIT_CREATION_BUTTON}
    Click Element    ${EMPLOYEE_SUBMIT_CREATION_BUTTON}

#Input invalid data
user input data less than 2 characters in First Name field
    Click Element    ${EMPLOYEE_FIRST_NAME_FIELD}
    Input Text    ${EMPLOYEE_FIRST_NAME_FIELD}    ${LESS_THAN_2_CHARACTERS}

#Validation text
system displays validation text when First Name field has fewer 2 chararcters
    Wait Until Element Is Visible    ${VALIDATION_EMPLOYEE_FIRST_NAME_LESS_THAN_2_CHARACTERS}
