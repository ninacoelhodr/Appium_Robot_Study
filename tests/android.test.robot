*** Settings ***
Documentation  Android Basic Interactions
Resource  ../resources/resource.robot
Test Teardown  Close Application

*** Test Cases ***
Should send keys to search box and then check the value
  Open Android Test App  io.appium.android.apis.ApiDemos
  Click on Accessibility ID    App   

Should click a button that opens an alert and then dismisses it
  Open Android Test App  .app.AlertDialogSamples
  click element  two_buttons
  wait until page contains element  android:id/alertTitle
  element should contain text  android:id/alertTitle  Lorem ipsum dolor sit aie consectetur adipiscing
  ${close_dialog_button}  get webelement  android:id/button1
  click element  ${close_dialog_button}
