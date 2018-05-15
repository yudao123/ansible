*** Settings ***
Library           Selenium2Library

*** Test Cases ***
host_healthy
    Open Browser    https://192.168.124.93/#/dashboard    browser=firefox    remote_url=http://192.168.123.169:4444/wd/hub
    Input Text    css=input[type=\"text\"]    admin
    Input Text    css=input[type=\"password\"]    admin
    Click element    xpath=//*[@id="login"]/div/div[2]/div/div/button
    Sleep    1s
    Click element    xpath=//div[@id='app']/div/nav/div[4]/div/div/span
     
    Sleep    4s
    Click element    xpath=//div[@id='app']/div/div/div[2]/div/button
    Sleep    1s
    Click element    xpath=//div[@id='app']/div/div/div[2]/div[4]/div/div/div[2]/div/div/div[2]/div/div/div/div[2]
    Sleep    1s
    Click element    xpath=//div[@id='app']/div/div/div[2]/div[4]/div/div/div[3]/div/button
    Click element    xpath=//div[@id='app']/div/div/div[2]/div/div[2]/div/div/div[2]/div[2]/div/div/div[17]/div/div/div/div[2]/div[3]
    Click element    xpath=//div[@id='app']/div/div/div[2]/div/div[2]/div/div[2]/button
    Sleep    1s
    
     Click element    xpath=/html/body/div[2]/div[1]/div/div[2]/div/div[2]/div[2]/div[3]/button[2]
     Sleep    1s
      Click element    xpath=/html/body/div[2]/div[1]/div/div[2]/div/div[2]/div[3]/div[2]/button[2]
      Sleep    10s
     Close Browser
