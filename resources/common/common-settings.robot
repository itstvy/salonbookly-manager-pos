*** Settings ***
Library    AppiumLibrary
Library    BuiltIn
Library    Collections
Library    String
Library    FakerLibrary    locale=en_US

#Common
Resource    ../../resources/common/common-keywords.robot
Resource    ../../resources/common/common-variables.robot

#Authentication
Resource    ../../resources/keywords/authentication/sign-in-keywords.robot
Resource    ../../resources/variables/authentication/sign-in-variables.robot

#Mainscreen
Resource    ../../resources/keywords/mainscreen/tab-checkout-keyword.robot
Resource    ../../resources/variables/mainscreen/tab-checkout-variables.robot
Resource    ../../resources/variables/mainscreen/mainscreen-variables.robot

#Clients
Resource    ../../resources/keywords/clients/clients-keywords.robot
Resource    ../../resources/variables/clients/clients-variables.robot