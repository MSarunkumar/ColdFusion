<html>
	<head>
		<title>
			Fetch Data
		</title>
	</head>
	<body>
		<!--- Insert the new record --->
		<!--- <h3>Employee Added in ColdFusion Database</h3>
			</cfoutput>
			<cfdump var="#form#"> --->

		<cfif isDefined("#FORM.login#")>
		<!--- <cffile action="append" file="D:/Errors/assign.txt" output="Error in loginAction"> --->

			<cfset variables.valid="true">
			<cfset variables.errormsg="Please Enter valid: ">
			<cfif not isValid("email", FORM.email) >
				<cfset variables.errormsg &= "User Id, ">
			</cfif>
			<cfif NOT (len(FORM.password) GTE 8 AND refind('[A-Z]',FORM.password)
				AND refind('[a-z]',FORM.password) AND refind('[0-9]',FORM.password)
				AND refind('[!@##$&*=-{}<>,.:;|?""''~]',FORM.password ) )>
				<cfset variables.errormsg &= "Password[0-9,a-z.A-Z,special char] ">
			</cfif>
			<cfif #variables.errormsg# NEQ "Please Enter valid: " >
				<cfset variables.valid="false" />
			</cfif >
			<cfif #variables.valid# EQ "true" >
				<cfset variables.valid="">
				<cfquery name="checkQ" datasource='Magic_au'>
		                   SELECT email,password
		                   FROM     employee
	                       WHERE    email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#FORM.email#">;
	            </cfquery>
	           <!--- <cffile action="append" file="D:/Errors/assign.txt" output="Error in loginAction :
	                              Qrecord=#checkQ.RecordCount#,Qpassword:#checkQ.password#,
	                              form password :#FORM.password#"> --->
	              <cfset variables.pass= #hash(#FORM.password#,"MD5","utf-8")# />

				<cfif (#checkQ.RecordCount# EQ 0) OR (#checkQ.password# NEQ variables.pass) >

					<cfset variables.errormsg="Invalid User Id/password">
					<cflocation url = "/Assignments/View/login.cfm?errormsg=#errormsg#" addToken = "no">
                <cfelse>
					<cfset session.uid= '#FORM.email#' />
					<cfset session.upassword='#FORM.password#' />
					<cflocation url = "/Assignments/View/Profile.cfm" addToken="no">
				</cfif>

			<cfelse>
				<cflocation url = "/Assignments/View/login.cfm?errormsg=#errormsg#" addToken = "no">
				</cfif>
				</cfif>


	</body>
</html>
