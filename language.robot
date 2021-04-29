*** Settings ***
Resource         resourse/Init.resource
Resource         resourse/Commonkeywords.resource
Variables        resourse/resource.py
Test Template    Test navigation item
Suite Setup      Run Keywords    Open Homepage    Log Test Start
Suite Teardown   Log Test Complete

*** Variables ***

*** Keywords ***

*** Test Cases ***                                SELECTOR             LOCATOR                          URL
# LANGUAGE SWITCHING
Should go to services FI                          ${FI.services}       ${FI.services_locator}           ${FI.servicesURL}
Should go services EN via language change         ${FI.changeLang}     ${EN.services_locator}           ${EN.servicesURL}
Should go to company EN                           ${EN.services}       ${EN.services_locator}           ${EN.servicesURL}
Should go services FI via language change         ${EN.changeLang}     ${FI.services_locator}           ${FI.servicesURL}
    
