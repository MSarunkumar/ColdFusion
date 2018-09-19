

<html>
	<head>
		<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
		<title>
			Registration Form
		</title>
		<link rel="stylesheet" href="/Assignments/Assets/css/signup.css">
	</head>
	<body>

		<h3>
			<ul>
		     <li><a href="/Assignments/View/login.cfm">Login</a></li>
		     <li><a href="/Assignments/View/signup.cfm">Sign Up </a></li>
		     <li><a href='/Assignments/index.cfm'> Home </a></li>
	            </ul>

			<br>
			<br>
			<div id="err" style="color:red;font-size:20px;margin-left:200px;">
		      <cfif isDefined("URL.errormsg") >
			      <cfoutput>
					 #URL.errormsg#
					 </cfoutput>
					<cfelse>
                </cfif>
			</div>
			<cfform action="/Assignments/Controller/signupAction.cfm" onsubmit="return formValidation()" method="POST" id='form' >
				<center>
					<h1>
						SignUp Form
					</h1>
				</center>
				<div class="Position_color">
					First Name
				</div>
				<cfinput type='text' id='fname' name="fname" class="input_box" maxlength="30" onblur="firstNameValid()" >
				<span class='star' id='fid'>
				</span>
				<br>
				<br>
				<div class="Position_color">
					Last Name
				</div>
				<cfinput type='text' id="lname" name="lname" class="input_box" maxlength="30" onblur="lastNameValid()">
				<span class='star' id="lid">
				</span>
				<br>
				<br>
				<div class="Position_color">
					Email
				</div>
				<cfinput type='text' id="email" name="email" placeholder='abc@mindfiresolutions.com' class="input_box" maxlength="50" onblur="emailValid()">
				<span class='star' id='eid'>
				</span>
				<br>
				<br>
				<div class="Position_color">
					Phone Number
				</div>
				<cfinput type='text' id="mob1" name="mobile" class="input_box" maxlength="10" onblur="mobile1Valid()">
				<span class='star' id='mid1'>
				</span>
				<br>
				<br>
				<div class="Position_color">
					Password
				</div>
				<cfinput type='Password' id="password" name="password"  placeholder='Minimum 8 character' class="input_box" maxlength="16" onblur="passwordValid()">
				<span class='star' id='pid'>
				</span>
				<br>
				<br>
				<div class="Position_color">
					Confirm-Password
				</div>
				<cfinput type='Password' id="cpassword" name="cpassword" placeholder='Minimum 8 character' class="input_box" maxlength="16" max onblur="cpasswordValid()">
				<span class='star' id="cpid">
				</span>
				<br>
				<br>
				<cfinput type='Submit' value='Submit' class='btn' name='submit'>
				<p style="color:red;margin-left:950px">
					*[Mandatory]
				</p>
				</div>
			</cfform>
			<br>
			<br>
			<script type="text/javascript" src="/Assignments/Assets/js/signup.js"> </script>
		</h3>
		<footer>
		</footer>
	</body>
</html>
