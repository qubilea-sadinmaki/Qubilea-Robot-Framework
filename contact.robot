*** Settings ***
Library          Browser
Library          Collections
Resource         resourse/Init.resource
Resource         resourse/Commonkeywords.resource
Variables        resourse/${lang}vars.py

Suite Setup      Run Keywords    Open Homepage    Log Test Start
Suite Teardown   Log Test Complete

*** Variables ***

*** Keywords ***

*** Test Cases ***                
Verify All Contact Info                   
    Test navigation item    ${all_contact_info}   JANNE LEPISTÖ     ${companyURL}

Verify has contact email
    Browser.Get Element    //a[@href='mailto:contact@qubilea.fi']

Verify phonenumber
    @{elements}    Browser.Get Elements    //a[@href='tel:050 487 3265']
    Length Should Be    ${elements}    2
# Verify switch lang                ${en}             OUR TESTING SERVICE
    
