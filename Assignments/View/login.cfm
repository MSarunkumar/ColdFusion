<cfif structKeyExists(session, "uid")>
	<cflocation url = "/Assignments/View/Profile.cfm" addToken="no">
<cfelse>

<html>
	<head>
		<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
		<title>
			Login Form
		</title>
		<link rel="stylesheet" href="/Assignments/Assets/css/login.css">
	</head>
	<body >

		<h3>
			<ul>
		    <li><a href="/Assignments/View/login.cfm">Login</a></li>
		     <li><a href="/Assignments/View/signup.cfm">Sign Up </a></li>
		     <li><a href='/Assignments/index.cfm'> Home </a></li>
	            </ul>

			<!--  When client Login  then formValidation() will call and return boolean value based on return value form would be submit
				-->
			<br>
			<br>
			<div id="err" style="color:red;font-size:20px;margin-left:450px;">
				<cfif isdefined('url.errormsg')>
				<cfoutput>
							#URL.errormsg#
                 </cfoutput>
				</cfif>
							</div>
			<cfform action= "/Assignments/Controller/loginAction.cfm" onsubmit="return formValidation()" method="POST" id='FORM'>
				<center>
					<h1>
						Login Form
					</h1>
				</center>
				<div class="Position_color">
					User Id
				</div>
				<cfinput type='text' id= 'email' name='email' placeholder='abc@mindfiresolutions.com' class="input_box" maxlength="50" onblur="emailValid()">
				<span class='star' id='eid'>
				</span>
				<br>
				<br>
				<div class="Position_color">
			    Password
				</div>
				<cfinput type='Password' id='password' name='password'  class="input_box" maxlength="16" onblur="passwordValid()">
				<div class='star' id='pid'>
				</div>
				<br>
				<cfinput name='login' type='Submit' value='Login' id='btn' class='btn'>
				</div>
				<br>
				<br>
			</cfform>
			<script type="text/javascript" src="/Assignments/Assets/js/login.js"> </script>
		</h3>
	</body>
</html>
 </cfif>