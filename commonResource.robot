*** Settings ***
Library    Selenium2Library

*** Variables ***
${url}=    http://xxx.com
${signupLoginButton}=    xpath=//a[normalize-space()='Signup / Login']
${inputEmail}=    xpath=//input[@data-qa='login-email']
${inputEmailValue}=    xxxx
${inputPassword}=    xpath=//input[@placeholder='Password']
${inputPasswordValue}=    xxxx
${loginButton}=    xpath=//button[normalize-space()='Login']
${tshirtName}=    men tshirt
${menuProducts}=    xpath=//a[@href='/products']
${searchBar}=    xpath=//input[@id='search_product']
${searchButton}=    xpath=//button[@id='submit_search']
${tableItem}=    xpath=//div[@class='product-image-wrapper']
${itemToAdd}=    xpath=//a[contains(text(),'Add to cart')]
${continueShoopingButton}=    xpath=//button[normalize-space()='Continue Shopping']
${menuCart}=    xpath=//a[@href='/view_cart']
${cartItem1}=    id=product-2
${cartItem2}=    id=product-1
${proceedToCheckoutButton}=    xpath=//a[normalize-space()='Proceed To Checkout']
${priceItem1}=    xpath=//p[@class='cart_total_price'][normalize-space()='Rs. 400']
${priceItem2}=    xpath=//p[@class='cart_total_price'][normalize-space()='Rs. 500']
${totalPrices}=    xpath=//p[normalize-space()='Rs. 900']