*** Settings ***
Library   Browser
Resource         resourse/Init.resource
Resource         resourse/Commonkeywords.resource
Variables        resourse/${lang}vars.py
Test Template    Test navigation item
Test Setup       Open Homepage
Suite Setup      Log Test Start
Suite Teardown   Log Test Complete

*** Variables ***

*** Keywords ***

*** Test Cases ***                SELECTOR          LOCATOR                       URL
# MAIN NAVIGATION
Verify services main nav          ${services}       ${services_locator}           ${servicesURL}
Verify company main nav           ${company}        ${company_locator}            ${companyURL}
Verify jobs main nav              ${jobs}           ${jobs_locator}               ${jobsURL}
Verify home main nav              ${home}           ${home_locator}               ${homeURL}

# AUXILLARY NAVIGATION
Verify services auxillary nav          ${services_aux_nav}       ${services_locator}            ${servicesURL}
Verify company auxillary nav           ${company_aux_nav}        ${company_locator}             ${companyURL}
Verify jobs auxillary nav              ${jobs_aux_nav}           ${jobs_locator}                ${jobsURL}
Verify home auxillary nav              ${home_aux_nav}           ${home_locator}                ${homeURL}
    
