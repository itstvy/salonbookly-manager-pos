*** Settings ***
Resource    ../../../resources/common/common-settings.robot

*** Variables ***
#Data
${SALON_EMAIL}    salon.dev@yopmail.com
${SALON_PASSWORD}    Dev123!@#

#Locators
${USERNAME_FIELD}     xpath=//android.widget.EditText[@hint="User Name"]

${PASSWORD_FIELD}    xpath=//android.widget.EditText[@hint="Password"]

${SIGN_IN_BUTTON}    xpath=//android.view.View[@content-desc="Sign In" and @clickable="true"]

${SIGN_IN_TITLE}    xpath=//android.view.View[@content-desc="Sign In" and @clickable="false"]

${SALON_TAB_SELECTED}    xpath=//android.view.View[normalize-space(@content-desc)="SALON Sign In" and @clickable="true"]

${SUPPLIER_TAB_SELECTED}    xpath=//android.view.View[normalize-space(@content-desc)="SUPPLIER Sign In" and @clickable="true"]