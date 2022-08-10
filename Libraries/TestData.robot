*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${USERNAME}    dharmendra_iZxJCD    #Can specify BrowserStack Username directly instead of Environment variable.
${ACCESS_KEY}    WL1C9s3WYAfRJb9wTzpz    #Can specify BrowserStack Accesskey directly instead of Environment variable.
${cloudvuemanagerURL}        https://dev-dashboard.cloudvue.com/login
${browser}                   chrome    #Chrome, Firefox, IE, Safari, Edge, Opera
${platform}                  bstack    #This variable is created to run test cases on bstack or local browser
