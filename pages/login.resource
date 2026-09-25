*** Settings ***
Documentation    page de login
Library    SeleniumLibrary
*** Variables ***
${user}    id:username
${pwd}    id:password
${btn}    css:[data-testid="login-submit"]
*** Keywords ***
#####connexion avec utilisateur existant
connect
        
    Input Text    ${user}    jean_dupont
    Input Text    ${pwd}    Baguette42!
    Click Button    ${btn}