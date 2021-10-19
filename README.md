Emulator Android
===========================

Install Android Studio
-----
https://developer.android.com/studio/install

Create and manage virtual devices
-----
https://developer.android.com/studio/run/managing-avds

Start the emulator from the command line 
-----
`emulator -list-avds`

`emulator -avd avd_name [ {-option [value]} … ]`

Or

`emulator @avd_name [ {-option [value]} … ]`

https://developer.android.com/studio/run/emulator-commandline


Appium
===========================
Setup
-----

`npm install`

Run appium
--------- 

`appium`

Robot Framework
===========================

Setup
-----
`pip install -r requirements.txt`

Run Tests
---------
Test cases are located in the ``tests`` folder. They can be
executed using the ``robot`` command::

    robot  tests/*.test.robot

You can also run an iOS or Android case file/test::

    robot tests/android_basic_interactions.test.robot
    robot --test "Should find elements by ID" tests/android_*.test.robot

Further Examples on how to prepare environment and run
can be found at:

 - [Robot Framework Appium Sample](https://github.com/serhatbolsu/robotframework-appium-sample)

Generated Results
-----------------
After running tests you will get report and log in HTML format. Example
files are also visible online in case you are not interested in running
the sample yourself:

- [report.html](https://serhatbolsu.github.io/robotframework-appium-sample/docs/report.html)
- [log.html](https://serhatbolsu.github.io/robotframework-appium-sample/docs/log.html)