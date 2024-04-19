*** Settings ***

Documentation    Test
Resource    resource/0_step_setup.resource
Resource    resource/1_step_navigation.resource

*** Test Cases ***

Setup Webdriver
    [Tags]    local
    Webdriver Setup

Setup Webdriver Headless
    [Tags]    headless
    Webdriver Setup Headless

Navigate to Website
    [Tags]    local
    Open Demoqa site
    Verify Demoqa site
    Wait until ublock initalizing

Navigate to Website in headless
    [Tags]    headless
    Open Demoqa site
    Verify Demoqa site