<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.sql.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Logic</title>
</head>
<body>

	<%
		String enroll_from_session = (String) session.getAttribute("enroll");

		request.getParameter("oldpass");
		String newpassword = request.getParameter("newpass");
		String confirmpassword = request.getParameter("confirmpass");

		if (newpassword.equals(confirmpassword)) {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/deprojet", "root", "root");

			Statement stmt = con.createStatement();

			String q = "UPDATE `registerde` SET PASSWORD='"+newpassword+"' WHERE `enrollment`='"+enroll_from_session+"'";

	        stmt.executeUpdate(q);
	        
	        response.sendRedirect("LogInPage.jsp");

		}
		
		else{
			
			 response.sendRedirect("UpdatePassword.jsp");
			
		}
		
	%>

</body>
</html>