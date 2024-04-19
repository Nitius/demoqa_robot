*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Library           SeleniumLibrary

*** Variables ***
${url}    https://demoqa.com

*** Keywords ***

Webdriver Setup Headless

    # Headless mode with docker compatibility for CI/CD pipeline:
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method  ${options}    add_argument    --headless
    Call Method  ${options}    add_argument    --no-sandbox
    Call Method  ${options}    add_argument    --disable-dev-shm-usage3
    Create Webdriver    Chrome    options=${options}
    Set Window Size    1920  1080
    Set Selenium Timeout    5

Webdriver Setup

    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method  ${options}    add_extension    .//demoqa//resource//browser_addons//ublock.crx
    Create Webdriver    Chrome    options=${options}
    Set Window Size    1920  1080
    Set Selenium Timeout    5
