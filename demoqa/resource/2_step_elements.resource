*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Library           SeleniumLibrary

*** Variables ***
${url}    https://demoqa.com

*** Keywords ***

Click on elements card
    Wait Until Element Is Visible    //h5[text()='Elements']
    Click Element    //h5[text()='Elements']

Verify elements page
    Wait Until Element Is Visible    //div[@class='left-pannel']//div[text()='Elements']

# TEXTBOX

Click on "Text Box" menu
    Wait Until Element Is Visible    //div[@class='left-pannel']//span[text()='Text Box']
    Click Element    //div[@class='left-pannel']//span[text()='Text Box']

Fill "Full Name" field
    Wait Until Element Is Visible    //input[@id='userName']
    Input Text    //input[@id='userName']    Test User

Fill "Email" field
    Wait Until Element Is Visible    //input[@id='userEmail']
    Input Text    //input[@id='userEmail']    fake@email.com

Fill "Current Address" field
    Wait Until Element Is Visible    //textarea[@id='currentAddress']
    Input Text    //textarea[@id='currentAddress']    1234 Fake Street 5

Fill "Permanent Address" field
    Wait Until Element Is Visible    //textarea[@id='permanentAddress']
    Input Text    //textarea[@id='permanentAddress']    4321 Fake Address 5

Click on "Submit" button
    Wait Until Element Is Visible    //button[@id='submit']
    Click Element    //button[@id='submit']

Verify results
    Wait Until Element Is Visible    //p[@id='name'][text()='Test User']
    Wait Until Element Is Visible    //p[@id='email'][text()='fake@email.com']
    Wait Until Element Is Visible    //p[@id='currentAddress'][text()='1234 Fake Street 5']
    Wait Until Element Is Visible    //p[@id='permanentAddress'][text()='4321 Fake Address 5']

# CHECK BOX

Click on "Check Box" menu
    Wait Until Element Is Visible    //div[@class='left-pannel']//span[text()='Check Box']
    Click Element    //div[@class='left-pannel']//span[text()='Check Box']

Open down "Home" folder
    Click Element    //span[text()='Home']/ancestor::span[@class='rct-text']//button

Open down "Documents" folder
    Click Element    //span[text()='Documents']/ancestor::span[@class='rct-text']//button

Open down "WorkSpace" folder
    Click Element    //span[text()='WorkSpace']/ancestor::span[@class='rct-text']//button

Check "Angular" checkbox
    Click Element    //span[text()='Angular']/../span[@class='rct-checkbox']

Check "Downloads" checkbox
    Click Element    //span[text()='Downloads']/../span[@class='rct-checkbox']

Verify checkboxes
    Checkbox Should Be Selected    //input[@id='tree-node-angular']
    Checkbox Should Be Selected    //input[@id='tree-node-downloads']
    Wait Until Element Is Visible    //span[@class='text-success'][text()='angular']
    Wait Until Element Is Visible    //span[@class='text-success'][text()='downloads']
    Wait Until Element Is Visible    //span[@class='text-success'][text()='wordFile']
    Wait Until Element Is Visible    //span[@class='text-success'][text()='excelFile']