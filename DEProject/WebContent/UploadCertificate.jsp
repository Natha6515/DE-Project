<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<style>

.col{
background-color: #FFFDD0;
margin-top: 100px;

justify-content:center;
align-items:center;

}

.col2{
background-color: #FFFDD0;
margin-top : 50px;

}

.bcolor{
background-color: coral;
color: white;
}

.bcolor:hover{
background-color: white;
color: coral;
border:1px solid coral;
}

</style>


<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="CSS/slider.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Certificate</title>
</head>
<body>

	<%@include file="Slider.html"%>


					<div class="container col">
						<!-- Content here -->
						<div class="d-flex col justify-content-center">

							<h2>Upload your File Here</h2>



						</div>

						<div class="d-flex col2 justify-content-center">

							<button type="button" id="100act" class="btn bcolor btn-lg">Upload
								Certificate</button>

						</div>

					</div>
					<!-- Option 1: Bootstrap Bundle with Popper -->
					<script
						src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
						integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
						crossorigin="anonymous"></script>

					<script src="JS/activity100point.js"></script>



</body>
</html>