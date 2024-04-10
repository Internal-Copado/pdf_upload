*** Settings ***
Library                        QForce
Library                        String
Resource                       resources/fileUpload.robot
Suite Setup                    Open Browser                about:blank    chrome
Suite Teardown                 Close All Browsers


*** Test Cases ***
Upload PDF
    [Documentation]
    [Tags]
    Log To Console             ${CURDIR}
    GoTo                     https://smallpdf.com/share-document
    UploadFile               Choose file                 ${CURDIR}    dummy.pdf
    Split String From Right                          /