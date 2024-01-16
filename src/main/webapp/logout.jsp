<%
session.invalidate(); //deleting values used in the session
response.sendRedirect("login.jsp");
%>