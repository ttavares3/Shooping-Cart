*** Settings ***
Resource    helper${/}commonResource.robot

*** Test Cases ***
Login
    Open Browser    ${url}
    Maximize Browser Window
    Click Element    ${signupLoginButton}
    Input Text    ${inputEmail}    ${inputEmailValue}
    Input Password    ${inputPassword}    ${inputPasswordValue}
    Click Button    ${loginButton}