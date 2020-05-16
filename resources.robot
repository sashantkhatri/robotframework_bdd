*** Settings ***
Library       SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${MAIN_PAGE}      http://newtours.demoaut.com/
${LOGIN_PAGE}     ${MAIN_PAGE}/mercurysignon.php

*** Keywords ***
Open Main Page Using Chrome Browser
    Open Browser    ${MAIN_PAGE}    Chrome
    Maximize Browser Window

Open Login Page Using Chrome Browser
    ${pwd}=    Set Variable    ${CURDIR}/
    ${chrome_driver}=    Join Path    ${pwd}    driver    chromedriver
    Open Browser    ${LOGIN_PAGE}   chrome
    Maximize Browser Window