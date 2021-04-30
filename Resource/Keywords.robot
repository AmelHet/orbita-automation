*** Settings ***
Documentation  Keywords for sigup tests
Library  SeleniumLibrary
Library  String
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






















