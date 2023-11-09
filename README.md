# Mobile Project
 Appium - Robot Framework Project Has Hepsiburada Cases

Project Folders Structure POM 
-----------------------------
 https://github.com/beyzaaydinseqa/Mobile-Project/assets/146703310/58614c59-4108-425a-9e9a-b261df24bb32

<img width="247" alt="image" src="https://github.com/beyzaaydinseqa/Mobile-Project/assets/146703310/58614c59-4108-425a-9e9a-b261df24bb32">

Project Setup
-------------------------------
pART 1:
-------

python 3.11.6 setup

pip list check

pip install robotframework

pip install robotframework-seleniumlibrary

pip install selenium

pip install robotframework-appiumlibrary

pip install robotframework-faker
This module allows easy use of Faker’s random test data generation in Robot Framework.

Visual Studio ide Plugin 

robotframework language server plugin
--------------------------------------------------------------------
PART 2:
-------

Node js Setup
------------------------

npm install --location=global appium

appium --base-path=/wd/hub

appium driver install uiautomator2

appium driver install xcuitest@4.12.2

npm install --location=global appium --driver=xcuitest,uiautomator2

appium --driver-xcuitest-webdriveragent-port=5000

appium driver list --updates

appium --version

appium plugin install images

Project Test Run
--------------------------------

Komut:
robot -t “testcaseName” Tests/TestSuites.robot 

Çoklu Komut:
robot Tests/TestSuites.robot 
