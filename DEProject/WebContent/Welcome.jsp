<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

.but{

    height: 10%;
    width: 15%;
    
    margin-bottom: 20px;
    margin-top: 5px;
}

.but input{

    height: 10%;
    width: 15%;
    padding: 8px;
    font-size: large;
    color: black;
    font-weight: 500;
    border-radius: 8px;
    background:linear-gradient(135deg, coral ,lightblue) ; 

}

.but:hover{

    
    color: white ;
    text-shadow: 2px 2px 4px black;
    font-weight: 700;
    background:linear-gradient(-135deg, coral ,lightblue) ; 

}



</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>
</head>
<body style="background-color: coral">


<%

Integer id = (Integer)session.getAttribute("uid");
String uname = (String)session.getAttribute("uname");
String surname = (String)session.getAttribute("surname");

%>


<h2> Welcome  <%= uname.toUpperCase() %> <%= surname.toUpperCase() %> To Our Main Page. Your Uid is <%=id %> </h2>

<a class="but" href="UpdatePassword.jsp"><input class="but" type="button" value="Change Password"></a>


</body>
</html>