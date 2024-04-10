*** Settings ***
Library                QForce
Resource               resources/fileUpload.robot
Suite Setup            Open Browser                about:blank    chrome
Suite Teardown         Close All Browsers


*** Test Cases ***
Upload PDF
    [Documentation]
    [Tags]
    GoTo               https://smallpdf.com/share-document
    UploadFile         Choose file
    