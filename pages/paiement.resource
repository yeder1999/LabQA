*** Settings ***
Documentation    page de login
Library    SeleniumLibrary
*** Variables ***
${numcard}    id:card-number
${card-expiry}    id:card-expiry
${card-cvc}    id:card-cvc
${card-name}    id:card-name
${payerBTN}    css:[data-testid="payment-submit"]
${msgConf}    css:[data-testid="confirmation-title"]
${btnretour}    css:[data-testid="confirmation-home"]


*** Keywords ***
remplirFormPaimenet
    Input Text    ${numcard}    4242 4242 4242 4242
    Input Text    ${card-expiry}    12/29
    Input Text    ${card-cvc}    134
    Input Text    ${card-name}    77150
    Click Button    ${payerBTN}
getmsgCOnf
    ${msg}    Get Text    ${msgConf}
    RETURN    ${msg}
clickBTnRetour
    Wait Until Element Is Visible    ${btnretour}    10s    
    Click Element    ${btnretour}