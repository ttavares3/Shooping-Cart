*** Settings ***
Resource    helper${/}commonResource.robot
Test Teardown    Close Browser

*** Test Cases ***
Cart prices review
    Wait Until Element Is Visible    ${continueShoopingButton}
    Click Button    ${continueShoopingButton}
    Click Element    ${menuCart}
    Element Should Be Visible    ${cartItem1}
    Element Should Be Visible    ${cartItem2}
    Click Element    ${proceedToCheckoutButton}
    ${price1}=    Get Text    ${priceItem1}
    ${price1}    Replace Variables    text=400 
    ${price2}=   Get Text    ${priceItem2}
    ${price2}    Replace Variables    text=500 
    ${totalPrice}=   Get Text    ${totalPrices}
    ${totalPrice}    Replace Variables    text=900
    ${totalPrice}=    Convert To Integer    ${totalPrice}
    ${sum}=    Evaluate    ${price1} + ${price2}
    Should Be Equal    ${sum}   ${totalPrice}

*** Keywords ***
Verify items inside cart
    [Arguments]    ${cartItem1}    ${cartItem2}
    ${cartResults1}=    Get Text    ${cartItem1}    
    ${cartResults2}=    Get Text    ${cartItem2}
    Should Not Be Equal As Strings    first=Rs.400    second=Rs.500