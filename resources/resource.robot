*** Settings ***
Library  AppiumLibrary
Library  BuiltIn
Library  String
Library  OperatingSystem

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/../apps/ApiDemos-debug.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=10.0}
${ANDROID_APP_PACKAGE}        io.appium.android.apis
${ANDROID_DEVICE_NAME}        %{ANDROID_DEVICE_NAME=Pixel_5_Android10}          
*** Keywords ***

Set Local Executor
  return from keyword  http://127.0.0.1:4723/wd/hub

Open Android Test App
  [Arguments]    ${appActivity}=${EMPTY}
  ${executor}  Set Local Executor
  open application  ${executor}  automationName=${ANDROID_AUTOMATION_NAME}
  ...  app=${ANDROID_APP}  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  appPackage=${ANDROID_APP_PACKAGE}  appActivity=${appActivity}
  ...  deviceName=${ANDROID_DEVICE_NAME}

Click on Accessibility ID
    [Arguments]        ${accessibilityId}
    ${element} =	Get element by accessibility id    ${accessibilityId}
    click element        ${element}

Get element by accessibility id
    [Arguments]    ${accessibilityId}
    ${element}  get webelement  accessibility_id=${accessibilityId}
    return from keyword    ${element}