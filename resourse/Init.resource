*** Settings ***
Library          Browser    auto_closing_level=TEST    run_on_failure=None    
Library          BuiltIn
Library          resource.py

*** Variables ***
${baseURL}    https://qubilea.fi/
${endURL}     ${empty}
${lang}       fi/
${browser}    chromium
${headless}    False
*** Keywords ***
Open Homepage  
    IF  '${lang}' != 'fi/'
        ${endURL}=    Set Variable    ${lang}  
    END 

    ${r}=    Get Language    ${lang} 
    Set Suite Variable    ${res}    ${r} 
    Browser.New Browser    ${browser}    ${headless}
    Browser.New Page       ${baseURL}${endURL}

Change Language
    ${endURL}=    Set Variable    ${lang}

Log Test Start
    Log To Console         Start test : DEFAULT LANGUAGE:${lang} BROWSER:${browser}
    Log To Console         ==============================================================================

Log Test Complete
    Log To Console         Test complete : DEFAULT LANGUAGE:${lang} BROWSER:${browser}
    Log To Console         ==============================================================================
    
