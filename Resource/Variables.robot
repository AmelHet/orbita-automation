*** Settings ***
Documentation  Variables for sign up test

*** Variables ***
${AUTH_PAGE_URL}  https://orbita.te.ua/
${SEARCH_LOCATOR}  xpath=(//input[@name='s'])[2]
${INPUT_TEXT_VAR_ONE}  "мультиварка"
${ADD_TO_CARD_BUTTON_LOCATOR}  css=.use-ajax-submit.button.button--primary.js-form-submit.form-submit.btn-primary.btn
${CHECK_CARD_BUTTON}  By.xpath( "//a[contains(text(), 'Переглянути кошик')]" )
${MOTHER_HOVER_LOCATOR}  css=.hoverl_cccd
${PRODACT_CARD_LOCATOR}   xpath=//a[contains(@href, '?add-to-cart=270627')]                          #xpath=//a[contains(text(),'Додати у кошик')]    css=.col-md-3:nth-child(1) .button
${SPECICIFIC_PRODUCT_CARD_LOCATOR}  css=.product_title.entry-title
${SEARCH_BUTTON_LOCATOR}  xpath=//form/button
${SEARCH_RESULT_TEXT_MESSEGE}  xpath=//*[contains(text(),'Результати пошуку для “”')]
${PRODUCT_NOT_IN_RANGE}  стілець
${PRODUCT_NOT_FOUND_ERROR_MESSEGE}  xpath=//p[contains(text(),'Товарів, відповідних вашому запиту, не знайдено.')]
${ADWISE_FIELD}  css=.media.autocompleate-media.tt-suggestion.tt-selectable
${INPUT_TEXT_VAR_THREE}  духова шафа
${CHARACTERS_FOR_INVALID_DATA_SEARCH}   ~!@#$%^&*()_+/*-}{[]
${ITEM_OF_PRODUCT}  70328
${MOUSE_OVER}  css=.grid-inner
${GO_TO_CART_BUTTON}  xpath=(//a[contains(text(),'Переглянути кошик')])[3]
${CARD_PAGE_LOCATOR}  xpath=//*[contains(text(),'Кошик для покупок')]
${DELIVERY_RADIOBUTTON_VAR}  id=shipping_method_0_flat_rate15
${GO_TO_ORDERING_BUTTON}  css=.btn-outline
${ORDERING_PAGE_LOCATOR}  css=.active:nth-child(2)








