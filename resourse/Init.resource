*** Settings ***
Library   Browser
Library    BuiltIn

*** Variables ***
${baseURL}    https://qubilea.fi/
${endURL}     ${empty}
${lang}       fi/
${defaultLang}    fi/
${browser}    chromium
*** Keywords ***
Open Homepage
    IF    '${lang}' != '${defaultLang}'
          ${endURL}=    Set Variable    ${lang}  
    END 

    Browser.New Browser    ${browser}    False
    Browser.New Page       ${baseURL}${endURL}

Log Test Start
    Log To Console         Start test : LANGUAGE:${lang} BROWSER:${browser}
    Log To Console         ==============================================================================

Log Test Complete
    Log To Console         Test complete : LANGUAGE:${lang} BROWSER:${browser}
    Log To Console         ==============================================================================
