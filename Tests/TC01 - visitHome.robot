*** Settings *** 
Documentation       As a User, I want to to be able to visit the Home page and check all content
Resource            ../Resources/base.robot
Suite Setup         Start session
Suite Teardown      Close session

*** Variables ***
${searchText}       css=h1 strong
${searchButton}     css=.fa-search


*** Test Cases ***
Star a page and visit
    Given that I visit the home page
    When I click in "Estou com fome" button
    Then I must see the search bar



*** Keywords ***
Given that I visit the home page
    Get Title       should be    Parodifood | QAninja Academy 

When I click in "${button}" button
    Click           text=${button}

Then I must see the search bar
    Get Text        ${searchText}    contains   Ta na hora de matar a fome!
    Click           ${searchButton}
    Sleep           2       #wait for animation