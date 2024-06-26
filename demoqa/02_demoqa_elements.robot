*** Settings ***

Documentation    Test
Resource    resource/00_step_setup.resource
Resource    resource/02_step_elements.resource


*** Variables ***
${first_name_value}    Test

*** Test Cases ***

Open elements
    [Tags]    elements
    Click on elements card
    Verify elements page

# TEXTBOX

Open Text Box
    [Tags]    text_box
    Click on "Text Box" menu
    Verify "Text Box" page

Fill Text Box fields
    [Tags]    text_box
    Fill "Full Name" field
    Fill "Email" field
    Fill "Current Address" field
    Fill "Permanent Address" field
    Click on "Submit" button
    Verify results

# CHECK BOX

Open Check box
    [Tags]    check_box
    Click on "Check Box" menu
    Verify "Check Box" page

Check Check boxes
    [Tags]    check_box
    Open down "Home" folder
    Open down "Documents" folder
    Open down "WorkSpace" folder
    Click on "Angular" checkbox
    Click on "Downloads" checkbox
    Verify checkboxes

# RADIO BUTTON

Open Radio button
    [Tags]    radio_button
    Click on "Radio Button" menu
    Verify "Radio Button" page

Check radio buttons
    [Tags]    radio_button
    Click on "Yes" radio button
    Verify "Yes" radio button
    Click on "Impressive" radio button
    Verify "Impressive" radio button

# WEB TABLES

Open Web Tables
    [Tags]    web_tables
    Click on "Web Tables" menu
    Verify "Web Tables" page

Click new web table
    [Tags]    web_tables
    Click on "Add" button
    Verify "Registration Form" modal

Fill "Registration Form" fields
    [Tags]    web_tables
    Fill "First Name" field    ${first_name_value}
    Fill "Last Name" field
    Fill "Email" field
    Fill "Age" field
    Fill "Salary" field
    Fill "Department" field
    Click on "Submit" button
    Verify new table row    ${first_name_value}

Search for new table row
    [Tags]    web_tables
    Fill "Type to search" searchbar
    Verify search results

Edit new table row
    [Tags]    web_tables
    Click on the "Edit" button
    Set Test Variable    ${first_name_value}    Test_v2
    Fill "First Name" field    ${first_name_value}
    Click on "Submit" button
    Verify new table row    ${first_name_value}

Delete new table row
    [Tags]    web_tables
    Click on the "Delete" button
    Verify new table row is deleted
    
# BUTTONS

Open "Buttons"
    [Tags]    buttons
    Click on "Buttons" menu
    Verify "Buttons" page

Click on the buttons
    [Tags]    buttons
    Double click on "Double Click Me" button
    Verify successful double click
    Right click on "Right Click Me" button
    Verify successful right click
    Click on "Click Me" button
    Verify successful click

# LINKS

Open "Links"
    [Tags]    links
    Click on "Links" menu
    Verify "Links" page

Click on "Home" link
    [Tags]    links
    Click on "Home" link
    Verify "Home" new tab
    Close "Home" tab

Click on dynamic "Home" link
    [Tags]    links
    Click on dymaic "Home" link
    Verify "Home" new tab
    Close "Home" tab

Click on "Created" api link
    [Tags]    links
    Click on "Created" api link
    Verify 201 status code

Click on "No Content" api link
    [Tags]    links
    Click on "No content" api link
    Verify 204 status code

Click on "Moved" api link
    [Tags]    links
    Click on "Moved" api link
    Verify 301 status code

Click on "Bad Request" api link
    [Tags]    links
    Click on "Bad Request" api link
    Verify 400 status code

Click on "Unauthorized" api link
    [Tags]    links
    Click on "Unauthorized" api link
    Verify 401 status code

Click on "Forbidden" api link
    [Tags]    links
    Click on "Forbidden" api link
    Verify 403 status code

Click on "Not Found" api link
    [Tags]    links
    Click on "Not Found" api link
    Verify 404 status code

# BROKEN LINKS - IMAGES

Open "Broken Links - Images"
    [Tags]    broken_link
    Click on "Broken Links - Images" menu
    Verify "Broken Links - Images" page

Verify Images and links
    [Tags]    broken_link
    Verify "Valid image"
    Verify "Broken image"
    Verify "Valid link"
    Go Back
    Verify "Broken Links - Images" page
    Verify "Broken link"
    Go Back
    Verify "Broken Links - Images" page

# UPLOAD AND DOWNLOAD

Open "Upload and Download"
    [Tags]    upload_download
    Click on "Upload and Download" menu
    Verify "Upload and Download" page

Click on "Download" button
    [Tags]    upload_download
    Click on "Download" button

Upload a file
    [Tags]    upload_download
    Upload file
    Verify Uploaded file

# DYNAMIC PROPERTIES

Open "Dynamic Properties"
    [Tags]    dynamic_properties
    Click on "Dynamic Properties" menu
    Verify "Dynamic Properties" page

Wait until buttons changes
    [Tags]    dynamic_properties
    Wait until button is not disabled
    Verify "Color Change" button
    Verify "Visible After 5 Seconds" button

Teardown
    Close Browser







