*** Settings ***
Library    QForce
Library    QVision

*** Keywords ***
UploadFile
    [Documentation]
    [Arguments]    ${upload_button_text}
    Set Library Search Order    QForce    QVision    
    QForce.ClickText    ${upload_button_text}
