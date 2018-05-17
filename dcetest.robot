*** Settings ***
Library           Selenium2Library

*** Test Cases ***
host_healthy
    Open Browser    https://192.168.124.145/#/dashboard    browser=firefox    remote_url=http://192.168.123.169:4444/wd/hub
    Input Text    css=input[type=\"text\"]    admin
    Input Text    css=input[type=\"password\"]    admin
    Click element    xpath=//*[@id="login"]/div/div[2]/div/div/button
    Sleep    2s
    Click element    xpath=/html/body/div[2]/div[1]/nav/div[3]/div/div/span[1]
    Sleep    2s
    ${text}    Get Text    xpath=//*[@id="app"]/div[1]/div/div[2]/div[2]/div[2]/table/tbody/tr[1]/td[5]/div[1]/div/span
    Sleep    2s
    Should Contain    ${text}   健康
    Close Browser
appadd
    Open Browser    https://192.168.124.93/#/dashboard    browser=firefox    remote_url=http://192.168.123.169:4444/wd/hub
    Input Text    css=input[type=\"text\"]    admin
    Input Text    css=input[type=\"password\"]    admin
    Click element    xpath=//*[@id="login"]/div/div[2]/div/div/button
    Sleep    1s
    Click element    xpath=//div[@id='app']/div/nav/div[4]/div/div/span
     
    Sleep    1s
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
     

appdelete
    Open Browser    https://192.168.124.93/#/dashboard    browser=firefox    remote_url=http://192.168.123.169:4444/wd/hub
    Input Text    css=input[type=\"text\"]    admin
    Input Text    css=input[type=\"password\"]    admin
    Click element    xpath=//*[@id="login"]/div/div[2]/div/div/button
    Sleep    2s
    Click element    xpath=//div[@id='app']/div/nav/div[4]/div/div/span
     
    Sleep    2s
    Click element    xpath=//div[@id='app']/div/div/div[2]/table/tbody/tr/td[4]/div/div[2]/div/button
    Sleep    2s
   Click element    xpath=//div[4]/div/ul/li[6]
    Sleep    2s
    Click element    xpath=//div[@id='app']/div/div/div[2]/div[3]/div[9]/div/div/div[3]/div/button[2]
    Sleep    5s
   
     Close Browser
