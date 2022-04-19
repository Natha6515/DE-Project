<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>

<link rel="stylesheet" type="text/css" href="CSS/registerstyle.css">
<script src="JS/registervalidation.js"></script>

</head>
<body>

<%

String enroll_from_session =(String)session.getAttribute("enroll");

Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/deprojet","root","root");

Statement stmt = con.createStatement();

String q = "SELECT * FROM registerde";

ResultSet rs = stmt.executeQuery(q);

String old_password="";


while(rs.next()){
	
	
	String enrollthis = rs.getString("enrollment");
	
	if(enrollthis.equals(enroll_from_session)){
	
	 old_password = rs.getString("password");
	 
	
	}
}


%>


	<div class="userform">

		<div class="title">

			<h2>Password Change</h2>
			<br />

		</div>

		<form action="UpdatePasswordLogic.jsp" onsubmit="return changePassword()">

			<div class="maindivlog">

				<div>
					<label for="old_password"> <strong> Old Password: </strong>
					 <input	type="text" id="old_password" name="oldpass" placeholder="Old Password" value="<%=old_password %>" max="999999999999999" size="15" /></label><br />
					<span style="display: none; color: red" id="sp21"> *Please enter your Old Password </span> <br />

				</div>

				<div>

					<label for="new_password"> <strong> Password: </strong> <input type="password" id="new_password" name="newpass" placeholder="Password" /></label><br /> 
					<span style="display: none; color: red" id="sp22"> *Please Enter New Password Here </span> <br />

				</div>
				
				<div>

					<label for="confirm_password"> <strong> Confirm Password: </strong> <input type="password" id="confirm_password" name="confirmpass" placeholder="Confirm Password" /></label><br /> 
					<span style="display: none; color: red" id="sp23"> *Please Re-Enter New Password Here </span> <br />

				</div>

				<div class="buttontag">
				
				<input class="but" type="submit" value="Update" />
				
				<!--<a class="but" href="UpdatePasswordLogic.jsp?oldpass=&newpass=uio&confirmpass=uio"><input class="but" type="button" value="Change Password"></a> -->
				</div>

				
			</div>
		</form>
	</div>


</body>
</html>