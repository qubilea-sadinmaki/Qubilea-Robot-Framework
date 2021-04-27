*** Settings ***
Library   Browser
Library    BuiltIn

*** Variables ***
${baseURL}    https://qubilea.fi/
${endURL}     ${empty}
${lang}       fi/
${browser}    chromium
*** Keywords ***
Basic Setup
    IF    '${lang} != ${empty}'
          ${endURL}=    Set Variable    ${lang}  
    END 

    Browser.New Browser    ${browser}    False
    Browser.New Page       ${baseURL}${endURL}

Basic Suite Setup
    Log To Console         Start test : LANGUAGE:${lang} BROWSER:${browser}
    Log To Console         ==============================================================================

Basic Suite Teardown
    Log To Console         Test complete : LANGUAGE:${lang} BROWSER:${browser}
    Log To Console         ==============================================================================
