*** Settings *** 

Documentation    This file will take care of configuration such as broweser activities,
...    screenshot folder and keywords for automation

Library    SeleniumLibrary    screenshot_root_directory=screenshot        
Library    OperatingSystem       
Library    hello.py
          
*** Variables ***

${BROWSER NAME}    chrome
${URL}    https://www.xda-developers.com/how-to-do-everything-on-your-phone/
${SCREENSHOT}    D:\\main\\xda.png

*** Keywords ***
StartTest
    Append To Environment Variable    Path   ${EXECDIR}${/}driver${/} 
    Open Browser    browser=${BROWSER NAME}
    Maximize Browser Window
    Go To    url=${URL}    
    Set Browser Implicit Wait    10s
    
EndTest
    Close Browser
    
SearchBar
    [Arguments]    ${search}
    Sleep    3s    
    Capture Page Screenshot    ${SCREENSHOT}
    sleep    5s
    ${val}    imagefinder    ${search}            
    Log To Console    ${val}
    Sleep    3s    
    Coordinates Click    ${val}[0]    ${val}[1]
    
Input
    [Arguments]    ${text}
    Wait Until Element Is Visible    //input[@id='header_search']    30s      
    Input Text    //input[@id='header_search']      ${text}
    
ClearText
    [Arguments]    ${img}
    Capture Page Screenshot    ${SCREENSHOT}
    Sleep    3s    
    ${clear}    imagefinder    ${img}    
    Log To Console    ${clear}    
    Sleep    2s    
    Coordinates Click    ${clear}[0]    ${clear}[1]
    
CrossCanvas
    [Arguments]    ${canv}
    Sleep    2s
    ${cross}    imagefinder    ${canv}
    Log To Console    ${cross}    
    Coordinates Click    ${cross}[0]    ${cross}[1]
    
ClickProfile
    [Arguments]    ${prof}
    Sleep    3s    
    Capture Page Screenshot    ${SCREENSHOT}
    Sleep    2s    
    ${profile}    imagefinder    ${prof}
    Log To Console    ${profile}    
    Coordinates Click    ${profile}[0]    ${profile}[1]
    
Click_OnePlus_SmartPhone
    [Arguments]    ${phonename}
    Sleep    2s    
    Capture Page Screenshot    ${SCREENSHOT}
    ${op}    imagefinder    ${phonename}
    Log To Console    ${op}    
    Coordinates Click    ${op}[0]    ${op}[1]
    Sleep    10s    
    
    
