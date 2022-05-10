*** Settings ***
Documentation       thise suite will handle valid credential

Resource    ../Resource/CommonFunctionality.resource

Library     DataDriver      file=../test_data/orange_data.xlsx      sheet_name=valid Credential

Test Setup      Launch Browser
Test Teardown       Close Browser
Test Template   valid Credential Template


*** Test Cases ***
Tc1

*** Keywords ***
valid Credential Template
    [Arguments]     ${username}     ${password}      ${expected_value}
    Input Text    id=txtUsername    ${username}
    Input Text    id=txtPassword     ${password}
    Click Element    id=btnLogin
    Page Should Contain    ${expected_value}