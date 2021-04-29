*** Settings ***
Documentation  Keywords for sigup tests
Library  SeleniumLibrary
Library  String
Resource  Variables.robot


*** Keywords ***
input text and press enter
    input text  ${SEARCH_LOCATOR}  ${INPUT_TEXT_VAR_ONE}  "мультиварка"
    press key  ${SEARCH_LOCATOR}  \\13
















