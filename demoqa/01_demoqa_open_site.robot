*** Settings ***

Documentation    Test
Resource    resource/0_step_setup.resource
Resource    resource/1_step_navigation.resource

*** Test Cases ***

Setup Webdriver
    [Tags]    browser
    Webdriver Setup

Setup Webdriver Headless
    [Tags]    headless
    Webdriver Setup Headless

Navigate to Website
    [Tags]    browser
    Open Demoqa site
    Verify Demoqa site
    Wait until ublock initializing

Navigate to Website in headless
    [Tags]    headless
    Open Demoqa site
    Verify Demoqa site