*** Settings ***
Documentation    Pom de la page connexion
Library    SeleniumLibrary

*** Variables ***
${username}    id:username
${password}    id:password
${button_login}    css:[data-testid="login-submit"]
${error}    css:[data-testid="login-error"]

*** Keywords ***
EnterUsername
    [Arguments]    ${user}
    Input Text    ${username}    ${user}
EnterPassword
    [Arguments]    ${pwd}
    Input Text    ${password}    ${pwd}
ClickLogin
    Click Button    ${button_login}
Connexion
    [Arguments]    ${userr}    ${pwdd}
    EnterUsername    ${userr}    
    EnterPassword    ${pwdd}
    ClickLogin
GetMessageText
    ${msg}=    Get Text    ${error}
    RETURN    ${msg}