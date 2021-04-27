*** Settings ***
Library   Browser
Resource         resourse/Common.resource
Variables        resourse/${lang}selectors.py
Test Template    Test main navigation item
Test Setup       Basic Setup
Suite Setup      Basic Suite Setup
Suite Teardown    Basic Suite Teardown

*** Variables ***

*** Keywords ***
Test main navigation item
    [Arguments]    ${selector}    ${locator}    ${expectedURL}
    # Log To Console    ${selector}, ${locator}, ${expectedURL}
    Browser.Get Element    ${selector}
    Browser.Scroll To    ${selector}    
    Browser.Click    ${selector}    position_x=10    position_y=10   
    Browser.Get Element    text=${locator}
    Browser.Get Url    ==    ${expectedURL}
    # Sleep    1    reason=Time to take a look

*** Test Cases ***                SELECTOR          LOCATOR                       URL
Verify services main nav          ${services}       ${services_locator}           ${servicesURL}
Verify company main nav           ${company}        ${company_locator}            ${companyURL}
Verify jobs main nav              ${jobs}           ${jobs_locator}               ${jobsURL}
Verify home main nav              ${home}           ${home_locator}               ${homeURL}

# AUXILLARY NAVIRATION
Verify services auxillary nav          ${services_aux_nav}       ${services_locator}            ${servicesURL}
Verify company auxillary nav           ${company_aux_nav}        ${company_locator}             ${companyURL}
Verify jobs auxillary nav              ${jobs_aux_nav}           ${jobs_locator}                ${jobsURL}
Verify home auxillary nav              ${home_aux_nav}           ${home_locator}                ${homeURL}

# Verify switch lang                ${en}             OUR TESTING SERVICE
    
