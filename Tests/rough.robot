*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../PageObjects/loginpage.robot
Resource    ../PageObjects/dashboardpage.robot
Resource    ../Libraries/commonutility.robot
Resource    ../Libraries/TestData.robot

*** Variables ***
${staffusername}             shahavp71@gmail.com
${staffpassword}             Jci@12345
${passwordresetemail}        vshahaqa@gmail.com


*** Test Cases ***

Test Random String generation
    ${Regiseremailrandom}    Generate Random String    8    [LOWER]
    ${Regiseremail}    Catenate    SEPARATOR=    ${Regiseremailrandom}    @endtest-mail.io
    Log To Console    ${Regiseremail}



Test Random String for numbers generation 
    ${num}    Generate Random String    10     [NUMBERS]
    Log To Console    ${num}

Test Invalid login
    Invalid login test    shahavp71@gmail.com    Jci@235

*** Keywords ***       
Verify error message
    [Documentation]    The objective of this test case is to verify invalid error message for login 
    [Arguments]   ${element}
    ${status}=    Run Keyword And Return Status    Click Element    ${element}
    ${loginerrormessage}=    Run Keyword And Return Status    Page Should Contain    xpath://div[normalize-space()='Login error. Please try again.']
    Log To Console    ${status}
    IF    "${status}"=="True" and "${loginerrormessage}"=="False"
        Log To Console    Login button is not clickable because of the empty field    
    ELSE IF    "${status}"=="False" and "${loginerrormessage}"=="True"
        Page Should Contain    Login error. Please try again.
    ELSE
        Page Should Contain    Login Failed 
    END
    
   
Invalid login test 
    [Arguments]       ${Invalidstaffusername}    ${Invalidstaffpassword}
    commonutility.Open Web Browser    ${cloudvuemanagerURL}    ${browser}
    loginPage.Input User Name    ${Invalidstaffusername}
    loginPage.Input password    ${Invalidstaffpassword}
    loginPage.Click on Login Button
    sleep    2
    Verify error message    //span[normalize-space()="Login"]
    Close Browser