*** Settings ***
Library    AppiumLibrary
Test Teardown  Close Application
*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    9.0.0
${DEVICE_NAME}    31ebd68a7d94
${Activity_NAME}        com.dagangan.MainActivity
${PACKAGE_NAME}     com.dagangan.mall
${APP}              /Users/DamarMustikoAji/Fun/APK/dagangan.apk
*** Keywords ***
Open Dagangan Apps
  Open Application   ${REMOTE_URL}
  ...   platformName=${PLATFORM_NAME}
  ...   platformVersion=${PLATFORM_VERSION}
  ...   deviceName=${DEVICE_NAME}
  ...   automationName=UiAutomator2
    ...    newCommandTimeout=2500
    ...    appActivity=${Activity_NAME}
    ...    appPackage=${PACKAGE_NAME}
    ...    app=${APP}
    ...    noReset=true
    ...    autoGrantPermissions=true
    ...    autoAcceptAlerts=true
*** Test Cases ***
First Test cases
    Open Dagangan Apps
    Sleep  5s
#    wait until page contains element  id=com.android.packageinstaller:id/permission_allow_button
#    Click Element    id=com.android.packageinstaller:id/permission_allow_button
#    wait until page contains element  xpath=//android.view.ViewGroup[@content-desc="Button"]
#    Click Element    xpath=//android.view.ViewGroup[@content-desc="Button"]
#    Sleep  5s
#    wait until page contains element  xpath=//android.view.ViewGroup[@content-desc="Button"]
#    Click Element    xpath=//android.view.ViewGroup[@content-desc="Button"]
#    Sleep  5s
#    wait until page contains element  xpath=//android.view.ViewGroup[@content-desc="Button"]
#    Click Element    xpath=//android.view.ViewGroup[@content-desc="Button"]
#    Sleep  5s
    wait until page contains element  class=android.widget.EditText
    Click Element    class=android.widget.EditText
    Sleep  5s
    Input Text  class=android.widget.EditText   0856123456
#    Sleep  5s
    Press Keycode    4
    Sleep  5s