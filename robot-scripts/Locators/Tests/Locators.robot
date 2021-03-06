*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Should be able to search for product
    Open Browser  http://www.amazon.com  ie
    #Click Image  Comfy shoes
    Sleep  3s
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Sleep  3s
    Click Button  css=#nav-search-submit-button
    Click Link  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[4]/div/span/div/div/div[2]/h2/a

*** Keywords ***
