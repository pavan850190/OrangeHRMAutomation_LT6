*** Settings ***
Documentation       thise file will keep the configuration details

Library     SeleniumLibrary
Library     OperatingSystem
Library    Collections

*** Variables ***
${BROWSER}      chrome
${URL}      https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Launch Browser
    Append To Environment Variable    Path    ${EXECDIR}${/}driver
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}${/}screanshots
    Go To    url=${URL}
