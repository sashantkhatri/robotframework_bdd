*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${FLIGHT_DETAILS_LBL}    xpath=//form[@name='findflight']//font[contains(text(),'Flight')]
${PASSENGERS_COUNT}    xpath=//select[@name='passCount']
${DEPARTING_FROM}    xpath=//select[@name='fromPort']

*** Keywords ***
Flight Finder Is Open
    [Documentation]    This keyword is used to verify dashabord is open or not
    Wait Until Element Is Visible    ${FLIGHT_DETAILS_LBL}
    Element Should Be Enabled    ${FLIGHT_DETAILS_LBL}
    Wait Until Element Is Visible    ${PASSENGERS_COUNT}
    Element Should Be Enabled    ${FLIGHT_DETAILS_LBL}
    Wait Until Element Is Visible    ${DEPARTING_FROM}
    Element Should Be Enabled    ${DEPARTING_FROM}
