*** Settings ***
Library           Collections
Library           String
Library           AppiumLibrary
Resource          ../../Resources/Android/Variables.robot
Resource          ../../Facilities/Android/Facilities.robot
Library           DateTime


*** Keywords ***



#####---------------------------------------------------------------



Mobile Start Actions
    Run Keyword And Ignore Error   Close All Applications

Suite Teardown Actions
    Sleep   2s
    Activate Application      ${APP_PACKAGE}
    Sleep   2s
    Run Keyword And Ignore Error   Close Application
    Run Keyword And Ignore Error   Close All Applications

Mobile Teardown Actions
     Sleep   2s
     Run Keyword And Ignore Error    Quit Application



Open Test Application
    Close All Applications
    Sleep   3s
    Open Application   ${REMOTE_URL}     automationName=${ANDROID_AUTOMATION_NAME}
    ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
    ...  app=${ANDROID_APP}     autoGrantPermission=True
    Sleep   3s
    ${status}    ${value}=    Run Keyword And Ignore Error    ClickPermissonMobile



TestSetupActions
    Activate Application     ${APP_PACKAGE}


Wait For Element To Be Enabled
    [Arguments]    ${element}    ${timeout}=15 sec    ${interval}=0.1 sec
    Wait Until Keyword Succeeds    ${timeout}    ${interval}    Element Should Be Enabled    ${element}

ConsoleLog
    [Arguments]    ${text}
    Log To Console    \n${text}


Wait Element To Be Enabled And Click
    [Arguments]    ${element}    ${timeout}=60 sec    ${interval}=0.1 sec
    Wait For Element To Be Enabled    ${element}    ${timeout}    ${interval}
    Click Element    ${element}

Wait Element To Be Enabled Scroll and Click
    [Arguments]    ${element}    ${timeout}=60 sec    ${interval}=0.1 sec
    Wait For Element To Be Enabled    ${element}    ${timeout}    ${interval}
    Scroll Element Into View    ${element}
    Click Element    ${element}


Validate displayed text
    [Arguments]    ${element}     ${original_text_locator}      ${target_word}
    [Timeout]      120 seconds
    Wait Until Page Contains Element    ${element}
    ${text}=    Get Text    ${element}
    ConsoleLog    ${text}
    ${status}    ${value}=    Run Keyword And Ignore Error    Element Should Contain Text    ${original_text_locator}    ${target_word}
    ${Result}=     Run Keyword If    '${status}'=='PASS'    log to console    \nValidation is successfull!
    ...    ELSE     FAIL  ConsoleLog    ${value},  Validation is unsuccessfull!!   Capture Page Screenshot and Get Text Information     ${element}
    Set Global Variable    ${Result} 
    ConsoleLog    ${Result}

Validate Login is Necesesary or Not for this process
    [Arguments]    ${element}
    [Timeout]      120 seconds
    ${status}    ${value}=    Run Keyword And Ignore Error     Wait For Element To Be Enabled     ${inputEmail}     30 sec    0.1 sec
    Run Keyword If    '${status}'=='PASS'    log to console    \n You need to login or sign up for this process!!
    ...     ELSE   log to console    \n You are already loginned

Validate Compare List Status
    [Arguments]    ${element}
    [Timeout]      120 seconds
    Wait Until Element Is Visible    ${element}
    ${compareStatus}=    Get Text    ${element}
    ConsoleLog     ${compareStatus}
    Check new product is neccessary to add to compare list


Check new product is neccessary to add to compare list
    ${status}    ${value}=    Run Keyword And Ignore Error    Element Should Be Visible    ${compareButton}
    Run Keyword If    '${status}'=='PASS'     Wait Element To Be Enabled And Click    ${compareButton}
    ...    ELSE      Log    ${compareIsNeeded}    Add product to Compare

Add product to Compare
    Sleep  2s
    Tap    ${None]    390   600
    Wait Element To Be Enabled And Click    ${leftBackButton}
    Wait Element To Be Enabled And Click    ${secondProduct}
    log to console    \n Choosen new product to compare
    Validate displayed text      ${checkProductDetailName}      ${checkProductDetailName}     ${productName}



Keyword To Run If False
    Log    Condition is False
    # Add steps to execute when the condition is false

Capture Page Screenshot and Get Text Information
    [Arguments]    ${element}
    Capture Page Screenshot
    ${text}=    Get Text    ${element}
    Log To Console    ${text}