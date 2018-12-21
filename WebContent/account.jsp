<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.user.Student"%>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <%Student student = (Student)session.getAttribute("student"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class ="navbar-header">
<button type="button" class="navbar-toggle collapsed"data-toggle="collapse"data-target="navbar"aria-expanded="false" aria-controls="navbar">
<span class ="s-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
Welcome To<%out.print(student.getSchoolName()); %>
</div>
<div id="navabar" class="navabar-collapse collapse">
</div><!--/.navbar-collapse-->
</div>
</nav>
<!-- Main jumbotron fr a primary marketing message or call to action -->
<div class ="jumbotron">
<div class ="container">
<h1>Hello,<%out.print(student.getFirstName()); %></h1>
<p>This is a simple java servlet program for a functional website.</p>
</div>
</div>
<div class ="container">
<!-- Example row of columns -->
<div class="row">
<div class="col-md-4">
<h2>My GPA</h2>
<p><% out.print(student.getGpa()); %></p>
<!-- <p><cass="btn btn-default" href+"GpaServlet" role="button">ViewGPA </a><p> -->

</div>
<div class="col-md-4">
<h2>Enter Grades</h2>
<form action="GpaServlet" method="post">
<div class="form-group">
<label for ="gradeOne">GradeOne</label>
<input type="text" class="form-control" name="gradeOne" id="gradeOne"placeholder="Grade One">

</div>
<div class="form-group">
<label for="gradeTwo">GradeTwo</label>
<input type="text" class="form-control" name="gradeTwo" id="gradeTwo"placeholder="Grade Two">
</div>
<div class="form-group">
<label for="gradeThree">GradeThree</label>
<input type="text" class="form-control" name="gradeThree" id="gradeThree"placeholder="Grade Three">
</div>
 <button type="submit" class = "btn btn-default">Submit</button>
</form>
</div>
<hr>
<footer>
<p>&copy;2017 Company,Inc</p>
</footer>
</div><!-- /container -->
</div>

</body>
</html>