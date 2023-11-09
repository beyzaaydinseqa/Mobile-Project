*** Variables ***

#----------------------------------------
# **!!Login Locators

${accountButton}          xpath=//android.widget.ImageView[@content-desc="Hesabım"] | //android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/navigation_bar_item_small_label_view" and @text="Hesabım"]
${loginButton}            xpath=//android.widget.Button[@resource-id="com.pozitron.hepsiburada:id/button" and @text="Giriş yap"]
${inputEmail}             xpath=//android.widget.EditText[@resource-id="txtUserName"]
${inputPassword}          xpath=//android.widget.EditText[@resource-id="txtPassword"]

${loginButton2}          xpath=//android.widget.Button[@resource-id="btnLogin"]
${loginButton3}          xpath=//android.widget.Button[@resource-id="btnEmailSelect"]
${welcomeMessageXpath}          xpath=//android.widget.TextView[@resource-id="android:id/message"]
${okButton3}          xpath=//android.widget.Button[@resource-id="android:id/button1"]

${myAccountCheckXpath}          xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/tvToolbarTitle"]
${closeMyAccountCheckXpath}          xpath=//android.widget.ImageView[@content-desc="Hesabım ekranını kapat"]

#${parametersxls}    ${CURDIR}\\parameters.xlsx



#----------------------------------------
# **!!MainActivity Locators

${permissionEvetbutton}          xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

${searchInput}       xpath=//android.widget.EditText[@resource-id="com.pozitron.hepsiburada:id/etSearchBox"]
${productResultListButton}       xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/search_suggestion_title" and @text="Apple Airpods Pro 2 kulaklık kılıfı"]
${airpodsCasePoductResultListButton}       xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/search_suggestion_title" and @text="Apple Airpods Pro 2 kulaklık kılıfı"]
${legocityProductResultListButton}       xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/search_suggestion_title" and @text="Legocity Tatilci Karavanı"]


#----------------------------------------
# **!!Products Locators

${firstProduct}       xpath=(//android.widget.ImageView[@resource-id="com.pozitron.hepsiburada:id/ivProduct"])[1]
${secondProduct}       xpath=(//android.widget.ImageView[@resource-id="com.pozitron.hepsiburada:id/ivProduct"])[3]
#----------------------------------------

# **!!ProductDetails Locators

${getProductAirpodsKilif}       xpath=(//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/tvProductName"])[1]
${productDetailAllReviews}       xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/tvAllReviews"] | //android.widget.TextView[@text="İlk sen değerlendir"]
${checkProductDetailName}       xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/tvProductName"]
${addFavoriteButton}       xpath=//android.widget.ImageView[@content-desc="favoriye ekle"]
${addToCartButton}       xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/product_detail_add_to_cart_text"]
${addToCartId}      com.pozitron.hepsiburada:id/product_detail_add_to_cart_text
${checkAddToCartText}       xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/productSuccesTxt"]
${compareIconButton}       xpath=//android.widget.ImageView[@content-desc="Karşılaştır"]
${compareButton2}       com.pozitron.hepsiburada:id/compareIcon
${compareListText}       xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/compareTitleTxt"]
${checkIsLoginNeededButton}     xpath=//android.widget.TextView[@text="Giriş yap"]
${compareStatusXpath}     xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/compareStatusTV"]
${compareInfoXpath}     xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/compareInfoTxt"]
${compareButton}     xpath=${compareButton}     xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/compareTxt"]
${leftBackButton}     xpath=//android.widget.Button[@resource-id="com.pozitron.hepsiburada:id/leftIcon"]
${discardFromFavXpath}        xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/txtContent" and @text="Beğendiklerim'den çıkarıldı. Ürünü diğer listelerin için düzenleyebilirsin."]
${addToFavXpath}        xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/txtContent" and @text="Beğendiklerim'e eklendi. Ürünü diğer listelerin için düzenleyebilirsin."]
${prodyctDetailPriceXpath}        xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/tvPrice"]
${addToFavID}        com.pozitron.hepsiburada:id/tvPrice
${watchVideoButton}        xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/btnVideoPlay"]
${resourceIdVideoOpened}             com.pozitron.hepsiburada:id/exo_video_player
${checkVideoOpened}        xpath=//android.widget.FrameLayout[@resource-id="com.pozitron.hepsiburada:id/exo_subtitles"]
${followMerchantButton}        xpath=//android.widget.Button[@resource-id="com.pozitron.hepsiburada:id/btnFollow"]
${followedMerchantMessageXpath}        xpath=//android.widget.TextView[@resource-id="com.pozitron.hepsiburada:id/tvTitle"]
${continueShoppingButton}        xpath=//android.widget.Button[@resource-id="com.pozitron.hepsiburada:id/btnContinue"]
























































