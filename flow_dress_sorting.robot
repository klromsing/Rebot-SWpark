*** Settings ***
#Library   SeleniumLibrary
Resource   ./pages/welcome.robot


*** Variables ***
${URL}        http://automationpractice.com
${BROWSER}    gc

*** Test Cases *** 
sorting by price
    เข้า web หน้าแรก
    เข้าไปยังหน้า Summer dress 
    ทำการเลือก sort ด้วย price จากแพงไปถูก
    ผลการทำงานต้องแสดงผลจากแพงไปถูก

*** Keywords *** 
เข้า web หน้าแรก
    welcome.Open

ผลการทำงานต้องแสดงผลจากแพงไปถูก
    #Wait Until Element Contains   xpath://*[@id="center_column"]/ul/li[1]/div/div[2]/h5/a   Printed Summer Dress

ทำการเลือก sort ด้วย price จากแพงไปถูก
    Select From List By Value    id:selectProductSort    price:desc

เข้าไปยังหน้า Summer dress
    welcome.Choose Menu Dresses
    #Click Element   xpath://*[@id="block_top_menu"]/ul/li[2]/a
    #Click Element   xpath://*[@id="categories_block_left"]/div/ul/li[3]/a





