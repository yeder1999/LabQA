*** Settings ***
Documentation    page de login
Library    SeleniumLibrary
*** Variables ***
${header}    css:.text-xl.font-medium.text-fg
${vetementBTN}    css:[data-testid="sidebar-category-clothing"]
${addFavory}    css:[data-testid="wishlist-btn-sauce-bolt-shirt"]
${wishlistcount}    css:[data-testid="wishlist-count"]
${btnLogout}    css:[data-testid="logout-button"]

*** Keywords ***
getTextHeader
    ${text}=    Get Text    ${header}
    RETURN    ${text} 
clickSurVetement
    Click Element    ${vetementBTN}   
clickSurAddFavory
    Click Element    ${addFavory}
getTxtCartCount
    ${msg}    Get Text    ${wishlistcount}
    RETURN    ${msg}
clickWitchListCount
    Click Element    ${wishlistcount}
clickLogOUt
    Click Element    ${btnLogout}
    