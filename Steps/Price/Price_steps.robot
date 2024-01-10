***Settings***
Resource   ../../Resource/Settings.resource
Resource   ../../Elements/Main_elements.resource  

***Keywords***
Dado que eu acesso a aba Select Price Option
    Wait Until Element Is Visible  ${Price.choose_gold}
    Maximize Browser Window

Quando eu escolho o Price Option
   Click element    ${Price.choose_gold}
   #Sleep    5s
   Capture Page Screenshot


E clico no botão next send Quote
  Wait Until Element Is Visible    ${Price.Next_sendQuote}
  Click element     ${Price.Next_sendQuote}


Então acesso a aba Send Quote
   Wait Until Element Is Visible     ${Price.email}
   #Sleep    5s
   Capture Page Screenshot 