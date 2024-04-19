*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Library           SeleniumLibrary

*** Variables ***
${url}    https://demoqa.com

*** Keywords ***

Open Demoqa site
    Go To    ${url}

Verify Demoqa site
    Wait Until Element Is Visible    //img[@alt='Selenium Online Training']  5

Wait until ublock initalizing
    Wait Until Element Is Visible    //div[@id='fixedban']    10
    Wait Until Element Is Not Visible    //div[@id='fixedban']    10