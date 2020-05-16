*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${SIGN_ON}    xpath=//*[contains(text(), "SIGN-ON")]
${REGISTER}    xpath=//*[contains(text(), "REGISTER")]
${USERNAME_TXT}    name=userName
${PASSWORD_TXT}    name=password
${SUBMIT}    name=login

*** Keywords ***
Login Page Open
    [Documentation]    This keyword is used to navigate login page and verify login page is open
    Wait Until Element Is Visible    ${USERNAME_TXT}
    Element Should Be Visible    ${USERNAME_TXT}
    Wait Until Element Is Visible    ${PASSWORD_TXT}
    Element Should Be Visible    ${PASSWORD_TXT}
    Wait Until Element Is Visible    ${SUBMIT}
    Element Should Be Visible    ${SUBMIT}

Login With User ${username} And ${password}
    [Documentation]    This keyword is used to perform login
#    [Arguments]    ${username}    ${password}
    Wait Until Element Is Enabled    ${USERNAME_TXT}
    Input Text    ${USERNAME_TXT}    ${username}
    Wait Until Element Is Enabled    ${PASSWORD_TXT}
    Input Text    ${PASSWORD_TXT}    ${password}
    Wait Until Element Is Visible    ${SUBMIT}
    Click Button    ${SUBMIT}

Login With User
    [Documentation]    This keyword is used to perform login
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Enabled    ${USERNAME_TXT}
    Input Text    ${USERNAME_TXT}    ${username}
    Wait Until Element Is Enabled    ${PASSWORD_TXT}
    Input Text    ${PASSWORD_TXT}    ${password}
    Wait Until Element Is Visible    ${SUBMIT}
    Click Button    ${SUBMIT}
    