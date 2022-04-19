<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Verifier</title>
</head>
<body>

<%

String fname = request.getParameter("UserName");
String surname = request.getParameter("SurName");
String fathername = request.getParameter("FatherName");
String mob = request.getParameter("MobileNo");
String email = request.getParameter("Email");
String password = request.getParameter("userPassword");
String enrollment = request.getParameter("Enroll");
String gender = request.getParameter("Gender");

session.setAttribute("username",fname);
session.setAttribute("lastname",surname);




%>


<%

String gen[] = request.getParameterValues("Gender");


if(gen != null ){
	
		gender = gen[0];
		
}

/*

out.println(fname);
out.println(surname);
out.println(fathername);
out.println(mob);
out.println(email);
out.println(password);
out.println(enrollment);
out.println(gender);

*/

if(fname!="" && surname != "" && fathername != "" && fname!="" && fname!="" && mob !="" && email!="" && password!="" && password!="" && enrollment!=""){


Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/deprojet","root","root");

Statement stmt = con.createStatement();


String query = "INSERT INTO registerde(fname,surname,mname,enrollment,mobno,email,password,gender)"+
 "VALUES('"+fname+"','"+surname+"','"+fathername+"','"+enrollment+"','"+mob+"','"+email+"','"+password+"','"+gender+"')";

stmt.executeUpdate(query);

con.close();

stmt.close();


response.sendRedirect("LogInPage.jsp");



	
}

else{

	response.sendRedirect("registerpage.html");	
	
}	

%>


</body>
</html>