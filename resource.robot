*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${REGISTER URL}   http://localhost:7272/lab4/Registration.html
${SUCCESS URL}    http://localhost:7272/lab4/Success.html

*** Keywords ***
Open Browser To Register Page
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Keyword Succeeds    5s    1s    Title Should Be    Registration

Input Firstname
    [Arguments]    ${firstname}
    Input Text    id=firstname    ${firstname}

Input Lastname
    [Arguments]    ${lastname}
    Input Text    id=lastname    ${lastname}

Input Organization
    [Arguments]    ${organization}
    Input Text    id=organization    ${organization}

Input Email
    [Arguments]    ${email}
    Input Text    id=email    ${email}

Input Phone
    [Arguments]    ${phone}
    Input Text    id=phone    ${phone}

Submit Register
    Click Button    id=registerButton

Element Text Success Should Be
    [Arguments]    ${text}
    Element Text Should Be    xpath=//h1    ${text}

Element Text Thanks Should Be
    [Arguments]    ${text}
    Element Text Should Be    xpath=//p    ${text}

Close Browser
    Close All Browsers