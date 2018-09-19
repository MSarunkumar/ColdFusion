<html>
<head>
<title>Home Page of my WebSite</title>
<link rel="stylesheet" type="text/css" href="/Assignments/Assets/css/index.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <script>
	$().ready(function() {
   		 if(document.referrer != 'http://localhost:5000/'){
      	 	 history.pushState(null, null, '');// thrid arg..for send to target page
     	 	  window.addEventListener('popstate', function () {
           		 history.pushState(null, null, '');// thrid arg..for send to target page
     	  	 });
 	   		}
		});
	</script>

</head>
      <header>   </header>
         <body>  <ul>

		     <li><a href="/Assignments/view/login.cfm">Login</a></li>
		     <li><a href="/Assignments/view/signup.cfm">Sign Up </a></li>
		     <li><a href='index.cfm'> Home </a></li>

	            </ul>

	      </body>
      <footer>    </footer>
</html>