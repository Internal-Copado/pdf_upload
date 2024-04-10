*** Settings ***
Library    QForce
Library    QVision

*** Keywords ***
UploadFile
    [Documentation]
    [Arguments]    ${upload_button_text}
    QForce.ClickText    ${upload_button_text}
    