***Variables***

&{Vehicle}
#elementos Enter Vehicle Data
...  Camper=//*[@id="nav_camper"]
...  Select_Make=//select [@id="make"]
...  Option_BMW=xpath=//option [contains(text(),"BMW")]
...  Input_KW=//input [@id="engineperformance"]
...  Input_DOM=//input[@placeholder="MM/DD/YYYY"]
...  Input_Seats= xpath=//select [@id="numberofseats"]
...  Input_Number_Seats= xpath=//select [@id="numberofseats"]/option[9]
...  Input_RHD=class=ideal-radio
...  Fuel=xpath=//*[@id="fuel"]
...  Fuel_option=//*[@id="fuel"]/option[5] 
...  Payload=//*[@id="payload"]
...  Input_Payload=//*[@id="payload"]
...  Totalweight=//*[@id="totalweight"]
...  Input_TotalWeight=//*[@id="totalweight"] 
...  ListPrice=//*[@id="listprice"]
...  Input_ListPrice=//*[@id="listprice"]
...  LicencePlate=//*[@id="licenseplatenumber"]
...  Input_LicencePlate=//*[@id="licenseplatenumber"]
...  Annual_Mileage=//*[@id="annualmileage"]
...  Input_AnnualMileage=//*[@id="annualmileage"]
...  Next=xpath=//*[@id="nextenterinsurantdata"]
...  Enter_InsurantData=//*[@id="firstname"]