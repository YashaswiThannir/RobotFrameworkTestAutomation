*** Settings ***
Library  SeleniumLibrary


*** Variables ***



*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Load
    Wait Until Page Contains  Hello, Sign in
