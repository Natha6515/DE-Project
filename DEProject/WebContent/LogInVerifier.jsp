<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login verify</title>
</head>
<body>

<%

String logname = request.getParameter("EnrollLog");

String logpassword = request.getParameter("userPasswordLog");

Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/deprojet","root","root");

Statement stmt = con.createStatement();

String q = "SELECT * FROM registerde";

ResultSet rs = stmt.executeQuery(q);

boolean flag = false;

while(rs.next()){
	
	
    int id = rs.getInt("id");
	String nameDB = rs.getString("fname").toLowerCase();
	String surnameDB = rs.getString("surname").toLowerCase();
	String unameDB = rs.getString("enrollment");
	String passwordDB = rs.getString("password");
	
	
	
	if(logname.equals(unameDB) && logpassword.equals(passwordDB)){
	
		session.setAttribute("uid", id);
		session.setAttribute("uname", nameDB);
		session.setAttribute("surname", surnameDB);
		session.setAttribute("enroll", unameDB);
		
		response.sendRedirect("Home.jsp");
		
		flag= true;
		
	}
	
	
	
}

if(flag==false){
	
	response.sendRedirect("FalsePage.jsp");
	
}



%>

</body>
</html>