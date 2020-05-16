*** Settings ***
Resource    ../pages/login_page.robot
Resource    ../pages/flight_finder_page.robot
Resource    ../resources.robot

*** Test Cases ***
Verify Login
    [Setup]    Open Login Page Using Chrome Browser
    [Tags]    BDD    sanity
    GIVEN Login Page Open
    WHEN Login With User mercury And mercury
    THEN Flight Finder Is Open
    [Teardown]    Close Browser

Verify Login For Multiple Users
    [Tags]    BDD
    [Template]    Login With Different Combination
    mercury    mercury    ${True}
    mercury    password    ${False}
    username    mercury    ${True}

*** Keywords ***
Login With Different Combination
    [Arguments]    ${username}    ${password}    ${is_valid}=${True}
    GIVEN Open Login Page Using Chrome Browser
    AND Login Page Open
    WHEN Login With User    ${username}    ${password}
    Run Keyword If    ${is_valid}    THEN Flight Finder Is Open
    ...    ELSE    THEN Login Page Open
    [Teardown]    Close Browser
