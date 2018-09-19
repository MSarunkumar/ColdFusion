<html>
	<head>
	</head>
	<body>
		<cfset structclear(session)>
		<cflocation url = "/Assignments/index.cfm" addToken = "no">
	</body>
</html>
<!--- <cfif not isDefined("session")>
	defin h
<cfelse>
	define nhi h
	</cfif>
	<cfif isStruct("session")>
	struct session h
	</cfif>
	<cfset StructDelete(session,"")--->
<!---
	<cflock scope="Session" timeout="10" type="exclusive">
	<cfset structclear(session)>
	</cflock>
	--->
<!--- <cfset session.uid = "False">
	<cfset session.upassword = "False"> --->
<!---
	<cfif isStruct("session")>
	struct session h no
	</cfif>
	<cfif not isDefined("session")>
	defin h
<cfelse>
	define nhi h
	</cfif> --->
<!--- <cfset structdelete(session, 'uid')/>
	<cfset  structdelete(session, 'upassword')/> --->
<!--- <cfset structDelete(session, "")>
	<cfset structDelete(session, "CFID")> --->
<!--- <cfoutput> #StructKeyList(Session)# </cfoutput> --->
<!--- <cfset exists= structdelete(session, 'username', true)/> --->
<!--- <cfset StructClear(Session)> --->
<!---
	<cflock timeout=20 scope="Session" type="Readonly">
	<cfoutput> #StructKeyList(Session)# </cfoutput>
	</cflock>
	--->
