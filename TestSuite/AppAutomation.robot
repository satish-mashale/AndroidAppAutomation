*** Settings ***
Library           AppiumLibrary
*** Variables ***
${Login_pane}    //android.view.View[@content-desc="I Already Have An Account"]
${Get_Started}    //android.view.View[@content-desc="Get Started"]
${user_emails_inputbox}	//android.widget.EditText[contains(@text,"Email")]
${user_password_inputbox}    //android.widget.EditText[@text="Password"]
${user_login_submit}    //android.widget.Button[@content-desc="LOGIN"]
${parent}    //android.widget.Button[@content-desc="PARENT"]
${parent_login}    //android.widget.Button[@content-desc="WE HAVE AN ACCOUNT"]
${parent_create_account}    //android.widget.Button[@content-desc="CREATE ACCOUNT"]
${incorrect_email_message}	//android.view.View[@content-desc="Given String is empty or null"]	

*** Test Cases ***
Open application and check email validation
	Open Application	http://localhost:4723/wd/hub	platformName=Android	deviceName=emulator-5554	appPackage=com.lifetech_balance	 appActivity=com.screencoach.MainActivity
	Wait Until Page Contains Element	${Login_pane}	30
	Click Element	${Login_pane}	
	Wait Until Page Contains Element	${user_emails_inputbox}	30
	Click Element	${user_emails_inputbox}
	Click Element	${user_login_submit}
	BuiltIn.Sleep	5
	Click Element	${user_emails_inputbox}
	BuiltIn.Sleep	5
	Input Text	${user_emails_inputbox}	fdfd
	BuiltIn.Sleep	3
	Input Text	${user_password_inputbox}	fdfd\n
	Click Element	${user_login_submit}	
	
	
	
