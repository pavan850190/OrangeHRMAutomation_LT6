* Settings *
Documentation           This suite will handle valid credential
...       test    TC_OH2

Resource  ../Resource/CommonFunctionality.resource

Test Setup   Launch Browser


* Test Cases *
Valid Credential Test
   Input Text    id=txtUsername    Admin
   Input Password    id=txtPassword    admin123
   Click Element    id=btnLogin
   Page Should Contain    My Info
   Click Element    xpath=//b[contains(text(),'My Info')]
   Click Element    xpath=//a[contains(text(),'Emergency Contacts')]
   Click Element    xpath=//input[@id='btnAddContact']
   Input Text    id=emgcontacts_name    Divya
   Input Text    id=emgcontacts_relationship    Myself
   Input Text    id=emgcontacts_homePhone    1234567
   Input Text    id=emgcontacts_mobilePhone    5694623
   Input Text    id=emgcontacts_workPhone    256-123-145
   Click Element    id=btnSaveEContact
   Close Browser