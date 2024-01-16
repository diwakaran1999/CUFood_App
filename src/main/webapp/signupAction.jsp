<%@page import="project.ConnectionProviderClass"%>
<%@page import="java.sql.*"%>
<%
String name  = request.getParameter("name");
String email  = request.getParameter("email");
String MobileNumber  = request.getParameter("mobilenumber");
String securityQuestion  = request.getParameter("securityQuestion");
String answer  = request.getParameter("answer");
String password  = request.getParameter("password");
String address ="";
try{
	Connection con = ConnectionProviderClass.getCon();
	PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,MobileNumber);
	ps.setString(4,securityQuestion);
	ps.setString(5,answer);
	ps.setString(6,password);
	ps.setString(7,address);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
	
}catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");	
}
%>