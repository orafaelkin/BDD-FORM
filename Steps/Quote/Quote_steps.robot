***Settings***
Resource   ../../Resource/Settings.resource
Resource   ../../Elements/Main_elements.resource  


***Keywords***

Dado que eu acesso a aba a Send Quote
    Wait Until Element Is Visible    ${Quote.Input_Email}
    Maximize Browser Window

Quando eu Cadastro meus Dados de Contato
   Input text     ${Quote.Input_Email}     caiovfsilva@gmail.com
   Input text     ${Quote.Input_Phone}      1195444566
   Input text     ${Quote.Input_UserName}    CACA01
   Input text     ${Quote.Input_Password}    138527Ca#
   Input text     ${Quote.Input_ConfirmPassword}    138527Ca#
   Wait Until Element Is Visible     ${Quote.Send}  
   click element                     ${Quote.Send}  
   Capture Page Screenshot



E clico no botão Send
  Wait Until Element Is Visible    ${Quote.Send_Success}
  Click element                    ${Quote.Send_Success}
  Sleep              5s
  Capture Page Screenshot 

Então o e-mail é enviado com sucesso
  wait until element is visible       ${Quote.Confirm}
  Capture Page Screenshot 
  click element               ${Quote.Confirm}