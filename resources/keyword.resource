*** Settings ***
Documentation    fichier keyword
Library    SeleniumLibrary
*** Variables ***
${url}    https://ssid-testing-agency.github.io/Lab.qa/#/login
${browser}    chrome
*** Keywords ***
init 
    Open Browser    ${url}    ${browser}
    Set Selenium Implicit Wait    5s

fermer
    Close Browser