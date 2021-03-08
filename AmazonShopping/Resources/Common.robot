*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close Browser

Insert Testing Data
    Log  setting up test data

Cleanup Testing Data
    Log  cleaning up test data
