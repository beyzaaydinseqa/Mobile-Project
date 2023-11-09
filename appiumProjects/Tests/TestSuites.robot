*** Settings ***
Documentation     Android Test Cases
Library           AppiumLibrary
Suite Setup          Open Test Application
Test Setup           TestSetupActions
Test Teardown        Mobile Teardown Actions
Suite Teardown       Suite Teardown Actions
Test Timeout         60 minutes
Resource          ../Resources/Android/MainFunctions.robot
Resource          ../Resources/Android/Variables.robot
Resource          ../Resources/Android/Locators.robot
Resource          ../Facilities/Android/Facilities.robot
Library           Collections
Library           Process
Library           DateTime


*** Test Cases ***

01.Display Product Details Page And Validate the Product Name Without Login
    [Tags]  productDetailsPage
    [Documentation]    ***Description:***
    ...
    ...    Test Data: Apple Airpods Pro 2 Kılıf
    ...    Validation will be for Airpods case,the system will check "Kılıf"
    ...    So Product Name Text should contain this word
    ...    *Note*
    ...
    ...    ---
    ...    _Author:_ Beyza Nur AYDIN \ \ _Creation:_ 07/11/2023
    Sleep   3s
    Wait Element To Be Enabled And Click    ${searchInput}
    Input Search Product    ${searchInput}    ${productAirpodsKilif}
    Sleep   1s
    Wait Element To Be Enabled And Click    ${productResultListButton}
    Wait Element To Be Enabled And Click    ${firstProduct}
    Validate displayed text     ${checkProductDetailName}      ${checkProductDetailName}     ${productName}
 

02.Display All Product Customer Comments Page Without Login
    [Tags]  productDetailsPage
    [Documentation]    ***Description:***
    ...
    ...    Test Data: Apple Airpods Pro 2 Kılıf
    ...    Validation will be for Airpods case,the system will check
    ...    That all reviews page are open or not
    ...
    ...    *Note*
    ...
    ...    ---
    ...    _Author:_ Beyza Nur AYDIN \ \ _Creation:_ 07/11/2023
    Sleep   3s
    Wait Element To Be Enabled And Click    ${searchInput}
    Input Search Product    ${searchInput}    ${productAirpodsKilif}
    Sleep   1s
    Wait Element To Be Enabled And Click    ${productResultListButton}
    Wait Element To Be Enabled And Click    ${firstProduct}
    Wait Element To Be Enabled And Click    ${productDetailAllReviews}


03.Add Product to Cart Without Login
    [Tags]  productDetailsPage
    [Documentation]    ***Description:***
    ...
    ...    Test Data: Apple Airpods Pro 2 Kılıf
    ...    Validation will be for Airpods case,
    ...    the system will check the product is added to the cart
    ...
    ...    *Note*
    ...
    ...    ---
    ...    _Author:_ Beyza Nur AYDIN \ \ _Creation:_ 07/11/2023
    Sleep   3s
    Wait Element To Be Enabled And Click    ${searchInput}
    Input Search Product    ${searchInput}    ${productAirpodsKilif}
    Sleep   1s
    Wait Element To Be Enabled And Click    ${productResultListButton}
    Wait Element To Be Enabled And Click    ${firstProduct}
    Wait Element To Be Enabled And Click    ${addToCartButton}
    Validate displayed text     ${checkAddToCartText}      ${checkAddToCartText}     ${productSuccesTxt}

04.Add Product to Favorite List Without Login
    [Tags]  productDetailsPage
    [Documentation]    ***Description:***
    ...
    ...    Test Data: Apple Airpods Pro 2 Kılıf
    ...    Validation will be for Airpods case,
    ...    The system will check the product is added to Favorite List
    ...
    ...    *Note*
    ...
    ...    ---
    ...    _Author:_ Beyza Nur AYDIN \ \ _Creation:_ 07/11/2023
    Sleep   3s
    Wait Element To Be Enabled And Click    ${searchInput}
    Input Search Product    ${searchInput}    ${productAirpodsKilif}
    Sleep   1s
    Wait Element To Be Enabled And Click    ${productResultListButton}
    Wait Element To Be Enabled And Click    ${firstProduct}
    Wait Element To Be Enabled And Click    ${addFavoriteButton}
    Validate Login is Necesesary or Not for this process       ${inputEmail}


05.Displayed Compare Product List
    [Tags]  productDetailsPage
    [Documentation]    ***Description:***
    ...
    ...    Test Data: Apple Airpods Pro 2 Kılıf
    ...    Validation will be for Airpods case,
    ...    the system will check Comparing Products process
    ...
    ...    *Note*
    ...
    ...    ---
    ...    _Author:_ Beyza Nur AYDIN \ \ _Creation:_ 07/11/2023
    Sleep   3s
    Wait Element To Be Enabled And Click    ${searchInput}
    Input Search Product    ${searchInput}    ${productAirpodsKilif}
    Sleep   1s
    Wait Element To Be Enabled And Click    ${productResultListButton}
    Wait Element To Be Enabled And Click    ${firstProduct}
    Validate displayed text     ${compareListText}      ${compareListText}     ${compareListWord}

06.Compare Products
    [Tags]  productDetailsPage
    [Documentation]    ***Description:***
    ...
    ...    Test Data: Apple Airpods Pro 2 Kılıf
    ...    Validation will be for Airpods case,
    ...    the system will check Comparing Products process
    ...
    ...    *Note*
    ...
    ...    ---
    ...    _Author:_ Beyza Nur AYDIN \ \ _Creation:_ 07/11/2023
    Sleep   3s
    Wait Element To Be Enabled And Click    ${searchInput}
    Input Search Product    ${searchInput}    ${productAirpodsKilif}
    Sleep   1s
    Wait Element To Be Enabled And Click    ${productResultListButton}
    Wait Element To Be Enabled And Click    ${firstProduct}
    Wait Element To Be Enabled And Click    ${compareIconButton}
    Validate displayed text     ${compareListText}     ${compareStatusXpath}      ${compareStatus1}
    Validate Compare List Status      ${compareStatusXpath}

07.Follow Merchant Seller with Login
    [Tags]  productDetailsPage
    [Documentation]    ***Description:***
    ...
    ...    Test Data: Legocity Tatilci Karavanı
    ...    Validation will be for Legocity product,
    ...    The system will ensure that loginned user can add product to favorite
    ...
    ...    *Note*
    ...
    ...    ---
    ...    _Author:_ Beyza Nur AYDIN \ \ _Creation:_ 08/11/2023
    LoginMobileUser
    Run Keyword And Ignore Error          Wait Element To Be Enabled And Click    ${okButton3}
    Wait Element To Be Enabled And Click    ${closeMyAccountCheckXpath}
    Sleep   3s
    Wait Element To Be Enabled And Click    ${searchInput}
    Input Search Product    ${searchInput}    ${productLegocity}
    Sleep   1s
    Wait Element To Be Enabled And Click    ${legocityProductResultListButton}
    Wait Element To Be Enabled And Click    ${firstProduct}
    ${Result}=   Validate displayed text      ${followMerchantButton}     ${followedMerchantMessageXpath}     ${followedMerchantMessage}
    Run Keyword If    '${Result}' == 'PASS'   You already ${alreadyFollowing}!
    ...     ELSE       Wait Element To Be Enabled And Click    ${followMerchantButton}


08.Watch the Product Video
    [Tags]  productDetailsPage
    [Documentation]    ***Description:***
    ...
    ...    Test Data: Legocity Tatilci Karavanı
    ...    Validation will be for Legocity product,
    ...    The system will ensure that logged user can watch the video
    ...
    ...    *Note*
    ...
    ...    ---
    ...    _Author:_ Beyza Nur AYDIN \ \ _Creation:_ 08/11/2023
    LoginMobileUser
    Sleep     3s
    Run Keyword And Ignore Error          Wait Element To Be Enabled And Click    ${okButton3}
    Wait Element To Be Enabled And Click    ${closeMyAccountCheckXpath}
    Wait Element To Be Enabled And Click    ${searchInput}
    Sleep   1s
    Input Search Product    ${searchInput}    ${productLegocity}
    Sleep   1s
    Wait Element To Be Enabled And Click    ${legocityProductResultListButton}
    Wait Element To Be Enabled And Click    ${firstProduct}
    Wait Element To Be Enabled And Click    ${watchVideoButton}









