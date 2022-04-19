<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In Page</title>

<link rel="stylesheet" type="text/css" href="CSS/regstyle.css">
<script src="JS/registervalidation.js"></script>



</head>
<body>


	<div class="userform">

		<div class="title">

			<h2>Log In Page</h2>
			<br />

		</div>

		<form action="LogInVerifier.jsp" onsubmit="return logcheck()">

			<div class="maindivlog">

				<div>
					<label for="enrlog"> <strong> Enrollment No: </strong> <input
						type="number" id="enrlog" name="EnrollLog"
						placeholder="Enrollment Number" max="999999999999999" size="15" /></label><br />
					<span style="display: none; color: red" id="sp11"> *Please
						enter your Enrollment Number </span> <br />

				</div>

				<div>

					<label for="cpdlog"> <strong> Password: </strong> <input
						type="password" id="cpdlog" name="userPasswordLog"
						placeholder="Password" /></label><br /> <span
						style="display: none; color: red" id="sp12"> *Please Enter
						Password Here </span> <br />

				</div>

				<div class="buttonlog">
					<input class="but" type="submit" value="LOG IN" />
					<a href="registerpage.html"><input class="but" type="button" value="Sing Up"></a>
				</div>
				
			</div>
		</form>
	</div>
	
	
    <section class="">
        <!-- Footer -->
        <footer class="text-center text-white" style=" background-color: rgba(173, 58, 58, 0.5);
        color: #fff;margin-top:50px;">
          <!-- Grid container -->
          <div class="container p-4 pb-0">
            <!-- Section: CTA -->
            <section class=""\>
              <p class="d-flex justify-content-center align-items-center">
                <span class="me-3">Register for free</span>
                <button type="button" class="btn btn-outline-light btn-rounded">
                  <a href="registerpage.html" style="text-decoration: none;color: Black;">Sign up!</a>
                </button>
              </p>
            </section>
            <!-- Section: CTA -->
          </div>
          <!-- Grid container -->
      
          <!-- Copyright -->
          <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2020 Copyright:
            <a class="text-white" href="https://www.gtu.ac.in/">GTU</a>
          </div>
          <!-- Copyright -->
        </footer>
        <!-- Footer -->
      </section>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>  

	

</body>
</html>