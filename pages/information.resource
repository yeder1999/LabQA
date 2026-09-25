*** Settings ***
Documentation    page de login
Library    SeleniumLibrary
*** Variables ***
${prenom}    id:first-name
${nom}    id:last-name
${email}    id:email
${postal-code}    id:postal-code
${btnContinue}    css:[data-testid="checkout-continue"]
${btnCOnfirm}    css:[data-testid="checkout-finish"]

*** Keywords ***
remplirForm
    Input Text    ${prenom}    yedir
    Input Text    ${nom}    benamar
    Input Text    ${email}    benamar@gmail.com
    Input Text    ${postal-code}    95870
    Click Button    ${btnContinue}
clickBtnCOnfirmer
    Click Button    ${btnCOnfirm}