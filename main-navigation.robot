*** Settings ***
Resource         resourse/Init.resource
Resource         resourse/Commonkeywords.resource
Test Template    Test navigation item
Test Setup       Open Homepage
Suite Setup      Log Test Start
Suite Teardown   Log Test Complete

*** Variables ***

*** Keywords ***

*** Test Cases ***                SELECTOR          LOCATOR                       URL
# MAIN NAVIGATION
Verify services main nav          ${res.services}       ${res.services_locator}           ${res.servicesURL}
Verify company main nav           ${res.company}        ${res.company_locator}            ${res.companyURL}
Verify jobs main nav              ${res.jobs}           ${res.jobs_locator}               ${res.jobsURL}
Verify home main nav              ${res.home}           ${res.home_locator}               ${res.homeURL}

# AUXILLARY NAVIGATION
Verify services auxillary nav          ${res.services_aux_nav}       ${res.services_locator}            ${res.servicesURL}
Verify company auxillary nav           ${res.company_aux_nav}        ${res.company_locator}             ${res.companyURL}
Verify jobs auxillary nav              ${res.jobs_aux_nav}           ${res.jobs_locator}                ${res.jobsURL}
Verify home auxillary nav              ${res.home_aux_nav}           ${res.home_locator}                ${res.homeURL}
    
