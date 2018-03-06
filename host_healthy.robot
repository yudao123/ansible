*** Settings ***
Library           Selenium2Library

*** Test Cases ***
host_healthy
    Open Browser    https://192.168.123.170/#/dashboard    browser=firefox    remote_url=http://192.168.123.169:4444/wd/hub
    Input Text    css=input[type=\"text\"]    admin
    Input Text    css=input[type=\"password\"]    admin
    Click element    xpath=//*[@id="login"]/div/div[2]/div/div/button
    Sleep    2s
    Click element    xpath=//*[@id="app"]/div[1]/nav/div[7]/div/div/span[1]
    ${text}    Get Text    xpath=//*[@id="app"]/div[1]/div/div[2]/div[2]/div[2]/table/tbody/tr[1]/td[5]/div[1]/div/span
    Sleep    2s
    Should Contain    ${text}   健康
    Close Browser
