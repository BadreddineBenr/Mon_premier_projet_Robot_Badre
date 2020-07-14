*** settings ***
Library    SeleniumLibrary    

*** Test Cases ***
logingTest
    [Documentation]    ceci est un test
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=txtUsername      &{dataLogin}[username]                                         # @{Login}[0]
    Input Password    id=txtPassword     &{dataLogin}[password]                                      # @{Login}[1]
    Click Button    id=btnLogin         
    Click Element    id=welcome    
    Wait Until Element Is Visible    link=Logout    
    Click Element    link=Logout  
    Log   ceci_est_un_test_execute par %{username} dans %{os}
    Log    Fin de test
    
*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/index.php/auth/login   # c'est un URL  
${browser}   gc  
@{Login}   Admin      admin123 
&{dataLogin}    username=Admin    password=admin123