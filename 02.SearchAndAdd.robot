*** Settings ***
Resource    helper${/}commonResource.robot 


*** Test Cases ***
Searching and Adding items to the Cart
    Click Element    ${menuProducts}
    Element Should Be Visible    ${searchBar}
    Click Element    ${searchBar}
    Input Text    ${searchBar}    ${tshirtName}
    Click Button    ${searchButton}
    Element Should Be Visible    ${tableItem}
    Click Element    ${itemToAdd}
    Click Button    ${continueShoopingButton}
    Click Element    ${searchBar}
    Clear Element Text    ${searchBar}
    Click Button    ${searchButton}
    Click Element    ${itemToAdd}

*** Keywords ***
Verify no search results
    [Arguments]    ${searchBar}
    ${searchResults}=    Input Text    ${searchBar}    text=absd
    Should Be Empty    ${tableItem}