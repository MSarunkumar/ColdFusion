<!---
  --- Application
  --- -----------
  ---
  --- This is Application cfc  for assignment of CF Login Signup form
  ---
  --- author: mindfire
  --- date:   9/19/18
  --->
<cfcomponent hint="This is Application cfc  for assignment of CF Login Signup form"
             accessors="true" output="false"    persistent="false">

     <cfset this.name = "Application">
     <cfset this.applicationTimeout = createTimeSpan(0,2,0,0)>

     <cfset this.sessionManagement = true>
     <cfset this.sessionTimeout = createTimeSpan(0,0,20,0)>

	<cffunction name="OnApplicationStart" access="public" returntype="boolean" output="true"
                hint="Fires when the application is first created.">
	<cffile action="write" file="D:/Errors/assign.txt" output="Application start, This is Error file ">
      <cfreturn true />
	</cffunction>



</cfcomponent>