*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Variables ***
#Element of Employee List
${SEARCH_EMPLOYEE_FIELD}    xpath=//android.widget.EditText[@hint="Search by name, email, phone number"]
${CREATE_AN_EMPLOYEE_BUTTON}    xpath=//android.view.View[@content-desc="Create an employee"]

#Element of Create Employee form
${BACK_TO_EMPLOYEE_LIST_BUTTON}    xpath=//android.view.View[@content-desc="Back to employee"]
${EMPLOYEE_CREATION_FULL_SCREEN}    xpath=//android.widget.ScrollView
${EMPLOYEE_SUBMIT_CREATION_BUTTON}    xpath=//android.view.View[@content-desc="Add"]
#Avatar
${SELECT_FILE_BUTTON}    xpath=//android.view.View[normalize-space(@content-desc)="Choose an image Select file"]
${CAMERA_BUTTON_IN_EMPLOYEE}    xpath=//android.view.View[@content-desc="CAMERA"]
${GALLERY_BUTTON_IN_EMPLOYEE}    xpath=//android.view.View[@content-desc="GALLERY"]
${APPLY_IMAGE_BUTTON}    xpath=//android.widget.Button[@content-desc="Crop"]
${REMOVE_IMAGE}    xpath=//android.widget.ScrollView/android.view.View[3]

#Element of POS Device to get image
${3_LINES_BUTTON}    xpath=//android.widget.ImageButton[@content-desc="Show roots"]
${DOWNLOADS_BUTTON}    xpath=//android.widget.TextView[@resource-id="android:id/title" and @text="Downloads"]
${EMPLOYEE_IMAGE}    xpath=//android.widget.TextView[@resource-id="android:id/title" and @text="tech1.jpg"]

#First Name
${EMPLOYEE_FIRST_NAME_FIELD}    xpath=//android.widget.EditText[@hint="First Name"]
${VALIDATION_EMPLOYEE_FIRST_NAME_LESS_THAN_2_CHARACTERS}    xpath=//android.view.View[@content-desc="This field must be 2 characters or longer!"]

#Last Name
${EMPLOYEE_LAST_NAME_FIELD}    xpath=//android.widget.EditText[@hint="Last Name"]

#Nick Name
${EMPLOYEE_NICK_NAME_FIELD}    xpath=//android.widget.EditText[@hint="Nick name"]

#Date of Birth
${EMPLOYEE_DATE_OF_BIRTH_FIELD}    xpath=//android.view.View[@hint="Date of Birth"]
${EMPLOYEE_DOB_MODAL}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View

#Phone number
${EMPLOYEE_PHONE_NUMBER_FIELD}    xpath=//android.view.View[@hint="Phone Number"]

#Login With Pin Code
${EMPLOYEE_LOGIN_PIN_CODE_FIELD}    xpath=//android.widget.ImageView[@text="••••"]

#Password
${EMPLOYEE_PASS_WORD_FIELD}    xpath=//android.widget.EditText[@hint="Password"]

#Re-enter Password
${EMPLOYEE_RE_ENTER_PASSWORD_FIELD}    xpath=//android.widget.EditText[@hint="Re-enter Password"]

#Income Type
${EMPLOYEE_INCOME_TYPE_FIELD}    xpath=//android.widget.Button[@content-desc="Hourly"]
${IMCOME_TYPE_HOURLY_OPTION}    xpath=//android.widget.Button[@content-desc="Hourly"]
${INCOME_TYPE_SALARY_OPTION}    xpath=//android.widget.Button[@content-desc="Salary"]

#Pay Rate
${EMPLOYEE_PAY_RATE_FIELD}    xpath=//android.view.View[@text="0.00"]

#Email
${EMPLOYEE_EMAIL_FIELD}    xpath=//android.widget.EditText[@hint="Email"]

#Address
${EMPLOYEE_ADDRESS_FIELD}    xpath=//android.widget.EditText[@hint="Address"]

#State
${EMPLOYEE_STATE_FIELD}    xpath=//android.widget.EditText[@hint="State"]

#City
${EMPLOYEE_CITY_FIELD}    xpath=//android.widget.EditText[@hint="City"]

#Zipcode
${EMPLOYEE_ZIPCODE_FIELD}    xpath=//android.view.View[@hint="Zipcode"]

