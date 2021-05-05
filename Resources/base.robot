*** Settings *** 
Library     Browser

*** Variables ***
${BASE_URL}         http://parodifood.qaninja.academy/
${BROWSER}          chromium
${TIMEOUT}          15
${LONG_TIMEOUT}     30
${WIDTH}            1024
${HEIGHT}           900


*** Keywords ***
Start session
    New Browser             ${BROWSER}      
    New Page                ${BASE_URL}
    Set Browser Timeout     ${TIMEOUT}
    Set Viewport Size       ${WIDTH}    ${HEIGHT}

Close session
    Take Screenshot
    Close Browser