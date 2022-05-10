*** Settings ***
Documentation       thise suite will handle valid credential
Resource    ../Resource/CommonFunctionality.resource
Test Setup      Launch Browser
Test Teardown       Close Browser
Test Template   valid Credential Template
*** Test Cases ***
Tc1     Admin    admin123      My Info
Tc2     Admin   admin      welcome

*** Keywords ***
valid Credential Template
    [Arguments]     ${username}     ${password}      ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Text    id=txtPassword     ${password}
    Click Element    id=btnLogin
    Page Should Contain    ${expected_error}