*** Settings ***
Documentation    remplir les informations de la carte
Library    SeleniumLibrary
*** Variables ***
${commanderBTn}    css:[data-testid="cart-checkout-button"]


*** Keywords ***
clickCOmmander
    Click Button    ${commanderBTn}