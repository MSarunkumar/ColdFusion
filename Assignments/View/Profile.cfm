<cfif NOT structKeyExists(session, "uid")>
       <cflocation addtoken="no" url="/Assignments/View/login.cfm">
<cfelse>
<html>
	<head>
		<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">

		<title>
			User Profile
		</title>
	</head>

	<body >

        <h3>
		<div style=" color:white;
	                 height: 45px;
	                  border-radius: 15px;
                      background-color:black;">

        </div>
		<br>
     	<div style='background-color:lightgreen;margin-left:450px; width:500px;' align="center"  >

	    <cfquery name='getInfo' datasource="Magic_au">
	         	      select * from employee where email= '#session.uid#';
	       </cfquery>
			<cfoutput>
				<p style='color:Blue;font-family: 'Ubuntu', sans-serif;font-size: 80px;'>
					<br><br>
					*** Welcome ***
					<br>
					#getInfo.fname# #getInfo.lname#
					<br>
					<br><br>
					<br><br>
					<br>
					<br>
					Your Mobile ::#getInfo.mobile#
					<br>
					Your Email Id ::#getInfo.email#
					<br><br>
				</p>
			</cfoutput>
		</div>
		<cfform action='/Assignments/Controller/logout.cfm' >
		 <center>  <cfinput type='submit' name="logout" value="Logout" id='btn'
                      style= "background-color:lightskyblue; border: none; border-radius:8px;color: white;
			         padding: 10px;width:155px; text-align: center; font-size:16px; cursor: pointer;" >
		       </center>
		</cfform>

   </h3>
	</body>
</html>

</cfif>

