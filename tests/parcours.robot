*** Settings ***
Documentation    test e2e
Library    SeleniumLibrary
Resource    ../resources/keyword.resource
Resource    ../pages/list.resource
Resource    ../pages/login.resource
Resource    ../pages/paiement.resource
Resource    ../pages/cart.resource
Resource    ../pages/information.resource
Resource    ../pages/catalog.resource
Test Setup    init
Test Teardown    fermer
*** Test Cases ***
parcourscomplet
    Connect
    ${textHEader}=    getTextHeader
    Should Contain    ${textHEader}    Tous les produit
    clickSurVetement
    Location Should Contain    category=clothing
    clickSurAddFavory
    ${msgCount}=    getTxtCartCount
    Should Contain    ${msgCount}    1
    clickWitchListCount
    Location Should Contain    wishlist
    clickChoisirTaille
    clickSurM
    clickAjoutPanier
    ${msg}=    getTExtPanier
    Should Contain    ${msg}    1
    ClickPanier
    clickCOmmander
    Location Should Contain    checkout/info
    remplirForm
    Location Should Contain    checkout/review
    clickBtnCOnfirmer
    Location Should Contain    checkout/payment
    remplirFormPaimenet
    ${messageconf}=    getmsgCOnf
    Should Contain    ${messageconf}    Commande confirmée !
    clickBTnRetour
    Location Should Contain    catalog
    clickLogOUt
    Location Should Contain    login