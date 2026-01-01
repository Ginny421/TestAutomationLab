*** Settings ***
Documentation     Valid register test
Resource          resource.robot

*** Test Cases ***
Valid Register
    Open Browser To Register Page
    Wait Until Element Is Visible    id=firstname    5s
    Input Firstname    Somsri
    Input Lastname     Sodsai
    Input Organization    CS KKU
    Input Email        somsri@kkumail.com
    Submit Register

    Wait Until Keyword Succeeds    5s    1s    Title Should Be    Success
    Element Text Should Be    xpath=//h1    Thank you for registering with us.
    Element Text Should Be    xpath=//h2    We will send a confirmation to your email soon.

    Capture Page Screenshot
    [Teardown]    Close Browser

