***Variables***

&{Products}
#Elementos Enter Product Data
...  Start_Date=xpath=//*[@id="startdate"]
...  Insurance_Sum=xpath=//option [contains(text(),"3.000.000,00")]
...  Damage_Insurance=xpath=//option [contains(text(),"No Coverage")] 
...  optional_products=//*[@id="insurance-form"]/div/section[3]/div[4]/p/label[1]/span
...  Next_Price_Option=xpath=//*[@id="nextselectpriceoption"]
...  Enter_ProductData=//*[@id="startdate"]
...  choose_gold=xpath=//*[@id="priceTable"]/tfoot/tr/th[2]/label[2]/span