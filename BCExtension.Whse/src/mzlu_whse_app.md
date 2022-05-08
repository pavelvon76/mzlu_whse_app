
## Výchozí vývojářské podklady
- https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-develop-custom-api

## video Kauffmanna na best practise o custom api
https://www.youtube.com/watch?v=5iRv0y0rVzw


## postman stories
- postup, který mi umožnil udělat token pro auth2 https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-develop-connect-apps  
- tady se píše, jak by mělo vypadat volání na online /  https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/api-reference/v2.0/endpoints-apis-for-dynamics
- Excel napojení web service https://www.encorebusiness.com/blog/how-to-setup-excel-query-for-dynamics-365-business-central/
- jak filtrovat web services https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/webservices/use-filter-expressions-in-odata-uris

## jak volat api
- https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-develop-connect-apps#calling-the-api
- volání z POSTMANA

https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/api/v2.0

https://businesscentral.dynamics.com/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu

companyid: 5f18c970-1a9a-ec11-bb88-000d3a38e529
environment name: mzlu
tenant = domain: 9191dc92-5dc4-4c3f-9156-5948bfa2f352
business central: https://businesscentral.dynamics.com/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu
user domain name: admin@CRMbc536870.onmicrosoft.com   
password: ADUW11obEP 
webservice api key: XPx8aquVfgv1NS3c3RwHlNAH9dWwJD0nDnmLi9

--- 
auth v postmanovi: https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-develop-connect-apps
For OAuth for testing purposes, a multi-tenant AAD app has been created. Admin consent is needed before the ADD app can be used. Information is as follows:

Grant Type: Implict
Callback URL: https://localhost
Auth URL: https://login.microsoftonline.com/common/oauth2/authorize?resource=https://api.businesscentral.dynamics.com
Client ID: 060af3ac-70c3-4c14-92bb-8a88230f3f38
--- 

Specify APIVersion, APIPublisher, APIGroup, EntityName, and EntitySetName for your API page. These properties will affect your custom endpoint: https://api.businesscentral.dynamics.com/v1.0/<user domain name>/api/<API publisher>/<API group>/<API version>/companies(<company id>)/carModel. For more information, see Business Central API endpoints and Calling the API.

https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/api/pvon/mzlu/v2.0/companies(5f18c970-1a9a-ec11-bb88-000d3a38e529)/bin

mzlu/ODataV4/Company('CRONUS%20CZ')/Job_List?$select=No,Description,Bill_to_Customer_No,Status,Person_Responsible,Search_Description,Project_Manager


from BCClient: web service
https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/ODataV4/Company('CRONUS%20CZ')/Job_List?$select=No,Description,Bill_to_Customer_No,Status,Person_Responsible,Search_Description,Project_Manager

Specify EntityCaption and EntitySetCaption. These two properties are generated in the entityDefinitions https://api.businesscentral.dynamics.com/v1.0/<user domain name>/api/<API publisher>/<API group>/<API version>/entityDefinitions which are localized and translatable.

# list of all entities
https://api.businesscentral.dynamics.com/v1.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/api/beta

https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/api/v2.0

vypíše v Excelu seznam dostupných standardních API
https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/v2.0/companies(5f18c970-1a9a-ec11-bb88-000d3a38e529)

vrací need of oauth, v excelu nejde použít
https://api.businesscentral.dynamics.com/v1.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/api/pvon/mzlu/v2.0/companies(5f18c970-1a9a-ec11-bb88-000d3a38e529)/bin


https://api.businesscentral.dynamics.com/v2.0/34008713-f13c-4bc6-97c3-0304799739e6/Sandbox_20210216/ODataV4/Company({CompanyID})/Resources

how to complete url:
As you can see in the image bellow, there is already some web services already created. Just copy any URL of any web service and consume it from Postman (don't forget to use in Postman Basic authentication, your Username without domain name and your Web Service Access Key as password) or you can as well open it in the browser with your credentials (your Username and your Web Service Access Key).


https://api.businesscentral.dynamics.com/v2.0/api/pvon/mzlu/beta/companies(5f18c970-1a9a-ec11-bb88-000d3a38e529)?tenant=9191dc92-5dc4-4c3f-9156-5948bfa2f352

https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/v2.0/companies(5f18c970-1a9a-ec11-bb88-000d3a38e529)
https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/pvon/mzlu/v2.0/companies(5f18c970-1a9a-ec11-bb88-000d3a38e529)/bins

https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/ODataV4/Company(5f18c970-1a9a-ec11-bb88-000d3a38e529)/Items


- od Kaji:
https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/v2.0    ... vrací seznam stand. api log with admin / key
https://api.businesscentral.dynamics.com/v2.0/jirimodels.com/JIRI-DEV/api/v2.0

- vrací seznam companies
https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/pvon/mzlu/v2.0/companies

- vraci info o společnosti .. je tam i bins a contents 
https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/pvon/mzlu/v2.0/companies(5f18c970-1a9a-ec11-bb88-000d3a38e529)

- vrací bin content
https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/pvon/mzlu/v2.0/companies(5f18c970-1a9a-ec11-bb88-000d3a38e529)/contents
https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/pvon/mzlu/v2.0/companies(058b6fa4-10ab-ec11-bb91-000d3a21ed9f)/bins

vrátí údaje jen o jednom bin contentu
https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/pvon/mzlu/v2.0/companies(5f18c970-1a9a-ec11-bb88-000d3a38e529)/contents('MODRA','D1')

https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/pvon/mzlu/v2.0/companies(5f18c970-1a9a-ec11-bb88-000d3a38e529)/contents('MODRA','D1')/Microsoft.NAV.GetBinName

)/tests(ff41bd5e-77a4-ec11-80f1-000d3a468ed8)/Microsoft.NAV.callMyFunction

https://api.businesscentral.dynamics.com/v2.0/d7a4b931-ab93-4cba-be1e-c066a3ee6cf7/ARDO-AT/api/JA/test/v1.0/companies(262e8e04-d558-ec11-bb7f-6045bd8e5277)/tests
https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/pvon/mzlu/v2.0/companies(5f18c970-1a9a-ec11-bb88-000d3a38e529)/Bins


## Onpremise
- client http://10.1.100.111:8080/BC190/?company=TG%20agrar&dc=0 
- jak dostat metadata, tj. co je obsahem: 
 http://atgferpappp01.ardo.local:7048/BC190/api/v2.0/$metadata


 ## last used
 https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/pvon/mzlu/v2.0/companies(058b6fa4-10ab-ec11-bb91-000d3a21ed9f)/bins
 https://api.businesscentral.dynamics.com/v2.0/9191dc92-5dc4-4c3f-9156-5948bfa2f352/mzlu/api/pvon/mzlu/v2.0/companies(058b6fa4-10ab-ec11-bb91-000d3a21ed9f)/contents 