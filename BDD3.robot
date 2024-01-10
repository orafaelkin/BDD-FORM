***Settings***
Library    SeleniumLibrary
Library    ScreenCapLibrary   
#Library           AutoItLibrary
***Variables***
#Dados do teste(comentário).
${CCM}         1000
${URL}         http://sampleapp.tricentis.com/101/app.php
${Browser}     chrome
${Make}        BMW
${Data}        12/09/1989
${tempo}       5
${KW}          1200
${RHD}         Yes
${FILE_PATH}       C:\Users\Caio\Documents\Saved Pictures\P10

#elementos Enter Vehicle Data
${Camper}            //*[@id="nav_camper"]
${Select_Make}      //select [@id="make"]
${Option_BMW}       xpath=//option [contains(text(),"BMW")]
${Input_KW}         //input [@id="engineperformance"]
${Input_DOM}        //input[@placeholder="MM/DD/YYYY"]
${Input Seats}      xpath=//option [contains(text(),"9")]
${Input_RHD}        class=ideal-radio

${Fuel}             xpath=//*[@id="fuel"]
${Fuel_option}      //*[@id="fuel"]/option[5] 
${Payload}          //*[@id="payload"]
${Input_Payload}    //*[@id="payload"] 
${Totalweight}      //*[@id="totalweight"]
${Input_TotalWeight}   //*[@id="totalweight"] 
${ListPrice}          //*[@id="listprice"]
${Input_ListPrice}    //*[@id="listprice"]
${LicencePlate}       //*[@id="licenseplatenumber"]
${Input_LicencePlate}   //*[@id="licenseplatenumber"]
${Annual_Mileage}       //*[@id="annualmileage"]
${Input_AnnualMileage}  //*[@id="annualmileage"] 
${Next}            xpath=//*[@id="nextenterinsurantdata"]

#Elementos Enter Insurant Data
${Enter_InsurantData}    //*[@id="firstname"]
${FirstName}            //*[@id="firstname"]
${Input_FirstName}      //*[@id="firstname"]
${Last_Name}            //*[@id="lastname"]
${Input_LastName}       //*[@id="lastname"]
${Input_BirthDate}      //*[@id="birthdate"]
${Input_Gender}          //*[@id="insurance-form"]/div/section[2]/div[4]/p/label[1]/span
${Street_Address}      //*[@id="streetaddress"]
${Input_Address}       //*[@id="streetaddress"]
${Input_Country}        xpath=//option [contains(text(),"Brazil")]
${Zip_Code}             //*[@id="zipcode"]
${Input_ZipCode}        //*[@id="zipcode"]
${City}                 //*[@id="city"]
${Input_City}           //*[@id="city"]
${Input_Occupation}        xpath=//option [contains(text(),"Public Official")]                                 
${Input_hobbies}        //*[@id="insurance-form"]/div/section[2]/div[10]/p/label[1]/span
${Website}              //*[@id="website"]
${Input_WebSite}         //*[@id="website"]
${Load_Picture}          //*[@id="picture"]
${Next_ProductData}      xpath=//*[@id="nextenterproductdata"]
${Enter_ProductData}         //*[@id="startdate"]


#Elementos Enter Product Data
${Start_Date}          xpath=//*[@id="startdate"]
${Insurance_Sum}       xpath=//option [contains(text(),"3.000.000,00")]
${Damage_Insurance}    xpath=//option [contains(text(),"No Coverage")] 
${Optional_Products}        //*[@id="insurance-form"]/div/section[3]/div[4]/p/label[1]/span
${Next_Price_Option}            xpath=//*[@id="nextselectpriceoption"]




#Elementos Select Price Option
${Choose_Gold}            xpath=//*[@id="priceTable"]/tfoot/tr/th[2]/label[2]/span
${email}                  //*[@id="email"]
${Next_sendQuote}        xpath=//*[@id="nextsendquote"]

#Elementos Send Quote
${Input_Email}         //*[@id="email"]
${Input_Phone}        //*[@id="phone"]
${Input_UserName}     //*[@id="username"]
${Input_Password}     //*[@id="password"]
${Input_ConfirmPassword}     //*[@id="confirmpassword"]
${Send}                      //*[@id="sendemail"]
${Send_Success}              //*[@id="LoadingPDF"]
${Confirm}                   xpath=//*[@class="confirm"]

***Keywords***
Dado que eu acesso o site do Engine
    #Inicia gravação de Vídeogere
    Start Video Recording
    Open Browser    ${URL}      ${Browser}
    Maximize Browser Window         
    

Dado que eu acesso a aba Enter Insurant Data
    Wait Until Element Is Visible      ${Enter_InsurantData}
    Maximize Browser Window

Dado que eu acesso a aba Enter Product Data
    Wait Until Element Is Visible    ${Enter_ProductData}
    Maximize Browser Window

Dado que eu acesso a aba Select Price Option
    Wait Until Element Is Visible    ${Choose_Gold}   
    Maximize Browser Window
    
Dado que eu acesso a aba a Send Quote
    Wait Until Element Is Visible     ${email}   
    Maximize Browser Window

Quando cadastro a aba Enter Vehicle Data
    Click element    ${Camper}
    Click element    ${Option_BMW}
    Input text       ${Input_KW}     ${KW}
    Input Text 	     ${Input_DOM}   ${Data}
    Click element    ${Input Seats}
    Click element    ${Input_RHD}  
    
    ################Elemento Fuel Type pra baixo até a pagina 2#########
    Click Element    ${Fuel}
    Click Element    ${Fuel_option} 
    Click Element    ${Payload}
    Input Text       ${Input_Payload}    101
    Click Element    ${Totalweight}   
    Input Text       ${Input_TotalWeight}    1010
    Click Element    ${ListPrice}
    Input Text       ${Input_ListPrice}   100000
    Click Element    ${LicencePlate}
    Input Text       ${Input_LicencePlate}    101010
    Click Element    ${Annual_Mileage}    
    Input Text       ${Annual_Mileage}    1010
    

    Sleep    5s
    Capture Page Screenshot

Quando cadastro a aba Enter Insurant Data
    Click Element   ${FirstName}
    Input Text      ${Input_FirstName}    Caio 
    Click Element   ${Last_Name}
    Input Text      ${Input_LastName}     Silva
    Click Element   ${Input_BirthDate}
    Input Text      ${Input_BirthDate}     12/09/1989
    Wait Until Element Is Visible       ${Input_Gender}
    Element Should Be Visible     ${Input_Gender}
    Click element   ${Input_Gender}
    Click element   ${Street_Address}
    Input Text      ${Input_Address}        Gaetano Gioja, 14
    Click element   ${Input_Country}       
    Click element   ${Zip_Code}
    Input Text      ${Input_ZipCode}          05183180 
    Click element   ${City}
    Input Text   ${Input_City}          São Paulo 
    Click element   ${Input_Occupation}
    Sleep    5s
    Capture Page Screenshot
    Click element   ${Input_hobbies}
    Click element   ${Website}
    Input Text   ${Input_WebSite}        www.google.com.Brazil
    Choose File    ${Load_Picture}       C:\P10
    Sleep    5s
    Capture Page Screenshot   
    
Quando cadastro a aba Enter Product Data
    Input text       ${Start_Date}             05/10/2024
    Click Element     ${Insurance_Sum}    
    Click Element      ${Damage_Insurance}
    Wait Until Element Is Visible         ${Optional_Products}
    Click element             ${Optional_Products}
    Sleep    5s
    Capture Page Screenshot  

    
Quando eu escolho o Price Option
   Click element     ${Choose_Gold}
   Sleep    5s
   Capture Page Screenshot

Quando eu Cadastro meus Dados de Contato
   Input text     ${Input_Email}     caiovfsilva@gmail.com
   Input text     ${Input_Phone}      1195444566
   Input text     ${Input_UserName}    CACA01
   Input text     ${Input_Password}    138527Ca#
   Input text     ${Input_ConfirmPassword}    138527Ca#
   Wait Until Element Is Visible     ${Send}  
   click element                     ${Send}  
   Sleep    5s
   Capture Page Screenshot   

E clico no botão Next
#keywords >wait Until Element Is Visible< é usado para esperar para ter uma ação
    Click Button    ${Next}

    

E clico no botão Next Product
   Click Button     ${Next_ProductData}


E clico no botão Next Price Option
   Click Button     ${Next_Price_Option}

E clico no botão next send Quote
  Wait Until Element Is Visible    ${Next_sendQuote}
  Click element     ${Next_sendQuote}

E clico no botão Send
  Wait Until Element Is Visible    ${Send_Success}
  Click element                    ${Send_Success}
  Sleep              5s
  Capture Page Screenshot 

Então acesso a aba Enter Insurant Data
    Element should be visible      ${Enter_InsurantData}

Então acesso a aba Enter Product Data
    Element should be visible        ${Enter_ProductData}    timeout=10s

Então acesso a aba Select Price Option
   Wait Until Element Is Visible      ${choose_Gold}
   

Então acesso a aba Send Quote
   Wait Until Element Is Visible     ${email}
   #Sleep    5s
   Capture Page Screenshot 



Então o e-mail é enviado com sucesso
  wait until element is visible        ${Confirm}
  Capture Page Screenshot 
  click element                  ${Confirm}  
  #Parar Gravação Vídeo
  Sleep    5s
  Capture Page Screenshot
  Stop Video Recording    


***Test Cases***
cenario 1: Cadastro aba Enter Vehicle Data
    Dado que eu acesso o site do Engine
    Quando cadastro a aba Enter Vehicle Data
    E clico no botão Next
    Então acesso a aba Enter Insurant Data

cenario 2: Cadastro Pagina Enter Insurant Data
    Dado que eu acesso a aba Enter Insurant Data
    Quando cadastro a aba Enter Insurant Data
    E clico no botão Next Product
    Então acesso a aba Enter Product Data

cenario 3: Cadastro Enter Product Data
    Dado que eu acesso a aba Enter Product Data
    Quando cadastro a aba Enter Product Data
    E clico no botão Next Price Option
    Então acesso a aba Select Price Option

  
cenario 4: Select Price Option
    Dado que eu acesso a aba Select Price Option
    Quando eu escolho o Price Option
    E clico no botão next send Quote
    Então acesso a aba Send Quote

cenario 5: Send Quote
    Dado que eu acesso a aba a Send Quote
    Quando eu Cadastro meus Dados de Contato
    E clico no botão Send
    Então o e-mail é enviado com sucesso
    
