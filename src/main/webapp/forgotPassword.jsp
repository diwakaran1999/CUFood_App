<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp" method="post">
     <input type="email" name = "email" placeholder = "Enter Email" required>
     <input type="number" name = "mobileNumber" placeholder = "Enter Mobile Number" required>
     <select name="securityQuestion" required>
     <option value="What is your favorite sports?">What is your favorite sports?</option>
     <option value="What is your pet name?">What is your pet name?</option>
     <option value="What is the name of your elementary school?">What is the name of your elementary school?</option>
     <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
     </select>
     <input type="text" name = "answer" placeholder = "Enter Answer" required>
     <input type="password" name = "newPassword" placeholder = "Enter your new password to set" required>
     <input type="submit" value="Save">
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
<%
 String msg=request.getParameter("msg");
 if("done".equals(msg))
 {
%>
<h1>Password Changed Successfully</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Sorry! Entered  information mismatch</h1>
 <%} %>   

    <h2>CUFood</h2>
    <p>The CUFood is the application that allows the users to order food online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>