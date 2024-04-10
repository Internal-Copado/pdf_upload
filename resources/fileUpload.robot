*** Settings ***
Library                         QForce
Library                         QVision
Library                         String

*** Keywords ***
UploadFile
    [Documentation]
    [Arguments]                 ${upload_button_text}       ${directory}    ${pdf_file_name}
    Set Library Search Order    QForce                      QVision
    QForce.ClickText            ${upload_button_text}

    # IF                          "${TEST_NAME}" == "Live Testing Session"
    #     QVision.ClickText       suite

    # ELSE
    #     QVision.ClickText       execution
    #     QVision.ClickText       ${SUITE_NAME}
    # END

    


    @{dirs}                     Split String From Right     ${directory}           /

    FOR                         ${dir}                      IN                  @{dirs}
        QVision.ClickText     ${dir}
    END

    QVision.DoubleClick         files                       anchor=resources
    QVision.ClickText           ${pdf_file_name}
    QVision.ClickText           Open                        anchor=Cancel
    QForce.VerifyText           Start over

    # QVision.ClickText      home
    # QVision.ClickText      services
    # QVision.ClickText      suite