*** Settings ***
Library           AppiumLibrary
#Library           FakerLibrary    locale=en_CA
Resource          ../../Resources/Android/Variables.robot
Resource          ../../Resources/Android/MainFunctions.robot
Resource          ../../Resources/Android/Locators.robot

*** Keywords ***


Input Search Product
  [Arguments]  ${locator}   ${query}
  Clear Text    ${locator}
  Input Text    ${locator}   ${query}


Submit Search
  Click Element  //android.widget.ImageView[@content-desc="Arama"]

Search Should Be Matching
  [Arguments]  ${text}
  wait until page contains element  android:id/search_src_text
  element text should be    android:id/search_src_text       ${text}

ClickPermissonMobile
    Wait Element To Be Enabled And Click    ${permissionEvetbutton}       200

LoginMobileUser
    Wait Element To Be Enabled And Click      ${accountButton}
    Wait Element To Be Enabled And Click      ${loginButton}
    Wait For Element To Be Enabled     ${inputEmail}     30 sec    0.1 sec
    Input Search Product    ${inputEmail}    ${loginEmail}
    Sleep   1s
    Wait Element To Be Enabled And Click      ${loginButton2}
    Wait For Element To Be Enabled     ${inputPassword}     60 sec    0.1 sec
    Input Search Product     ${inputPassword}    ${loginPassword}
    Sleep   1s
    Wait Element To Be Enabled And Click      ${loginButton3}









