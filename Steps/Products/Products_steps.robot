***Settings***
Resource   ../../Resource/Settings.resource
Resource   ../../Elements/Main_elements.resource  


***Keywords***
Dado que eu acesso a aba Enter Product Data
    Wait Until Element Is Visible   ${Products.Enter_ProductData}
    Maximize Browser Window

Quando cadastro a aba Enter Product Data
    Input text       ${Products.Start_Date}             05/10/2024
    Click Element     ${Products.Insurance_Sum}    
    Click Element      ${Products.Damage_Insurance}
    Wait Until Element Is Visible      ${Products.optional_products}
    Click element            ${Products.optional_products}
   #Sleep    5s
   Capture Page Screenshot


E clico no botão Next Price Option
   Click Button     ${Products.Next_Price_Option}

Então acesso a aba Select Price Option
   Wait Until Element Is Visible   ${Products.choose_gold}