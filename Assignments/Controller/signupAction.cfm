<html>
	<head>
		<title>
			Submit Data
		</title>
	</head>
	<body>
		<!--- Insert the new record
			<h3>Employee Added in ColdFusion Database</h3>
			<cfdump var="#FORM#"> --->
		<cfif isDefined("#FORM.submit#")>
		<cffile action="append" file="D:/Errors/assign.txt" output="value of form submit::(#FORM.submit#)">
			<cfset variables.valid="true">
			<cfset variables.errormsg="Please Enter valid: ">
			<cfif not isValid("regex", trim(FORM.fname), "[A-Za-z]+") >
				<cfset variables.errormsg &= "First Name, ">
			</cfif>
			<cfif  not isValid("regex", trim(FORM.lname), "[A-Za-z]+") >
				<cfset variables.errormsg &= "Last Name, ">
			</cfif>
			<cfif not isValid("email", FORM.email) >
				<cfset variables.errormsg &= "Email, ">
			</cfif>
			<cfif (len(trim(FORM.mobile)) LT 10) and (not isValid("regex", FORM.mobile,"[0-9]{10}"))>
				<cfset variables.errormsg &= "Mobile, ">
			</cfif>
			<cfif NOT (len(FORM.password) GTE 8 AND refind('[A-Z]',FORM.password)
				AND refind('[a-z]',FORM.password) AND refind('[0-9]',FORM.password)
				AND refind('[!@##$&*=-{}<>,.:;|?""''~]',FORM.password ) )>
				<cfset variables.errormsg &= "Password[0-9,a-z.A-Z,special char], ">
			</cfif>
			<cfif (trim(FORM.password)) NEQ (trim(FORM.cpassword))>
				<cfset variables.errormsg &= "Confirm-Password, ">
			</cfif>
			<cfif variables.errormsg NEQ "Please Enter valid: ">
				<cfset variables.valid="false">
			</cfif >
			<cfif  variables.valid EQ "true">
				<cfquery name="exist" datasource='Magic_au'>
			       SELECT   eid
			        FROM     employee
			        WHERE    email= <cfqueryparam value="#FORM.email#" cfsqltype="cf_sql_varchar">;
			            </cfquery>
				<cfif #exist.RecordCount# GT 0>
					<cfset  variables.errormsg ="Email id already registered" />
					<cfset variables.valid="false">
				</cfif>
			</cfif>
			<cfif #variables.valid# EQ "true">
				<cfset  pass="#hash('#FORM.password#','MD5','utf-8')#">
				<!--- <cffile action="append" file="D:/Errors/assign.txt" output="hash code of password :: , #pass#"> --->
				 <cfquery name='insertQuery' datasource='Magic_au'>
	                     INSERT  INTO    EMPLOYEE (fname,lname,email,mobile,password)
                          VALUES  (
			            <cfqueryparam value="#FORM.fname#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#FORM.lname#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#FORM.email#" cfsqltype="cf_sql_varchar">,
						<cfqueryparam value="#FORM.mobile#" cfsqltype="cf_sql_bigint">,
						<cfqueryparam value="#pass#" cfsqltype="cf_sql_char">);
                         </cfquery>
				<cflocation url = "/Assignments/View/login.cfm" addToken = "no">
			<cfelse>
				<cflocation url = "/Assignments/view/signup.cfm?errormsg= #errormsg#" addToken = "no">
			</cfif>
		</cfif>
	</body>
</html>
