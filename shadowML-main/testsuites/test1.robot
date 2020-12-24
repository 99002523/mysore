*** Settings ***
Documentation    This file contains test cases to validate the automation by template matching methods

Resource    ../resource/common.resource

Test Setup    StartTest
Test Teardown    EndTest

*** Test Cases ***
Test1
    
    SearchBar    search 
     
    Input    Micromax canvas xpress 2
    
    ClearText    clear
    
    CrossCanvas    cross
    
    ClickProfile    profile
    
    CrossCanvas    cross
    
    Click_OnePlus_SmartPhone    oneplus
            


    
     
