<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>


<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="222480361164-edlm14pcp4nmfn9anv7vof20oqc2oi2n.apps.googleusercontent.com">
<style>

body {
		background-color: #FFFACD;
        background-image: url("Login1.jpg");
        background-size: 100%;
        background-repeat: no-repeat;
} 
</style>
</head>
<body>
<table align="center" style="width: 100%; position: absolute; top: 0px; bottom: 0px; left: 0px; right: 0px; height: 629px; color: red;" width="672">
<tr align="center" valign="bottom" style="height: 25%; font-size: 30px; width: 100%;"> <td>Please Click to Login with GMAIL ID</td> </tr>
<tr style="height: 25%;">
        
    </tr>
    <tr style="height: 50%; font-size: 40px; width: 100%;">
        <td align="center" valign="bottom">-------<div class="g-signin2" data-onsuccess="onSignIn"></div></td>
    </tr>
</table>

 <script>

      function onSignIn(googleUser) {
         var profile = googleUser.getBasicProfile();
         console.log('ID: ' + profile.getId());
         console.log('Name: ' + profile.getName());
         console.log('Image URL: ' + profile.getImageUrl());
         console.log('Email: ' + profile.getEmail());
         console.log('id_token: ' + googleUser.getAuthResponse().id_token);

         var redirectUrl = 'login';

         var form = $('<form action="' + redirectUrl + '" method="post">' +
                          '<input type="text" name="id_token" value="' +
                           googleUser.getAuthResponse().id_token + '" />' +
                                                                '</form>');
         $('body').append(form);
         form.submit();
      }

   </script>
</body>
</html>