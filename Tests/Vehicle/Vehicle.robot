***Settings***
Resource  ../../Steps/Main_steps.robot
Resource  ../../Steps/Vehicle/Vehicle_steps.robot




***Test Cases***

cenario 1: Cadastro aba Enter Vehicle Data
    Dado que eu acesso o site do Engine
    Quando cadastro a aba Enter Vehicle Data
    E clico no botão Next
    Então acesso a aba Enter Insurant Data