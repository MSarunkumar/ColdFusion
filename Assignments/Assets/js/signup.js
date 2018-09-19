/**
 * 
 */
          
           var password = '';
          var f_Valid = false;
          var l_Valid = false;
          var e_Valid = false;
          var p_Valid = false;
          var cp_Valid = false;
          var m1_Valid = false;
         document.getElementById("cpassword").disabled = true;
        

          function formValidation() {

              firstNameValid();
              lastNameValid();
              emailValid();
              passwordValid();
              cpasswordValid();
              mobile1Valid();
             
             if (f_Valid && l_Valid && e_Valid && p_Valid && cp_Valid && m1_Valid ) {
                  if (confirm('form is going to submit ... okey'))
                      return true;
                  else
                      return false;
              } else return false;
          }
          //...................................................                                     first name Validation 
          function firstNameValid() {
              var firstname = document.getElementById("fname").value;
              firstname=firstname.trim();
              if (ValidAlpha(firstname)) {
                  f_Valid = ShowError("fid", ' Please Enter Alphabets only');
              } else {
                  f_Valid = done("fid");
                  }
          }
          //...................................................                                      last name Validation 
          function lastNameValid() {
              var lastname = document.getElementById("lname").value;
                  lastname=lastname.trim();
               if (ValidAlpha(lastname)) {
                  l_Valid = ShowError("lid", ' Please Enter Alphabets only');
              } else {
                  l_Valid = done("lid");

              }
			}
          //............................................................                             Email Validation 
          function emailValid() {

              var email = document.getElementById("email")
                  .value;
              email = email.trim();
              var regemail = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/;

              if (!regemail.test(email)) {
                  e_Valid = ShowError("eid", " Please Enter Valid Email  ");

              } else {

                  e_Valid = done("eid");
              }
          }
          //...........................................................................              password Validation 
          function passwordValid() {
              password = document.getElementById('password')
                  .value;

              var lowerCaseLetters = /[a-z]/g;
              var upperCaseLetters = /[A-Z]/g;
              var specialLetters = /[!@##$&*=-{}<>,.:;|?""''~"]/g;
              var numberLetters = /[0-9]/g;

              if (password.length < 8) {
                  p_Valid = ShowError("pid", "Please Enter More than 8 characters");
              } else if (!((password.match(lowerCaseLetters)) && (password.match(upperCaseLetters)) &&
                      (password.match(numberLetters)) && (password.match(specialLetters)))) {
                  p_Valid = ShowError("pid", "Please Enter [0-9,a-z,A-Z,specialChar]");

              } else {

                  p_Valid = done("pid");
                  document.getElementById("cpassword").disabled = false;
                  //flag_Password = 1;

              }

          }
          //.....................................................................                     confirm - password 	   
          function cpasswordValid() {
              var cpassword = document.getElementById('cpassword')
                  .value;
              if (password != cpassword) {
                  cp_Valid = ShowError("cpid", "  The Confirm-Password did not match  ");

              } else {
                  cp_Valid = done("cpid");
              }
          }
          //.......................................................................................   mobile1 Validation
          function mobile1Valid() {
              var mobile1 = document.getElementById('mob1')
                  .value;
              var regmob = /^\d{10}$/;
              if (!regmob.test(mobile1)) {
                  m1_Valid = ShowError("mid1", "   Please Enter only 10 digits");
              } else {

                  m1_Valid = done("mid1");
              }
          }
        
          //.....................................   It will remove error
          function done(ids) {
              document.getElementById(ids).innerHTML = '';
              return true;
          }
          //.............  It will display error message on specified position(based on ids)
          function ShowError(ids, msg) {
              document.getElementById(ids)
                  .innerHTML = msg;
              return false;
          }
          //...................  It will Validate,allow Alphabets only
          function ValidAlpha(input) {

              var regtext = /^[a-zA-Z]+$/g;
              if (regtext.test(input))
                  return false;
              else
                  return true;
          }