*** Settings ***
Documentation       thise suite will handle Invalid credential
Resource    ../Resource/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown       Close Browser
Test Template   Invalid Credential Template

*** Test Cases ***
Tc1     john    123456      Invalid credential
Tc2     peter   124568      Invalid credential

*** Keywords ***
Invalid Credential Template
    [Arguments]     ${username}     ${password}      ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Text    id=txtPassword     ${password}
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    expected=${expected_error}
