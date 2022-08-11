*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${USERNAME}    jitendra_x2E8IF    #Can specify BrowserStack Username directly instead of Environment variable.
${ACCESS_KEY}    pTBJPjz8AAw3qLL1Ts27    #Can specify BrowserStack Accesskey directly instead of Environment variable.
${cloudvuemanagerURL}        https://dev-dashboard.cloudvue.com/login
${browser}                   chrome    #Chrome, Firefox, IE, Safari, Edge, Opera
${platform}                  bstack    #This variable is created to run test cases on bstack or local browser
