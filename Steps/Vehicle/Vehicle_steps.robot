***Settings***
Resource   ../../Resource/Settings.resource
Resource   ../../Elements/Main_elements.resource  

***Keywords***
Dado que eu acesso o site do Engine
    Open Browser    ${URL}      ${Browser}
    Maximize Browser Window

Quando cadastro a aba Enter Vehicle Data
    Click element    ${Vehicle.Camper}
    Click element    ${Vehicle.Option_BMW}
    Input text       ${Vehicle.Input_KW}     ${KW}
    Input Text 	     ${Vehicle.Input_DOM}   ${Data}
    Click element    ${Vehicle.Input_Seats}
    Click Element    ${Vehicle.Input_Number_Seats}
    Click element    ${Vehicle.Input_RHD}  
    
    ################Elemento Fuel Type pra baixo até a pagina 2#########
    Click Element    ${Vehicle.Fuel}
    Click Element    ${Vehicle.Fuel_option} 
    Click Element    ${Vehicle.Payload}
    Input Text       ${Vehicle.Input_Payload}    101
    Click Element    ${Vehicle.Totalweight}   
    Input Text       ${Vehicle.Input_TotalWeight}    1010
    Click Element    ${Vehicle.ListPrice}
    Input Text       ${Vehicle.Input_ListPrice}   100000
    Click Element    ${Vehicle.LicencePlate}
    Input Text       ${Vehicle.Input_LicencePlate}    101010
    Click Element    ${Vehicle.Annual_Mileage}    
    Input Text       ${Vehicle.Annual_Mileage}    1010
    

    #Sleep    5s
    Capture Page Screenshot



E clico no botão Next
#keywords >wait Until Element Is Visible< é usado para esperar para ter uma ação
    Click Button    ${Vehicle.Next}


Então acesso a aba Enter Insurant Data
    Element should be visible      ${Vehicle.Enter_InsurantData}