*** Settings ***
Library                         QForce
Library                         QVision
Library                         String

*** Keywords ***
UploadFile
    [Documentation]
    [Arguments]                 ${upload_button_text}       ${pdf_file_name}
    Set Library Search Order    QForce                      QVision
    QForce.ClickText            ${upload_button_text}

    IF                          "${TEST_NAME}" == "Live Testing Session"
        QVision.ClickText       suite
    ELSE
        QVision.ClickText       execution
        Sleep                   2s
        QVision.ClickText       pdf upload                  anchor=execution
    END

    QVision.DoubleClick         files                       anchor=resources
    QVision.ClickText           ${pdf_file_name}
    QVision.ClickText           Open                        anchor=Cancel
    QForce.VerifyText           Start over