*** Settings ***
Library          Browser    auto_closing_level=MANUAL    #SUITE, TEST
Library          BuiltIn
Library          resource.py

*** Variables ***
${baseURL}    https://qubilea.fi/
${endURL}     ${empty}
${lang}       fi/
${browser}    chromium
*** Keywords ***
Open Homepage
    IF    '${lang}' != 'fi/'
          ${endURL}=    Set Variable    ${lang}  
    END 
    ${r}=    Get Language    ${lang} 
    Set Suite Variable    ${res}    ${r} 
    Browser.New Browser    ${browser}    False
    Browser.New Page       ${baseURL}${endURL}

Log Test Start
    Log To Console         Start test : DEFAULT LANGUAGE:${lang} BROWSER:${browser}
    Log To Console         ==============================================================================

Log Test Complete
    Log To Console         Test complete : DEFAULT LANGUAGE:${lang} BROWSER:${browser}
    Log To Console         ==============================================================================
    
