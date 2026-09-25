*** Settings ***
Documentation    Cas login avec JDD
Library    SeleniumLibrary
Library    DataDriver    ../data/jdd.csv    dialect=excel    encoding=utf-8
Resource    ../resources/keyword.resource
Resource    ../pages/pagecsv.resource
Test Setup    init
Test Teardown    Fermer
Test Template    data driven test

*** Keywords ***
data driven test
    [Arguments]    ${userr}    ${pwdd}    ${result}
    Connexion    ${userr}    ${pwdd}
    IF    "${result}"=="success"
        Location Should Contain    https://ssid-testing-agency.github.io/Lab.qa/#/catalog
    ELSE
        ${msg}=    GetMessageText
        Should Contain    ${msg}    Le nom d'utilisateur
    END

*** Test Cases ***
Login with data csv