*** Settings ***
Documentation  Keywords for sigup tests
Library  SeleniumLibrary
Library  String
Library  ./Resource/extendedkeywords.py
Resource  Variables.robot


*** Keywords ***
input text and press enter
    input text  ${SEARCH_LOCATOR}  ${INPUT_TEXT_VAR_ONE}  "мультиварка"
    press keys  ${None}  \ue007

click and input text
    click element  ${SEARCH_LOCATOR}
    input text  ${SEARCH_LOCATOR}  ${INPUT_TEXT_VAR_TWO}


Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})


add product to card
    Maximize Browser Window
    Scroll Page To Location    0    475
    sleep  2
    mouse over  ${MOUSE_OVER}
    mouse over  ${PRODACT_CARD_LOCATOR}
    click element  ${PRODACT_CARD_LOCATOR}


go to card
    sleep  3
    #mouse over  ${PRODACT_CARD_LOCATOR}
    click element  ${GO_TO_CART_BUTTON}
    wait until page contains element  ${CARD_PAGE_LOCATOR}  15


choose delivery type
    Scroll Page To Location    0    750
    Select Radio Button  shipping_method[0]   shipping_method_0_local_pickup12


press order button
    sleep  2
    click element  ${GO_TO_ORDERING_BUTTON}
    wait until page contains element  ${ORDERING_PAGE_LOCATOR}


generate random email and input in "Email" field
    ${random_email}  generate_random_emails  ${12}
    click element  ${EMAIL_REGISTRATION_FIELD}
    input text  ${EMAIL_REGISTRATION_FIELD}  ${random_email}


generate random password and input in "Password" field
    ${random_password}  generate_random_password  ${10}
    click element  ${PASSWORD_REGISTRATION_FIELD}
    input text  ${PASSWORD_REGISTRATION_FIELD}  ${random_password}


press registration button
    click element  ${REGISTRATION_BUTTON}


click on log in/sign up tab
    click element  ${LOG_IN_TAB_LOCATOR}


click "make new profile" button
    click element  ${MAKE_NEW_PROFILE_BUTTON}

wait until "my profile" tab should be opened
    wait until page contains element  ${MY_PROFILE_WINDOW}  10

wait for "need to enter email" error message
    wait until page contains element  ${NEED_TO_ENTER_EMAIL_ERROR_MESSEGE}  10

wait for "need to enter password" error message
     wait until page contains element  ${NEED_TO_ENTER_PASSWORD_ERROR_MESSAGE}  10


















