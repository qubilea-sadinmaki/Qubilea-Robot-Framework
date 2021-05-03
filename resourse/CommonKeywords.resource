*** Settings ***
Library   Browser    #auto_closing_level=MANUAL
Library    Collections

*** Variables ***

*** Keywords ***
Test navigation item
    [Arguments]    ${selector}    ${locator}    ${expectedURL}
    [Documentation]    Clicks an element and then verifies we go to the expected site and url
    # Log To Console    ${selector}, ${locator}, ${expectedURL}
    Browser.Scroll To    ${selector}    
    Browser.Click    ${selector}    position_x=10    position_y=10   
    Browser.Get Element    text=${locator}
    Browser.Get Url    ==    ${expectedURL}
    # Sleep    1    reason=Time to take a look

Navigate To
    [Arguments]    @{selectors}
    [Documentation]    Clicks through all items in the list, one by one 
    FOR	${selector}	IN	@{selectors}
        Browser.Click    ${selector} 
#        Sleep    2    reason=None   	
    END