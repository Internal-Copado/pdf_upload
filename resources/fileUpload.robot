*** Settings ***
Library    QForce
Library    QVision

*** Keywords ***
UploadFile
    [Documentation]
    [Arguments]    ${upload_button_text}    ${pdf_file_name}
    Set Library Search Order    QForce    QVision    
    QForce.ClickText    ${upload_button_text}
    QVision.ClickText           suite
    QVision.DoubleClick           files    anchor=resources
    QVision.ClickText             ${pdf_file_name}
    QVision.ClickText             Open     anchor=Cancel
    QForce.VerifyText              Start over