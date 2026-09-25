*** Settings ***
Documentation    page de login
Library    SeleniumLibrary
*** Variables ***
${commanderBTn}    css:[data-testid="cart-checkout-button"]


*** Keywords ***
clickCOmmander
    Click Button    ${commanderBTn}