*** Settings ***

Documentation    Test
Resource    resource/2_step_elements.resource

*** Variables ***
${first_name_value}    Test

*** Test Cases ***

Open elements
    Click on elements card
    Verify elements page

# TEXTBOX

Open Text Box
    Click on "Text Box" menu

Fill Text Box fields
    Fill "Full Name" field
    Fill "Email" field
    Fill "Current Address" field
    Fill "Permanent Address" field
    Click on "Submit" button
    Verify results

# CHECK BOX

Open Check box
    Click on "Check Box" menu

Check Check boxes
    Open down "Home" folder
    Open down "Documents" folder
    Open down "WorkSpace" folder
    Click on "Angular" checkbox
    Click on "Downloads" checkbox
    Verify checkboxes

# RADIO BUTTON

Open Radio button
    Click on "Radio button" menu

Check radio buttons
    Click on "Yes" radio button
    Verify "Yes" radio button
    Click on "Impressive" radio button
    Verify "Impressive" radio button

# WEB TABLES

Open Web Tables
    Click on "Web Tables" menu

Click new web table
    Click on "Add" button
    Verify "Registration Form" modal

Fill "Registration Form" fields
    Fill "First Name" field    ${first_name_value}
    Fill "Last Name" field
    Fill "Email" field
    Fill "Age" field
    Fill "Salary" field
    Fill "Department" field
    Click on "Submit" button
    Verify new table row    ${first_name_value}

Search for new table row
    Fill "Type to search" searchbar
    Verify search results

Edit new table row
    Click on the "Edit" button
    Set Test Variable    ${first_name_value}    Test_v2
    Fill "First Name" field    ${first_name_value}
    Click on "Submit" button
    Verify new table row    ${first_name_value}

Delete new table row
    Click on the "Delete" button
    Verify new table row is deleted