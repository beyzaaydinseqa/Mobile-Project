# Mobile Project
 Appium - Robot Framework Project Has Hepsiburada Cases

Project Folders Structure POM 
-----------------------------
 https://github.com/beyzaaydinseqa/Mobile-Project/assets/146703310/58614c59-4108-425a-9e9a-b261df24bb32

<img width="247" alt="image" src="https://github.com/beyzaaydinseqa/Mobile-Project/assets/146703310/58614c59-4108-425a-9e9a-b261df24bb32">

<img width="206" alt="image" src="https://github.com/beyzaaydinseqa/Mobile-Project/assets/146703310/1ea03089-e01a-4115-b602-8da82dedb950">


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

PART3:
------

Project Test Run
--------------------------------

-run appium server
appium --port 4723

-use appium plugin
 appium --use-plugins images 

Komut:
robot -t “testcaseName” Tests/TestSuites.robot 

Çoklu Komut:
robot Tests/TestSuites.robot 

Stop - kill server
---------------------------------

Open your command prompt or terminal.

Find the process ID (PID) of the Appium server running on port 4723. You can use the  netstat command on Windows to find the PID.


On Windows:

Copy code
netstat -ano | findstr :4723
Note down the PID associated with the process running on port 4724.

Once you have the PID, use the kill command to stop the Appium server. Replace <PID> with the actual PID you found.

On Windows:
taskkill /F /PID <PID>

Restart app configuration
-------------------------------

adb shell pm clear com.pozitron.hepsiburada

