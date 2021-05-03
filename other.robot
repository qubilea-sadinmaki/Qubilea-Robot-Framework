*** Settings ***
Documentation    Basic tests for Qubilea website. 
Library          Collections
Resource         resourse/Init.resource
Resource         resourse/Commonkeywords.resource
Library          Browser

Suite Setup      Run Keywords    Open Homepage    Log Test Start
Suite Teardown   Log Test Complete

*** Variables ***

*** Keywords ***

*** Test Cases ***                
Navigate from home to
    [Documentation]   Verifies image-gallery works as expected.
    Navigate To    ${res.jobs}
    ...            a[href="https://qubilea.fi/panssarivaunulla-pornaisissa/"] 
    ...            div.fusion-gallery-image

    Browser.Get Url    ==    https://qubilea.fi/panssarivaunulla-pornaisissa/

    @{thumbnails}=    Browser.Get Elements    div.ilightbox-thumbnail

    Navigate To    @{thumbnails}    
    Browser.Get Element   div.ilightbox-container > img[src="https://qubilea.fi/wp-content/uploads/2020/06/26f2399e-b56a-4fa5-9904-02e5df422034-scaled.jpg"] 


    


    
    
