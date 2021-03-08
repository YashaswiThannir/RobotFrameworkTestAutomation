*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Load
    Wait Until Page Contains  Hello, Sign in
    Input Text  id=twotabsearchtextbox  Thrustmaster Ferrari 458
    Click Button  css=#nav-search-submit-button
    Wait Until Page Contains  results for "Thrustmaster Ferrari 458"

Select Product from Search Results
    Click Link  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[2]/div/span/div/div/div[2]/div[2]/div/div[1]/div/div/div[1]/h2/a
    Wait Until Page Contains  Back to results


Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Cart subtotal (1 item)

Begin Checkout
    Click Link  Proceed to checkout (1 item)
    Page should Contain Element  class:a-spacing-small
    Element Text Should Be  class:a-spacing-small  Sign-In