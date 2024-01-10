***Settings***
Resource   ../../Resource/Settings.resource
Resource   ../../Elements/Main_elements.resource  


***Keywords***

Dado que eu acesso a aba Enter Insurant Data
    Wait Until Element Is Visible      ${Insurant.Enter_InsurantData}
    Maximize Browser Window


Quando cadastro a aba Enter Insurant Data
    Click Element   ${Insurant.FirstName}
    Input Text      ${Insurant.Input_FirstName}    Caio 
    Click Element   ${Insurant.Last_Name}
    Input Text      ${Insurant.Input_LastName}     Silva
    Click Element   ${Insurant.Input_BirthDate}
    Input Text      ${Insurant.Input_BirthDate}     12/09/1989
    Wait Until Element Is Visible       ${Insurant.Input_Gender}
    Element Should Be Visible     ${Insurant.Input_Gender}
    Click element   ${Insurant.Input_Gender}
    Click element   ${Insurant.Street_Address}
    Input Text      ${Insurant.Input_Address}        Gaetano Gioja, 14
    Click element   ${Insurant.Input_Country}       
    Click element   ${Insurant.Zip_Code}
    Input Text      ${Insurant.Input_ZipCode}          05183180 
    Click element   ${Insurant.City}
    Input Text   ${Insurant.Input_City}          São Paulo 
    Click element   ${Insurant.Input_Occupation}
    Sleep    5s
    Capture Page Screenshot
    Click element   ${Insurant.Input_hobbies}
    Click element   ${Insurant.Website}
    Input Text   ${Insurant.Input_WebSite}        www.google.com.Brazil
    Choose File    ${Insurant.Load_Picture}       C:\P10
    #Sleep    5sx


E clico no botão Next Product
   Click Button     ${Insurant.Next_ProductData}

Então acesso a aba Enter Product Data
    Element should be visible        ${Insurant.Enter_ProductData}    timeout=10s