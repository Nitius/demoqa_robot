*** Settings ***

Documentation    Test
Resource    resource/2_step_elements.resource

*** Test Cases ***

Open elements
    Click on elements card
    Verify elements page

Open Text Box
    Click on "Text Box" menu

Fill Text Box fields
    Fill "Full Name" field
    Fill "Email" field
    Fill "Current Address" field
    Fill "Permanent Address" field
    Click on "Submit" button
    Verify results

Open Checkbox
    Click on "Check Box" menu

Check Checkboxes
    Open down "Home" folder
    Open down "Documents" folder
    Open down "WorkSpace" folder
    Check "Angular" checkbox
    Check "Downloads" checkbox
    Verify checkboxes