*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}        http://automationpractice.com
${BROWSER}    ie


*** Keywords *** 
Open
    Open Browser   ${URL}      Browser=${BROWSER}

Choose Menu Dresses
    Click Element   xpath://*[@id="block_top_menu"]/ul/li[2]/a



