*** Settings ***
Documentation    Basic tests for Qubilea website
Library          Collections
Resource         ../resourse/Init.resource
Resource         ../resourse/Commonkeywords.resource
Suite Setup      Run Keywords    Open Homepage    Log Test Start
Suite Teardown   Log Test Complete
Force Tags       FI    EN

*** Variables ***

*** Keywords ***

*** Test Cases ***                
Verify All Contact Info                   
    Test navigation item    ${res.all_contact_info}   JANNE LEPISTÖ     ${res.companyURL}

Verify has contact email
    Browser.Get Element    //a[@href='mailto:contact@qubilea.fi']

Verify phonenumber
    [Tags]    phonenumber
    @{elements}    Browser.Get Elements    ${res.phone}
    Length Should Be    ${elements}    2
    
