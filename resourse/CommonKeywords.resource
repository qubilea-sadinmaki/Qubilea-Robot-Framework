*** Settings ***
Library   Browser

*** Variables ***

*** Keywords ***
Test navigation item
    [Arguments]    ${selector}    ${locator}    ${expectedURL}
    # Log To Console    ${selector}, ${locator}, ${expectedURL}
    Browser.Scroll To    ${selector}    
    Browser.Click    ${selector}    position_x=10    position_y=10   
    Browser.Get Element    text=${locator}
    Browser.Get Url    ==    ${expectedURL}
    # Sleep    1    reason=Time to take a look