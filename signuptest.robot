*** Settings ***
Documentation  Tests for testing create an account form
Library  SeleniumLibrary

Resource  Resource/Variables.robot
Resource  Resource/Keywords.robot


Test Setup  Open Browser  ${AUTH_PAGE_URL}  chrome
Test Teardown  Close all browsers

*** Test Cases ***

S1 User can use search field with valid data (use enter)
    [Tags]  search1
    click element  ${SEARCH_LOCATOR}
    input text and press enter
    wait until page contains element  ${PRODACT_CARD_LOCATOR}


S2 User can use serch field to find specific product (use enter)
    [Tags]  search1
    click and input text
    press keys  ${None}  \\13
    wait until page contains element  ${SPECICIFIC_PRODUCT_CARD_LOCATOR}


S3 User can use search field with valid data (use search button)
    [Tags]  search1
    click element  ${SEARCH_LOCATOR}
    input text  ${SEARCH_LOCATOR}  ${INPUT_TEXT_VAR_ONE}
    sleep  2
    click button  ${SEARCH_BUTTON_LOCATOR}
    wait until page contains element  ${PRODACT_CARD_LOCATOR}


S4 Search with empty search field (use enter key)
    [Tags]  search1
    click element  ${SEARCH_LOCATOR}
    press key  ${SEARCH_LOCATOR}  \\13
    wait until page contains element  ${SEARCH_RESULT_TEXT_MESSEGE}


S5 Search the product is not in the range
    [Tags]  search1
    sleep  2
    click element  ${SEARCH_LOCATOR}
    input text  ${SEARCH_LOCATOR}  ${PRODUCT_NOT_IN_RANGE}
    click button  ${SEARCH_BUTTON_LOCATOR}
    wait until page contains element  ${PRODUCT_NOT_FOUND_ERROR_MESSEGE}


S6 A tooltip appears when user entering data in the search field
    [Tags]  search1
    click element  ${SEARCH_LOCATOR}
    input text  ${SEARCH_LOCATOR}  ${INPUT_TEXT_VAR_THREE}
    wait until page contains element  ${ADWISE_FIELD}   20


S7 Able to search with special characters in search field
    [Tags]   search1
    click element  ${SEARCH_LOCATOR}
    input text  ${SEARCH_LOCATOR}  ${CHARACTERS_FOR_INVALID_DATA_SEARCH}
    click button  ${SEARCH_BUTTON_LOCATOR}
    wait until page contains element  ${PRODUCT_NOT_FOUND_ERROR_MESSEGE}


S8 Make search for item of prodact
    [Tags]  search
    click element  ${SEARCH_LOCATOR}
    input text  ${SEARCH_LOCATOR}  ${ITEM_OF_PRODUCT}
    click button  ${SEARCH_BUTTON_LOCATOR}
    wait until page contains element  ${PRODUCT_NOT_FOUND_ERROR_MESSEGE}


SM1 Find product and making order (first smoke test)
    [Tags]  smoke
    input text and press enter
    add product to card
    go to card
    choose delivery type
    press order button


































