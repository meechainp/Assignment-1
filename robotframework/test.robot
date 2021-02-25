*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${BROWSER}  chrome
${URL}  https://www.facebook.com/
*** Test Cases ***
Test login Facebook failed
	Open Browser  ${URL}  ${BROWSER}
	Input Text  id=email  zbc
	Input Text  id=pass  123
	Submit Form
	Wait Until Page Contains  Meechai Nuphit
	Capture Page Screenshot  login-failed.png
	[Teardown]  Close Browser