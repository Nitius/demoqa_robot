*** Settings ***

Documentation    Test
Resource    resource/0_step_setup.resource
Resource    resource/1_step_navigation.resource

*** Test Cases ***

Setup Webdriver
    Webdriver Setup

Navigate to Website
    Open Demoqa site
    Verify Demoqa site
    Wait until ublock initalizing