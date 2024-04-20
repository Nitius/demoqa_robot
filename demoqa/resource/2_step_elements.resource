*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Library           SeleniumLibrary
Library           RequestsLibrary


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

Verify "Text Box" page
    Wait Until Element Is Visible    //h1[text()='Text Box']

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

Verify "Check Box" page
    Wait Until Element Is Visible    //h1[text()='Check Box']

Open down "Home" folder
    Click Element    //span[text()='Home']/ancestor::span[@class='rct-text']//button

Open down "Documents" folder
    Click Element    //span[text()='Documents']/ancestor::span[@class='rct-text']//button

Open down "WorkSpace" folder
    Click Element    //span[text()='WorkSpace']/ancestor::span[@class='rct-text']//button

Click on "Angular" checkbox
    Click Element    //span[text()='Angular']/../span[@class='rct-checkbox']

Click on "Downloads" checkbox
    Click Element    //span[text()='Downloads']/../span[@class='rct-checkbox']

Verify checkboxes
    Checkbox Should Be Selected    //input[@id='tree-node-angular']
    Checkbox Should Be Selected    //input[@id='tree-node-downloads']
    Wait Until Element Is Visible    //span[@class='text-success'][text()='angular']
    Wait Until Element Is Visible    //span[@class='text-success'][text()='downloads']
    Wait Until Element Is Visible    //span[@class='text-success'][text()='wordFile']
    Wait Until Element Is Visible    //span[@class='text-success'][text()='excelFile']

# RADIO BUTTON

Click on "Radio Button" menu
    Wait Until Element Is Visible    //div[@class='left-pannel']//span[text()='Radio Button']
    Click Element    //div[@class='left-pannel']//span[text()='Radio Button']

Verify "Radio Button" page
    Wait Until Element Is Visible    //h1[text()='Radio Button']

Click on "Yes" radio button
    Click Element    //input[@id='yesRadio']/../label

Verify "Yes" radio button
    Wait Until Element Is Visible    //span[text()='Yes']

Click on "Impressive" radio button
    Click Element    //input[@id='impressiveRadio']/../label

Verify "Impressive" radio button
    Wait Until Element Is Visible    //span[text()='Impressive']

# WEB TABLES

Click on "Web Tables" menu
    Wait Until Element Is Visible    //div[@class='left-pannel']//span[text()='Web Tables']
    Click Element    //div[@class='left-pannel']//span[text()='Web Tables']

Verify "Web Tables" page
    Wait Until Element Is Visible    //h1[text()='Web Tables']

Click on "Add" button
    Click Element    //button[@id='addNewRecordButton']

Verify "Registration Form" modal
    Wait Until Element Is Visible    //div[@id='registration-form-modal']

Fill "First Name" field
    [Arguments]    ${value}
    Wait Until Element Is Visible    //input[@id='firstName']
    Input Text    //input[@id='firstName']    ${value}

Fill "Last Name" field
    Wait Until Element Is Visible    //input[@id='lastName']
    Input Text    //input[@id='lastName']    User

Fill "Age" field
    Wait Until Element Is Visible    //input[@id='age']
    Input Text    //input[@id='age']    30

Fill "Salary" field
    Wait Until Element Is Visible    //input[@id='salary']
    Input Text    //input[@id='salary']    1000000

Fill "Department" field
    Wait Until Element Is Visible    //input[@id='department']
    Input Text    //input[@id='department']    Tester

Verify new table row
    [Arguments]    ${value}
    Wait Until Element Is Visible    //div[text()='${value}'] | //div[text()='User']

Fill "Type to search" searchbar
    Input Text    //input[@id='searchBox']    Test

Verify search results
    Wait Until Element Is Not Visible    //div[text()='Kierra']
    Wait Until Element Is Not Visible    //div[text()='Alden']
    Wait Until Element Is Not Visible    //div[text()='Cierra']
    Wait Until Element Is Visible    //div[text()='Test']

Click on the "Edit" button
    Click Element    //span[@title='Edit']

Click on the "Delete" button
    Click Element    //span[@title='Delete']
    
Verify new table row is deleted
    Wait Until Element Is Not Visible    //div[text()='User']

# Buttons

Click on "Buttons" menu
    Wait Until Element Is Visible    //div[@class='left-pannel']//span[text()='Buttons']
    Click Element    //div[@class='left-pannel']//span[text()='Buttons']

Verify "Buttons" page
    Wait Until Element Is Visible    //h1[text()='Buttons']

Double click on "Double Click Me" button
    Double Click Element    //button[@id='doubleClickBtn']
    
Verify successful double click
    Wait Until Element Is Visible    //p[@id='doubleClickMessage'][text()='You have done a double click']

Right click on "Right Click Me" button
    Open Context Menu    //button[@id='rightClickBtn']

Verify successful right click
    Wait Until Element Is Visible    //p[@id='rightClickMessage'][text()='You have done a right click']
    
Click on "Click Me" button
    Click Element    //button[text()='Click Me']
    
Verify successful click
    Wait Until Element Is Visible    //p[@id='dynamicClickMessage'][text()='You have done a dynamic click']

# Links
Click on "Links" menu
    Wait Until Element Is Visible    //div[@class='left-pannel']//span[text()='Links']
    Click Element    //div[@class='left-pannel']//span[text()='Links']

Verify "Links" page
    Wait Until Element Is Visible    //h1[text()='Links']

Click on "Home" link
    Click Element    //a[@id='simpleLink']
    Switch Window    NEW

Verify "Home" new tab
    Wait Until Element Is Visible    //img[@alt='Selenium Online Training']  5

Close "Home" tab
    Close Window
    Switch Window    MAIN

Click on dymaic "Home" link
    Click Element    //a[@id='dynamicLink']
    Switch Window    NEW

Click on "Created" api link
    Click Element    //a[@id='created']

Verify 201 status code
    ${response}=    GET    https://demoqa.com/created    expected_status=201

Click on "No content" api link
    Click Element    //a[@id='no-content']

Verify 204 status code
    ${response}=    GET    https://demoqa.com/no-content    expected_status=204

Click on "Moved" api link
    Click Element    //a[@id='moved']

Verify 301 status code
    ${response}=    GET    https://demoqa.com/moved    expected_status=301

Click on "Bad Request" api link
    Click Element    //a[@id='bad-request']

Verify 400 status code
    ${response}=    GET    https://demoqa.com/bad-request    expected_status=400

Click on "Unauthorized" api link
    Click Element    //a[@id='unauthorized']

Verify 401 status code
    ${response}=    GET    https://demoqa.com/unauthorized    expected_status=401

Click on "Forbidden" api link
    Click Element    //a[@id='forbidden']

Verify 403 status code
    ${response}=    GET    https://demoqa.com/forbidden    expected_status=403

Click on "Not Found" api link
    Click Element    //a[@id='invalid-url']

Verify 404 status code
    ${response}=    GET    https://demoqa.com/invalid-url    expected_status=404