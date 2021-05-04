*** Settings ***
Documentation    Basic tests for Qubilea website. 
Library          Collections
Resource         resourse/Init.resource
Resource         resourse/Commonkeywords.resource
Library          Browser
Test Setup       Open Homepage
Suite Setup      Log Test Start
Suite Teardown   Log Test Complete

*** Variables ***

*** Keywords ***
Verify Story
    [Arguments]    ${url}    ${last_img_src}
    [Documentation]   Verifies story and image-gallery works as expected.
    Navigate To    ${res.jobs}
    ...            a[href='${url}'] 
    ...            div.fusion-gallery-image

    Browser.Get Url    ==    ${url}

    @{thumbnails}=    Browser.Get Elements    div.ilightbox-thumbnail

    Navigate To    @{thumbnails}    
    Browser.Get Element   div.ilightbox-container > img[src='${last_img_src}'] 
    Browser.Click    a.ilightbox-close

*** Test Cases ***
Verify biking story
    Verify Story    https://qubilea.fi/pyoraretkeilya-nuuksiossa/    
    ...             https://qubilea.fi/wp-content/uploads/2019/08/img_20190823_093805-scaled.jpg

Verify fishing story
    Verify Story    https://qubilea.fi/kuhan-kalastimme/    
    ...             https://qubilea.fi/wp-content/uploads/2020/08/unadjustednonraw_thumb_3c.jpg

Verify panzer story
    Verify Story    https://qubilea.fi/panssarivaunulla-pornaisissa/    
    ...             https://qubilea.fi/wp-content/uploads/2020/06/26f2399e-b56a-4fa5-9904-02e5df422034-scaled.jpg


    


    
    
