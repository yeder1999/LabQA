*** Settings ***
Documentation    page de wishlist
Library    SeleniumLibrary
*** Variables ***
${choisirTailleBtn}    css:[data-testid="wishlist-choose-size-sauce-bolt-shirt"]
${chosirTailleM}    css:[data-testid="size-btn-M"]
${ajoutPanierBTN}    css:[data-testid="product-detail-add-to-cart"]
${cartCount}    css:[data-testid="cart-count"]


*** Keywords ***

clickChoisirTaille
    Click Element    ${choisirTailleBtn}
clickSurM
    Click Element    ${chosirTailleM}
clickAjoutPanier
    Click Element    ${ajoutPanierBTN} 
getTExtPanier
    ${msg}=    Get Text    ${cartCount}
    RETURN    ${msg}
ClickPanier
    Click Element    ${cartCount} 